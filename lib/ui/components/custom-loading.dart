import 'package:flutter/material.dart';
import '../../ui/util/util.dart';

class CustomLoading extends StatelessWidget {
  const CustomLoading({
    Key key,
    this.exibir = true,
  }) : super(key: key);

  final bool exibir;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final padding = MediaQuery.of(context).padding;
    return Container(
      width: size.width,
      height: size.height - AppPatterns.toolbarHeight - padding.top,
      child: Visibility(
        visible: exibir,
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
