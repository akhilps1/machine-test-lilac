import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:machine_test/application/authantication/authentication_cubit.dart';
import 'package:machine_test/application/profile/profile_bloc.dart';
import 'package:machine_test/application/core/serveice/navigation.dart';
import 'package:machine_test/domain/authantication/models/user_details.dart';
import 'package:machine_test/presentation/authentication/authentication_screen.dart';
import 'package:machine_test/presentation/core/widgets/drawer_widget.dart';
import 'package:machine_test/presentation/profile/profile_screen.dart';
import 'package:machine_test/presentation/video_palyer/video_player_screen.dart';
import 'package:no_screenshot/no_screenshot.dart';

class AppRoot extends StatefulWidget {
  const AppRoot({super.key});

  @override
  State<AppRoot> createState() => _AppRootState();
}

class _AppRootState extends State<AppRoot> with WidgetsBindingObserver {
  final _noScreenshot = NoScreenshot.instance;

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        _noScreenshot.screenshotOff();
        break;
      case AppLifecycleState.inactive:
        _noScreenshot.screenshotOff();

        break;
      case AppLifecycleState.paused:
        _noScreenshot.screenshotOff();
        break;
      case AppLifecycleState.detached:
        break;
      case AppLifecycleState.hidden:
        _noScreenshot.screenshotOff();
        break;
    }
  }

  @override
  void initState() {
    super.initState();
    _noScreenshot.screenshotOff();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        leading: DrawerButton(
          onPressed: () {
            scaffoldKey.currentState?.openDrawer();
          },
        ),
        title: const Text('Machine Test'),
        actions: [
          BlocSelector<AuthenticationCubit, AuthenticationState, UserDetails?>(
            selector: (state) {
              return state.userDetails;
            },
            builder: (context, userDetails) {
              return IconButton(
                  onPressed: () {
                    if (userDetails == null) {
                      Navigation.navigate(
                          context, const AuthenticationScreen());
                      return;
                    }

                    Navigation.navigate(
                      context,
                      ProfileScreen(
                        user: userDetails,
                      ),
                    );
                  },
                  icon: const Icon(Icons.person));
            },
          ),
          BlocSelector<ProfileBloc, ProfileState, bool>(
            selector: (state) {
              return state.isDark;
            },
            builder: (context, isDark) {
              return IconButton(
                onPressed: () {
                  context.read<ProfileBloc>().add(const ChangeTheme());
                },
                icon: Icon(!isDark ? Icons.light_mode : Icons.dark_mode),
              );
            },
          ),
        ],
      ),
      body: const SafeArea(
        child: VideoPlayerScreen(),
      ),
      drawer: const DrawerWidget(),
    );
  }
}
