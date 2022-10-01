import 'package:act_app/home_page.dart';
import 'package:act_app/recipe_page.dart';
import 'package:act_app/account_page.dart';
import 'package:flutter/material.dart';
import 'package:act_app/recipe_manager.dart';
import 'atc_icons.dart';

// Asset locations
// Reminder - all assets need to be declared in [pubspec.yaml]
const jsonLocation = "./assets/recipes.json";

/// The main function of the program. This is called on boot.
void main() {
  runApp(const ACTApp());
}

/// The main parent widget of all app components.
class ACTApp extends StatelessWidget {
  const ACTApp({super.key});

  @override

  /// Builds the parent widget
  Widget build(BuildContext context) {
    
    /// A recipe manager which loads and distributes information about
    /// requested recipes. This is done at the ACTApp level because it is
    /// stateless and has no stateful parents (guaranteed to never reload).
    RecipeManager recipeManager = RecipeManager(jsonLocation);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const <Widget>[
        HomePage(),
        RecipePage(),
        AccountPage()
      ][currentPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(AtcApp.home), label: "HOME"),
          BottomNavigationBarItem(icon: Icon(AtcApp.recipe), label: "RECIPES"),
          BottomNavigationBarItem(icon: Icon(AtcApp.account), label: "ACCOUNT")
        ],
        currentIndex: currentPageIndex,
        selectedItemColor: const Color(0xffEEB111),
        unselectedItemColor: const Color.fromARGB(255, 22, 22, 22),
        elevation: 0,
        onTap: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
      ),
    );
  }
}
