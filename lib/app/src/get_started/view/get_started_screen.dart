import 'package:burger_shop_ui/app/routes/app_pages.dart';
import 'package:burger_shop_ui/app/theme/colors.dart';
import 'package:burger_shop_ui/app/utils/extensions.dart';
import 'package:burger_shop_ui/app/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light,
          systemNavigationBarColor: Colors.black,
          systemNavigationBarIconBrightness: Brightness.light,
        ),
        child: Scaffold(
          body: Container(
            width: context.sw(),
            height: context.sh(),
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/images/get_started_background.jpg',
                ),
              ),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: context.sw(),
                  height: context.sh(),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.transparent,
                        Colors.black,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.65, 1.0],
                    ),
                  ),
                ),
                Positioned(
                  top: 510.h,
                  left: 16.w,
                  child: SvgPicture.asset(
                    'assets/svgs/sample_logo_red.svg',
                    width: 50.r,
                    height: 50.r,
                    color: Colors.grey.withOpacity(0.75),
                  ),
                ),
                Positioned(
                    top: 570.h,
                    left: 16.w,
                    child: Text(
                      'Swiggy',
                      style: TextStyle(
                          fontFamily: 'gilory',
                          fontWeight: FontWeight.w700,
                          fontSize: 32.sp,
                          color: Colors.white),
                    )),
                Positioned(
                  bottom: 0,
                  child: SizedBox(
                    width: context.sw(),
                    height: 200.h,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Burgers',
                                style: TextStyle(
                                  fontFamily: 'basis',
                                  color: Colors.white.withOpacity(0.75),
                                  fontSize: 22.sp,
                                ),
                              ),
                              10.horizontalSpace,
                              Container(
                                width: 5.r,
                                height: 5.r,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: ColorPalette.primaryRed,
                                ),
                              ),
                              10.horizontalSpace,
                              Text(
                                'Burgers',
                                style: TextStyle(
                                  fontFamily: 'basis',
                                  color: Colors.white.withOpacity(0.75),
                                  fontSize: 22.sp,
                                ),
                              ),
                              10.horizontalSpace,
                              Container(
                                width: 5.r,
                                height: 5.r,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: ColorPalette.primaryRed,
                                ),
                              ),
                              10.horizontalSpace,
                              Text(
                                'Burgers',
                                style: TextStyle(
                                  fontFamily: 'basis',
                                  color: Colors.white.withOpacity(0.75),
                                  fontSize: 22.sp,
                                ),
                              ),
                            ],
                          ),
                          16.verticalSpace,
                          Container(
                            width: context.sw(),
                            height: 1.r,
                            color: Colors.white.withOpacity(0.4),
                          ),
                          16.verticalSpace,
                          Text(
                            'Order from top restaurants',
                            style: TextStyle(
                              fontFamily: 'basis',
                              color: Colors.white.withOpacity(0.75),
                              fontSize: 22.sp,
                            ),
                          ),
                          16.verticalSpace,
                          CustomButton(
                            width: context.sw(),
                            height: 50.h,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppPages.routeLoginScreen,
                            ),
                          ),
                          35.verticalSpace,
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
