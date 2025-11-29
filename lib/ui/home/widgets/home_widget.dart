import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/core/resources/stringsManager.dart';
import 'package:news_app/model/category_object.dart';
import 'package:news_app/ui/home/widgets/category_widget.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsetsDirectional.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 15.h),
          Text(
            StringsManager.newsGreetings,
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(height: 16.h),

          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) =>
                  CategoryWidget(index, CategoryObject.categoryObjects[index]),
              separatorBuilder: (context, index) => SizedBox(height: 16),
              itemCount: CategoryObject.categoryObjects.length,
            ),
          ),
        ],
      ),
    );
  }
}
