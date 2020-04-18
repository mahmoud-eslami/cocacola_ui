import 'package:cocacolaui/resource/colors/colors.dart';
import 'package:cocacolaui/resource/strings/strings.dart';
import 'package:cocacolaui/widget/story_widget/story_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Column(
      children: <Widget>[
        Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: CustomPaint(
              painter: CurvePainter(),
              child: SafeArea(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Image.asset(
                            'assets/images/menu.png',
                            width: 25,
                            height: 25,
                          ),
                          Text(
                            Strings.homeTitle,
                            style: textTheme.title.copyWith(
                              color: AppColors.lightTextColor,
                            ),
                          ),
                          Icon(
                            Icons.search,
                            size: 32,
                            color: AppColors.lightTextColor,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 120,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) => StoryWidget(
                                imgPath: 'assets/images/coccaa.png',
                              ),),
                    )
                  ],
                ),
              ),
            )),
      ],
    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = AppColors.headerColor;
    paint.style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(0, size.height * 1);
    path.quadraticBezierTo(
        size.width / 4, size.height / .6, size.width, size.height * 1);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
