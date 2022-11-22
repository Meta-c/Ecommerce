import 'package:ecommerce/core/utils/size_config.dart';
import 'package:ecommerce/core/widgets/space_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({super.key, this.title, this.subTitle, this.image});
  final String? title;
  final String? subTitle;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VerticalSpace(
          value: SizeConfig.defaultSize! * 1,
        ),
        SizedBox(
            height: SizeConfig.screenHeight! * 0.5, child: Image.asset(image!)),
        VerticalSpace(
          value: SizeConfig.defaultSize! * 0.1,
        ),
        Text(
          title!,
          style: TextStyle(
            fontSize: SizeConfig.defaultSize! * 1.5,
            color: const Color(0xff2f2e41),
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.left,
        ),
        const VerticalSpace(
          value: 1,
        ),
        Text(
          subTitle!,
          style: TextStyle(
            fontSize: SizeConfig.defaultSize! * 1.5,
            fontWeight: FontWeight.bold,
            color: const Color(0xff78787c),
          ),
          textAlign: TextAlign.left,
        )
      ],
    );
  }
}
