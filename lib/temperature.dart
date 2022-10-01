// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class _TemparetureState extends State<Tempareture> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.center,
      child: Column(
        children: [
          const Text('Select a Temperature',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w100,
                fontFamily: 'HelveticaNeue',
                fontSize: 14,
              )),
          _temparetureText,
        ],
      ),
    );
  }
}

Widget _temparetureText = Container(
  padding: const EdgeInsets.all(0),
  width: 830,
  height: 51,
  margin: const EdgeInsetsDirectional.fromSTEB(0, 11, 0, 0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text('150'),
      SizedBox(
        width: 1,
        height: 51,
        child: DecoratedBox(
          decoration: BoxDecoration(color: Color.fromARGB(1, 236, 234, 230)),
        ),
      ),
      Text('175'),
      SizedBox(
        width: 1,
        height: 51,
        child: DecoratedBox(
          decoration: BoxDecoration(color: Color.fromARGB(254, 236, 234, 230)),
        ),
      ),
      SizedBox(
        width: 70,
        height: 51,
        child: Center(
          child: Text('200°',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontFamily: 'HelveticaNeue',
                fontSize: 28,
              )),
        ),
      ),
      SizedBox(
        width: 1,
        height: 51,
        child: DecoratedBox(
          decoration: BoxDecoration(color: Color.fromARGB(254, 236, 234, 230)),
        ),
      ),
      _gradualText(
        '225',
        Color.fromARGB(1, 54, 54, 54),
        Color.fromARGB(255, 114, 114, 114),
      ),
      SizedBox(
        width: 1,
        height: 51,
        child: DecoratedBox(
          decoration: BoxDecoration(color: Color.fromARGB(1, 236, 234, 230)),
        ),
      ),
      Text('250'),
    ],
  ),
);

Widget _gradualText(String text, Color bgcl, Color edcl) {
  return ShaderMask(
      shaderCallback: (Rect bounds) {
        return LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [bgcl, edcl],
        ).createShader(Offset.zero & bounds.size);
      },
      blendMode: BlendMode.srcATop,
      child: Container(
        padding: const EdgeInsets.all(0),
        width: 70,
        height: 51,
        child: Center(
          child: Text(text,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontFamily: 'HelveticaNeue',
                fontSize: 28,
              )),
        ),
      ));
}

class Tempareture extends StatefulWidget {
  const Tempareture({super.key});

  @override
  State<Tempareture> createState() => _TemparetureState();
}
