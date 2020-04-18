import 'package:cocacolaui/resource/colors/colors.dart';
import 'package:cocacolaui/screen/drink/drink.dart';
import 'package:cocacolaui/screen/home/home.dart';
import 'package:cocacolaui/screen/market/market.dart';
import 'package:cocacolaui/screen/user/user.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentIndex = 0;
  List<Widget> pages = [Home(), Drink(), Market(), User()];

  void changeIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        height: 70,
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
          height: 60,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                    icon: Image.asset((currentIndex == 0)
                        ? 'assets/images/home_red.png'
                        : 'assets/images/home.png'),
                    onPressed: () {
                      changeIndex(0);
                    }),
                IconButton(
                    icon: Image.asset((currentIndex == 1)
                        ? 'assets/images/wine_red.png'
                        : 'assets/images/wine.png'),
                    onPressed: () {
                      changeIndex(1);
                    }),
                SizedBox(
                  width: 10,
                ),
                IconButton(
                    icon: Image.asset((currentIndex == 2)
                        ? 'assets/images/market_red.png'
                        : 'assets/images/market.png'),
                    onPressed: () {
                      changeIndex(2);
                    }),
                IconButton(
                    icon: Image.asset((currentIndex == 3)
                        ? 'assets/images/user_red.png'
                        : 'assets/images/user.png'),
                    onPressed: () {
                      changeIndex(3);
                    }),
              ],
            ),
          ),
        ),
        notchMargin: 9,
      ),
      body: pages[currentIndex],
    );
  }
}
