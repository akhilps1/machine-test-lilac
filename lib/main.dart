import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:machine_test/application/authantication/auth_ui/auth_ui_bloc.dart';
import 'package:machine_test/application/authantication/authentication_cubit.dart';
import 'package:machine_test/application/profile/profile_bloc.dart';
import 'package:machine_test/application/video_player/video_player_bloc.dart';
import 'package:machine_test/domain/core/di/injection.dart';
import 'package:machine_test/domain/profile/i_profile_facade.dart';
import 'package:machine_test/domain/video_player/i_video_player_facade.dart';
import 'package:machine_test/presentation/splash/splash_screen.dart';
import 'package:media_cache_manager/media_cache_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureDependency();
  await MediaCacheManager.instance.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          lazy: false,
          create: (_) => ProfileBloc(
            sl<IProfileFacade>(),
          )..add(const GetTheme()),
        ),
        BlocProvider<AuthenticationCubit>(
          create: (context) => AuthenticationCubit(),
        ),
        BlocProvider(
          create: (_) => AuthUiBloc(),
        ),
        BlocProvider(
          create: (_) => VideoPlayerBloc(
            sl<IVideoPlayerFacade>(),
          )..add(const GetDownloadedVideoId()),
        ),
      ],
      child: BlocSelector<ProfileBloc, ProfileState, bool>(
        selector: (state) {
          return state.isDark;
        },
        builder: (context, isDark) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            builder: BotToastInit(),
            navigatorObservers: [BotToastNavigatorObserver()],
            title: 'Video Player',
            theme: isDark ? ThemeData.dark() : ThemeData.light(),
            home: const SplashScreen(),
          );
        },
      ),
    );
  }
}
