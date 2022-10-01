import 'package:flutter/material.dart';

//Accessed by pressing the "Recipes" button from the nav bar
//This page will display all of the available recipes to choose from
class RecipesAllPage extends StatelessWidget {
  const RecipesAllPage({super.key});

  //Filler
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Recipes All Page")),
      body: Center(child: Text("Recipes All Page")),
    );
  }
}
