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
        const VerticalSpace(
          value: 23,
        ),
        SizedBox(
            height: SizeConfig.defaultSize! * 20, child: Image.asset(image!)),
        const VerticalSpace(value: 3),
        Text(
          title!,
          style: const TextStyle(
            fontSize: 20,
            color: Color(0xff2f2e41),
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.left,
        ),
        const VerticalSpace(
          value: 1,
        ),
        Text(
          subTitle!,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Color(0xff78787c),
          ),
          textAlign: TextAlign.left,
        )
      ],
    );
  }
}
