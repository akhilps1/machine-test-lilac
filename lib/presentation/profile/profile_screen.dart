import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:machine_test/application/authantication/authentication_cubit.dart';
import 'package:machine_test/application/core/colors.dart';
import 'package:machine_test/application/core/serveice/progress_dialog.dart';
import 'package:machine_test/application/profile/profile_bloc.dart';
import 'package:machine_test/domain/authantication/models/user_details.dart';
import 'package:machine_test/presentation/core/widgets/custom_button.dart';
import 'package:machine_test/presentation/profile/widgets/image_picker.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({
    super.key,
    required this.user,
  });

  final UserDetails user;

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final TextEditingController controller = TextEditingController();
  final TextEditingController controller1 = TextEditingController();
  final TextEditingController controller2 = TextEditingController();
  final TextEditingController controller3 = TextEditingController();

  @override
  void initState() {
    controller.text = widget.user.name ?? '';
    controller1.text = widget.user.phoneNumber;
    controller2.text = widget.user.email ?? '';
    controller3.text = widget.user.dob ?? '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileBloc, ProfileState>(
      listener: (context, state) {
        if (state.failureOption.isSome()) {
          Navigator.pop(context);
          context.read<ProfileBloc>().add(const ClearFailureAndSuccess());
        }

        if (state.successOption.isSome()) {
          Navigator.pop(context);
          context.read<ProfileBloc>().add(const ClearFailureAndSuccess());
        }
      },
      child: Scaffold(
        appBar: AppBar(
          shadowColor: Colors.black,
          elevation: 1,
          titleSpacing: 0,
          title: const Text(
            'Edit Profile',
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        body: SizedBox(
          child: ListView(
            children: [
              const Gap(40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImagePickerWidget(
                    imgUrl: widget.user.imageUrl,
                  ),
                ],
              ),
              const Gap(40),
              const SizedBox(
                width: double.infinity,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Opacity(
                        opacity: 0.80,
                        child: Text(
                          'Name',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                  controller: controller,
                  decoration: const InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.primary),
                    ),
                  ),
                ),
              ),
              const Gap(20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Opacity(
                      opacity: 0.80,
                      child: Text(
                        'Phone Number',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  width: double.infinity,
                  child: TextField(
                    controller: controller1,
                    readOnly: true,
                    decoration: const InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.primary),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.primary),
                      ),
                    ),
                  ),
                ),
              ),
              const Gap(20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Opacity(
                      opacity: 0.80,
                      child: Text(
                        'Email',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  width: double.infinity,
                  child: TextField(
                    controller: controller2,
                    decoration: const InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.primary),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.primary),
                      ),
                    ),
                  ),
                ),
              ),
              const Gap(20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Opacity(
                      opacity: 0.80,
                      child: Text(
                        'Date of Birth',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  width: double.infinity,
                  child: TextField(
                    controller: controller3,
                    decoration: const InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.primary),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.primary),
                      ),
                    ),
                  ),
                ),
              ),
              const Gap(50)
            ],
          ),
        ),
        bottomNavigationBar: SizedBox(
          height: 60,
          child: Container(
            width: double.infinity,
            margin: const EdgeInsets.all(10),
            child: BlocConsumer<AuthenticationCubit, AuthenticationState>(
              listener: (context, state) {},
              builder: (context, state) {
                return CustomButton(
                  onPress: () {
                    showProgress(context);
                    context.read<ProfileBloc>().add(
                          UpdateProfile(
                            widget.user.copyWith(
                              name: controller.text,
                              dob: controller3.text,
                              email: controller2.text,
                              imageUrl: widget.user.imageUrl,
                            ),
                          ),
                        );
                  },
                  color: AppColors.secondary,
                  widget: const Text(
                    'Save',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
