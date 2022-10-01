import 'package:flutter/material.dart';

//Accessed by starting a recipe
//This page will be used for the entire cooking process
class RecipeInstructionPage extends StatelessWidget {
  const RecipeInstructionPage({super.key});

  //Filler
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Recipe Instruction page")),
      body: Center(child: Text("Recipe Instruction page")),
    );
  }
}
