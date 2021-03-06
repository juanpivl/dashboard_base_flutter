import 'package:flutter/material.dart';
import 'package:nutricion_app/ui/cards/white_cards.dart';
import 'package:nutricion_app/ui/labels/custom_labels.dart';

class DashboardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        physics: ClampingScrollPhysics(),
        children: [
          Text(
            'Dashboardview',
            style: CustomLabels.h1,
          ),
          SizedBox(height: 10),
          WhiteCard(
            title: 'Sales Stadistics',
            child: Text('Hola mundo'),
          ),
        ],
      ),
    );
  }
}
