import 'package:flutter/material.dart';

import '../../ui/util/util.dart';
import 'default-text.dart';

class DataNotFound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final padding = MediaQuery.of(context).padding;
    return Container(
      width: size.width,
      height: size.height - AppPatterns.toolbarHeight - padding.top,
      child: Center(
        child: DefaultText(
          "Não foram encontrados dados.\nTente novamente mais tarde.",
          maxLines: 2,
          color: AppThemes.accentColor,
          fontSize: 22,
        ),
      ),
    );
  }
}
