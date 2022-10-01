import 'package:flutter/material.dart';
import 'package:act_app/temperature.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: null,
      body: Center(child:Tempareture()),
    );
  }
}
