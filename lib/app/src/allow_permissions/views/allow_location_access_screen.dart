import 'package:burger_shop_ui/app/theme/colors.dart';
import 'package:burger_shop_ui/app/utils/extensions.dart';
import 'package:burger_shop_ui/app/widgets/button.dart';
import 'package:burger_shop_ui/app/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllowLocationAccessScreen extends StatefulWidget {
  const AllowLocationAccessScreen({super.key});

  @override
  State<AllowLocationAccessScreen> createState() =>
      _AllowLocationAccessScreenState();
}

class _AllowLocationAccessScreenState extends State<AllowLocationAccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        height: 50,
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'What\'s your location?',
              style: TextStyle(
                  fontSize: 24.sp,
                  fontFamily: 'gilory',
                  fontWeight: FontWeight.w700),
            ),
            4.verticalSpace,
            Text(
              'We need your location to confirm\nour service is available.',
              style: TextStyle(
                  fontSize: 18.sp,
                  height: 1,
                  fontFamily: 'proxima',
                  fontWeight: FontWeight.w500,
                  color: ColorPalette.textMedium),
            ),
            140.verticalSpace,
            SvgPicture.asset(
              'assets/svgs/allow_location.svg',
              height: 310,
            ),
            const Expanded(child: const SizedBox.shrink()),
            CustomButton(
              height: 55.h,
              title: 'Allow location access',
            ),
            12.verticalSpace,
            SizedBox(
              width: context.sw(),
              child: TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(ColorPalette.primaryRed),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.transparent),
                  padding: MaterialStateProperty.all<EdgeInsets>(
                    EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
                  ),
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                  ),
                  overlayColor: MaterialStateProperty.all<Color>(
                      ColorPalette.primaryRedSub),
                ),
                onPressed: () {},
                child: Text(
                  'Enter Manually',
                  style: TextStyle(
                      fontFamily: 'basis',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            12.verticalSpace,
          ],
        ),
      )),
    );
  }
}
