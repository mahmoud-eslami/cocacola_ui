import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  final String imgPath;

  const StoryWidget({Key key, this.imgPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            width: 100,
            height: 100,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.white),
          ),
          Material(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
              Radius.circular(50),
            )),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Image.asset(
              imgPath,
              fit: BoxFit.cover,
              width: 95,
              height: 95,
            ),
          ),
        ],
      ),
    );
  }
}
