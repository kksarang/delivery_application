import 'package:burger_shop_ui/app/routes/app_pages.dart';
import 'package:burger_shop_ui/app/theme/colors.dart';
import 'package:burger_shop_ui/app/utils/extensions.dart';
import 'package:burger_shop_ui/app/widgets/button.dart';
import 'package:burger_shop_ui/app/widgets/custom_app_bar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:pinput/pinput.dart';

class LoginVerifyOtpScreen extends StatefulWidget {
  const LoginVerifyOtpScreen({super.key});

  @override
  State<LoginVerifyOtpScreen> createState() => _LoginVerifyOtpScreenState();
}

class _LoginVerifyOtpScreenState extends State<LoginVerifyOtpScreen> {
  final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: const TextStyle(
        fontSize: 20,
        color: Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
      borderRadius: BorderRadius.circular(20),
    ),
  );

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // context.sw().horizontalSpace,
            16.verticalSpace,
            Text(
              'Verify with OTP sent to\n9744477794',
              style: TextStyle(
                  fontFamily: 'gilory',
                  fontWeight: FontWeight.w700,
                  fontSize: 30.sp,
                  height: 1.1),
            ),
            16.verticalSpace,
            Pinput(
              length: 6,
              defaultPinTheme: PinTheme(
                width: 56.r,
                height: 50.r,
                textStyle: TextStyle(
                  fontFamily: 'basis',
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w500,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: HexColor('#656A6D'),
                  ),
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
            ),
            6.verticalSpace,
            Row(
              children: [
                LottieBuilder.asset(
                  'assets/lottie/auto_fetch_loading.json',
                  height: 50.r,
                ),
                Text(
                  'Auto fetching OTP...',
                  style: TextStyle(
                      fontFamily: 'basis',
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color: ColorPalette.textMedium),
                )
              ],
            ),
            16.verticalSpace,
            CustomButton(
              height: 55.h,
              title: 'Continue',
              onPressed: () => Navigator.pushNamedAndRemoveUntil(context,
                  AppPages.routeAllowLocationAccessScreen, (route) => false),
            ),
            32.verticalSpace,
            RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 16.sp,
                  color: ColorPalette.textMedium,
                  fontFamily: 'basis',
                  fontWeight: FontWeight.w400,
                ),
                children: <TextSpan>[
                  const TextSpan(text: 'Didn\'t receive it? Retry in '),
                  TextSpan(
                    text: '00:30',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: ColorPalette.textMedium,
                      fontFamily: 'basis',
                      fontWeight: FontWeight.w400,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => print('00:30'),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
