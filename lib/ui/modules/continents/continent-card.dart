import 'package:flutter/material.dart';
import '../../../models/models.dart';
import '../../../ui/components/components.dart';
import '../../../ui/util/util.dart';

import 'continents-controller.dart';

class ContinentCard extends StatelessWidget {
  const ContinentCard({
    Key key,
    @required ContinentsController continentsController,
    @required this.continent,
  })  : _continentsController = continentsController,
        super(key: key);

  final ContinentsController _continentsController;
  final Continent continent;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () => _continentsController.onTapCard(continent),
        leading: Image.asset(_continentsController.getAsset(continent)),
        title: Align(
          alignment: Alignment.centerLeft,
          child: DefaultText(
            continent.continent,
            color: AppThemes.color_0xF11E2243,
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
        subtitle: Align(
          alignment: Alignment.centerLeft,
          child: DefaultText(
            "${continent.countries.length.toString()} países",
            color: AppThemes.color_0xFF969AA8,
            fontSize: 14,
            fontWeight: FontWeight.normal,
          ),
        ),
        trailing: InkWell(
          onTap: () => _continentsController.onTapCard(continent),
          borderRadius: BorderRadius.circular(35),
          child: Icon(
            Icons.arrow_forward_ios_outlined,
            color: AppThemes.color_0xFFC7C7CC,
            size: 16,
          ),
        ),
      ),
    );
  }
}
