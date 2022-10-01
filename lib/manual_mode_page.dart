import 'package:flutter/material.dart';

//Accessed by selecting an appliance(cooktop) and then selecting one of the cookig zones
class ManualModePage extends StatelessWidget {
  const ManualModePage({super.key});

  //Filler
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Manual Mode page")),
      body: Center(child: Text("Manual Mode page")),
    );
  }
}
