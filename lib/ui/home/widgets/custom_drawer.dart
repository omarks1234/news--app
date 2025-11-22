import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/core/provider/theme_provider.dart';
import 'package:news_app/core/resources/assets_manager.dart';
import 'package:news_app/core/resources/colorManager.dart';
import 'package:news_app/core/resources/stringsManager.dart';
import 'package:news_app/core/reusable_components/horizontal_line.dart';
import 'package:provider/provider.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context) ;
    return Drawer(
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            color: ColorManager.primaryDarkColor,
            width: double.infinity,
            height: 166,
            child: Text(
              StringsManager.appTitle,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Padding(
            padding: REdgeInsets.all(16.sp),
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      child: SvgPicture.asset(
                        AssetsManager.homeIcon,
                        width: 19.w,
                        height: 20.h,
                      ),
                    ),
                    SizedBox(width: 6.w),
                    Text(
                      StringsManager.goToHome,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                SizedBox(height: 24.h),
                HorizontalLine(),
                SizedBox(height: 24),
                Row(
                  children: [
                    SvgPicture.asset(
                      AssetsManager.themeIcon,
                      width: 19.w,
                      height: 20.h,
                    ),

                    SizedBox(width: 6.w),
                    Text(
                      StringsManager.theme,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                SizedBox(height: 8),
                DropdownMenu<String>(
                  onSelected: (value) {
                    themeProvider.getMode(value!) ;
                    print(value);
                  },
                  hintText: "select",
                  textStyle: Theme.of(
                    context,
                  ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w500),
                  trailingIcon: Icon(Icons.arrow_drop_down, size: 35.r),
                  selectedTrailingIcon: Icon(Icons.arrow_drop_up, size: 35.r),
                  width: 237.w,
                  inputDecorationTheme: InputDecorationTheme(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(
                        color: ColorManager.primaryDarkColor,
                      ),
                    ),
                    suffixIconColor: ColorManager.primaryDarkColor,
                    contentPadding: EdgeInsets.all(16.r),
                  ),

                  dropdownMenuEntries: [
                    DropdownMenuEntry(value: "light", label: "Light"),
                    DropdownMenuEntry(value: "dark", label: "Dark"),
                  ],
                ),
                SizedBox(height: 24.h),
                Divider(height: 1.h, color: ColorManager.primaryDarkColor),
                SizedBox(height: 24.h),
                Row(
                  children: [
                    SvgPicture.asset(AssetsManager.languageIcon),
                    SizedBox(width: 6),
                    Text(
                      StringsManager.language,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                SizedBox(height: 8.h),
                DropdownMenu<String>(
                  width: 237.w,
                  trailingIcon: Icon(Icons.arrow_drop_down , size: 30.r, color: ColorManager.primaryDarkColor,),
                  selectedTrailingIcon: Icon(Icons.arrow_drop_up , size: 30.r, color: ColorManager.primaryDarkColor,),
                  textStyle:  Theme.of(
                    context,
                  ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w500),
                  inputDecorationTheme: InputDecorationTheme(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.r),
                      borderSide: BorderSide(
                        color: ColorManager.primaryDarkColor,
                      )
                    ),
                    contentPadding: EdgeInsets.all(16.r),
                  ),
                  dropdownMenuEntries: [
                    DropdownMenuEntry(
                      value: "english",
                      label: "English",
                    ),
                    DropdownMenuEntry(
                      value: "arabic",
                      label: "Arabic",
                    ),

                  ]
                ),

                //DropdownMenu(dropdownMenuEntries: dropdownMenuEntries)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
