import 'package:flutter/material.dart';
import 'package:hey_there/src/utilities/random_color.dart';

/// HomeScreen
class HomeScreen extends StatefulWidget {
  /// HomeScreen constructor
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color backgroundColor = Colors.white;

  static const double fontSize = 22;
  static const double luminance = 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: InkResponse(
        splashColor: Colors.black12,
        highlightColor: Colors.transparent,
        splashFactory: InkRipple.splashFactory,
        onTap: () {
          setState(() {
            backgroundColor = RandomColor().getColor();
          });
        },
        child: Center(
          child: Text(
            "Hey there!",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: fontSize,
              color: backgroundColor.computeLuminance() > luminance
                  ? Colors.black
                  : Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
