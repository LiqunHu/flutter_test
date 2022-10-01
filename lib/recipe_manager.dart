import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

/// A class which loads, stores, and distributes recipes.
class RecipeManager {

  /// A list which holds the json data for all stored recipes
  List<dynamic> recipeJson = [];

  /// A boolean with values as follows:
  ///   false - The recipe list has not yet loaded from json
  ///   true - The recipe list has been successfully loaded
  bool recipesLoaded = false;

  /// The constructor for the RecipeManager. Takes in a [jsonLocation] filepath
  /// to load the recipes from.
  RecipeManager(String jsonLocation) {
    LoadJson(jsonLocation);
  }

  /// A function which loads recipe json from disk. Takes in a [jsonLocation]
  /// filepath to load the recipes from. This function is asyncronous because
  /// the loading from disk may take a while
  void LoadJson(String jsonLocation) async {
    // Json parsing method stolen from Stack Overflow:
    // https://stackoverflow.com/a/54073640
    recipeJson = await rootBundle.loadString(jsonLocation)
        .then((jsonStr) => jsonDecode(jsonStr));
    recipesLoaded = true;
  }
}