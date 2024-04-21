import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:machine_test/application/core/colors.dart';
import 'package:machine_test/application/core/serveice/progress_dialog.dart';
import 'package:machine_test/application/profile/profile_bloc.dart';

class ImagePickerWidget extends StatelessWidget {
  const ImagePickerWidget({
    required this.imgUrl,
    super.key,
  });

  final String? imgUrl;

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileBloc, ProfileState>(
      listener: (context, state) {
        if (state.failureOption.isSome()) {
          Navigator.pop(context);
        }

        if (state.successOption.isSome()) {
          Navigator.pop(context);
        }
      },
      child: InkWell(
        splashFactory: NoSplash.splashFactory,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => Container(
              height: 120,
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          showProgress(context);
                          context
                              .read<ProfileBloc>()
                              .add(const PickImageFromCamera());
                        },
                        child: const Icon(
                          Icons.camera,
                          size: 50,
                          color: AppColors.primary,
                        ),
                      ),
                      const Text(
                        'Camera',
                        style: TextStyle(
                          color: Color(0xFF6F0F10),
                          fontSize: 13,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                  Container(
                    width: 1,
                    height: 60,
                    color: AppColors.primary,
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          showProgress(context);
                          context
                              .read<ProfileBloc>()
                              .add(const PickImageFromGallary());
                        },
                        child: Icon(
                          Icons.perm_media_outlined,
                          color: AppColors.primary.withOpacity(0.9),
                          size: 50,
                        ),
                      ),
                      const Text(
                        'Gallary',
                        style: TextStyle(
                          color: Color(0xFF6F0F10),
                          fontSize: 13,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        },
        child: SizedBox(
          width: 100,
          height: 100,
          child: Card(
            surfaceTintColor: Colors.white,
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.all(4),
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: BlocSelector<ProfileBloc, ProfileState, String?>(
                    selector: (state) {
                      return state.imgUrl;
                    },
                    builder: (context, pickedImage) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: pickedImage == null && imgUrl == null
                            ? const Icon(
                                Icons.person,
                                size: 45,
                              )
                            : Image.network(
                                pickedImage ?? imgUrl!,
                              ),
                      );
                    },
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: 33,
                    width: 33,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 0.1,
                            spreadRadius: 0.1,
                            offset: const Offset(0.5, 0.5))
                      ],
                    ),
                    child: const Icon(
                      Icons.add_a_photo_sharp,
                      color: AppColors.primary,
                      // size: 22,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
