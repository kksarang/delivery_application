import 'package:burger_shop_ui/app/theme/colors.dart';
import 'package:burger_shop_ui/app/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomMobileNumberField extends StatefulWidget {
  const CustomMobileNumberField({super.key});

  @override
  State<CustomMobileNumberField> createState() =>
      _CustomMobileNumberFieldState();
}

class _CustomMobileNumberFieldState extends State<CustomMobileNumberField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.sw(),
      height: 65.h,
      // color: Colors.grey,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            bottom: 0,
            child: Container(
              width: context.sw() - 32.w,
              height: 55.h,
              decoration: BoxDecoration(
                border: Border.all(
                    width: 1.5.r, color: ColorPalette.primaryRedBorder),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Row(
                children: [
                  11.horizontalSpace,
                  Padding(
                    padding: EdgeInsets.only(top: 3.r),
                    child: Text(
                      '+971',
                      style: TextStyle(
                        fontFamily: 'basis',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  11.horizontalSpace,
                  Container(
                    width: 1.r,
                    height: 20.h,
                    color: Colors.black.withOpacity(0.1),
                  ),
                  11.horizontalSpace,
                  Expanded(
                      child: Theme(
                    data: Theme.of(context),
                    child: TextField(
                      cursorHeight: 20.h,
                      cursorWidth: 1,
                      cursorColor: ColorPalette.primaryRed,
                      keyboardType: TextInputType.phone,
                      maxLength: 10,
                      maxLines: 1,
                      style: TextStyle(
                        fontFamily: 'basis',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Enter your mobile',
                        counterText: '',
                        counterStyle: const TextStyle(fontSize: 0),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                          bottom: 0.5.r,
                        ),
                      ),
                    ),
                  ))
                ],
              ),
            ),
          ),
          Positioned(
            left: 20.w,
            top: 0,
            child: Container(
              alignment: AlignmentDirectional.topCenter,
              width: 112.w,
              height: 20.h,
              color: Colors.white,
              child: Text(
                'Mobile Number',
                style: TextStyle(
                    fontFamily: 'basis',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: ColorPalette.primaryRed),
              ),
            ),
          )
        ],
      ),
    );
  }
}
