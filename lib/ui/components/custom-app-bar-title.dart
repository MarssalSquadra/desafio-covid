import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import '../util/util.dart';
import 'default-text.dart';

class CustomAppBarTitle extends StatelessWidget {
  final String title;
  final Widget leftIcon;
  final void Function() onPressed;
  final bool leftIconHasAction;

  final defaultLeftIcon = Icon(
    Icons.arrow_back_ios_sharp,
    color: AppThemes.color_0xF11E2243,
    size: 24,
  );

  final Alignment alignment;

  CustomAppBarTitle({
    Key key,
    @required this.title,
    this.leftIcon,
    this.onPressed,
    this.leftIconHasAction = true,
    this.alignment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppThemes.transparent,
      padding: AppPatterns.toolbarPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Center(
              child: IconButton(
                icon: leftIcon ?? defaultLeftIcon,
                onPressed:
                    onPressed ?? leftIconHasAction ? () => Get.back() : null,
              ),
            ),
          ),
          SizedBox(width: 4),
          Expanded(
            child: Container(
              child: Align(
                alignment: alignment ?? Alignment.center,
                child: DefaultText(
                  title,
                  color: AppThemes.color_0xF11E2243,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          SizedBox(width: 4),
          Container(
            width: 48,
          ),
        ],
      ),
    );
  }
}
