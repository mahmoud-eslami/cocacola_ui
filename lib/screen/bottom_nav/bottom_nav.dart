import 'package:cocacolaui/resource/colors/colors.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        height: 80,
        child: FittedBox(
          child: FloatingActionButton(
            clipBehavior: Clip.antiAlias,
            foregroundColor: AppColors.productScaffoldColor,
            backgroundColor: AppColors.headerColor,
            splashColor: AppColors.productHoverColor,
            hoverColor: AppColors.headerColor,
            elevation: 10,
            onPressed: () {},
            child: Image.asset(
              'assets/images/soda.png',
              height: 40,
              width: 40,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 75,
        ),
        notchMargin: 9,
      ),
    );
  }
}
