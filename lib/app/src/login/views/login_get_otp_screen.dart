import 'package:burger_shop_ui/app/routes/app_pages.dart';
import 'package:burger_shop_ui/app/widgets/button.dart';
import 'package:burger_shop_ui/app/widgets/custom_app_bar.dart';
import 'package:burger_shop_ui/app/widgets/custom_text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginGetOtpScreen extends StatefulWidget {
  const LoginGetOtpScreen({super.key});

  @override
  State<LoginGetOtpScreen> createState() => _LoginGetOtpScreenState();
}

class _LoginGetOtpScreenState extends State<LoginGetOtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        height: kToolbarHeight,
        enableBackButton: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            16.verticalSpace,
            Text(
              'Enter your mobile number to continue',
              style: TextStyle(
                  fontFamily: 'gilory',
                  fontWeight: FontWeight.w700,
                  fontSize: 30.sp,
                  height: 1.1),
            ),
            16.verticalSpace,
            const CustomMobileNumberField(),
            26.verticalSpace,
            CustomButton(
              title: 'Continue',
              height: 55.h,
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  AppPages.routeLoginVerifyOtpScreen,
                );
              },
            ),
            26.verticalSpace,
            RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 13.sp,
                  color: Colors.black,
                  fontFamily: 'basis',
                  fontWeight: FontWeight.w300,
                ),
                children: <TextSpan>[
                  const TextSpan(text: 'By clicking, I accept the '),
                  TextSpan(
                    text: 'terms of Service',
                    style: const TextStyle(
                        color: Colors.black,
                        fontFamily: 'basis',
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => print('Terms & Conditions'),
                  ),
                  const TextSpan(
                    text: ' and ',
                  ),
                  TextSpan(
                    text: 'privacy policy',
                    style: const TextStyle(
                        color: Colors.black,
                        fontFamily: 'basis',
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => print('Privacy Policy'),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
