import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scube_app_task/core/constants/app_colors.dart';
import 'package:scube_app_task/core/constants/app_text_style.dart';
import '../../../core/widgets/slide_up_animation.dart';
import '../../../shared/widgets/custom_button.dart';
import '../../../shared/widgets/custom_text_field.dart';
import '../controller/login_controller.dart';

class LoginCard extends GetView<LoginController> {
  const LoginCard({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final bottomInset = MediaQuery.of(
      context,
    ).viewInsets.bottom;

    return Align(
      alignment: Alignment.bottomCenter,
      child: SlideUpAnimation(
        child: Container(
          height: height * 0.5,
          padding: EdgeInsets.fromLTRB(
            24,
            24,
            24,
            24 + bottomInset,
          ),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text('Login', style: AppTextStyles.h2),
                const SizedBox(height: 20),

                CustomTextField(
                  hint: 'Username',
                  controller: controller.username,
                ),
                const SizedBox(height: 16),

                Obx(
                  () => CustomTextField(
                    hint: 'Password',
                    controller: controller.password,
                    obscure:
                        !controller.isPasswordVisible.value,
                    suffixIcon: IconButton(
                      icon: Icon(
                        controller.isPasswordVisible.value
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: controller.togglePassword,
                    ),
                  ),
                ),

                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: AppColors.textLight,
                        decoration:
                            TextDecoration.underline,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 6),

                CustomButton(
                  title: 'Login',
                  onTap: controller.login,
                ),

                const SizedBox(height: 1),

                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center,

                  children: [
                    Text(
                      'Don\'t have an account? ',
                      style: TextStyle(
                        color: AppColors.textLight,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Register Now',
                        style: TextStyle(
                          color: AppColors.primary,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
