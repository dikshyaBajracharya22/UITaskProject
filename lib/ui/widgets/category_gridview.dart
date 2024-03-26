import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uitask/config/colors.dart';
import 'package:uitask/constants/dynamic_text_style.dart';
import 'package:uitask/models/category_model.dart';
import 'package:uitask/ui/widgets/add_spacing.dart';

GridView categoryGridView(List<CategoryModel> categoryData, context) {
  return GridView.builder(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 1.4,
        crossAxisSpacing: 0,
        mainAxisSpacing: 17),
    itemCount: categoryData.length,
    itemBuilder: (BuildContext ctx, index) {
      return Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                color: AppColor.white, // Change color as desired
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                    color: Colors.black.withOpacity(0.1), width: 1), // Add border
              ),
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 60,
                    width: 105,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: SvgPicture.asset(
                        categoryData[index].imageBanners,
                        height: 60,
                        width: 105,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const AddSpacing(height: 7),
                  Padding(
                    padding: const EdgeInsets.only(left: 2),
                    child: Text(
                      categoryData[index].title,
                      style: AppTextStyles.gridStyle(context),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}
