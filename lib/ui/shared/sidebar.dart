import 'package:flutter/material.dart';
import 'package:nutricion_app/providers/sidemenu_provider.dart';
import 'package:nutricion_app/ui/shared/widgets/logo.dart';
import 'package:nutricion_app/ui/shared/widgets/menu_item.dart';
import 'package:nutricion_app/ui/shared/widgets/textseparator.dart';

class Sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: double.infinity,
      decoration: buildBoxDecoration(),
      child: ListView(
        physics: ClampingScrollPhysics(),
        children: [
          Logo(),
          SizedBox(height: 50),
          TextSeparator(text: 'main'),
          MenuItem(
              text: 'Dashboard',
              icon: Icons.compass_calibration_outlined,
              onPressed: () => sideMenuProvider.closeMenu()),
          MenuItem(
              text: 'Orders', icon: Icons.shopping_cart, onPressed: () => {}),
          MenuItem(
              text: 'Analytic',
              icon: Icons.show_chart_outlined,
              onPressed: () => {}),
          MenuItem(
              text: 'Categories',
              icon: Icons.layers_clear_outlined,
              onPressed: () => {}),
          MenuItem(
              text: 'Products',
              icon: Icons.dashboard_outlined,
              onPressed: () => {}),
          MenuItem(
              text: 'Discount', icon: Icons.attach_money, onPressed: () => {}),
          SizedBox(height: 30),
          TextSeparator(text: 'UI Elements'),
          MenuItem(
              text: 'Icons',
              icon: Icons.list_alt_outlined,
              onPressed: () => {}),
          MenuItem(
              text: 'Markting',
              icon: Icons.mark_email_read_outlined,
              onPressed: () => {}),
          MenuItem(
              text: 'Campaing',
              icon: Icons.note_add_outlined,
              onPressed: () => {}),
          MenuItem(
              text: 'Black',
              icon: Icons.post_add_outlined,
              onPressed: () => {}),
          MenuItem(
              text: 'Longout', icon: Icons.exit_to_app, onPressed: () => {}),
        ],
      ),
    );
  }

  BoxDecoration buildBoxDecoration() {
    return BoxDecoration(
        gradient: LinearGradient(colors: const [
          Color.fromARGB(255, 44, 82, 2),
          Color.fromARGB(255, 6, 114, 24),
        ]),
        boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 10)]);
  }
}
