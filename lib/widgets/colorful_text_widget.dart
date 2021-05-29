import 'package:flutter/material.dart';

class ColorfulWidgetText extends StatelessWidget {
  const ColorfulWidgetText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'C',
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.w800, fontSize: 30.0),
        children: <TextSpan>[
          TextSpan(
            text: 'o',
            style: TextStyle(color: Colors.purple),
          ),
          TextSpan(text: 'llacti'),
          TextSpan(text: 'o', style: TextStyle(color: Colors.yellow)),
          TextSpan(text: 'n'),
        ],
      ),
    );
  }
}
