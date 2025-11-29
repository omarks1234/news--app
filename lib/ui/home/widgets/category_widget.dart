import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/core/resources/assets_manager.dart';
import 'package:news_app/model/category_object.dart';

class CategoryWidget extends StatelessWidget {
  int index ;
  CategoryObject categoryObject ;
 CategoryWidget(this.index , this.categoryObject );

  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: (index%2==0)?TextDirection.ltr:TextDirection.rtl,
      child: Container(
        clipBehavior: Clip.antiAlias,
        width: 363.w,
        height: 198.h,
        decoration: BoxDecoration(
          color:Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Row(
          children: [
           Image.asset(categoryObject.imgPath , height:198.h ,width: 170.w, fit:BoxFit.fill),
            SizedBox(width: 5.w,),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment:  (index%2==0)?CrossAxisAlignment.start:CrossAxisAlignment.end,
              children: [
                Text(categoryObject.description , style: Theme.of(context).textTheme.bodyMedium, ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: REdgeInsetsDirectional.only(
                       start: 16 ,




                    ),


                    backgroundColor: Theme.of(context).colorScheme.secondary.withOpacity(0.50),


                  ),
                  onPressed: (){},
                  child: Row(
                    children: [
                     Text("View All") ,
                      SizedBox(width: 10,),
                      CircleAvatar(
                          radius: 27.r,
                          backgroundColor: Theme.of(context).colorScheme.secondary,
                          child: Icon(Icons.arrow_forward_ios ,size: 24,))
                    ],
                  ),
                ),

              ],
            )
          ],
        ),

      ),
    );
  }
}
