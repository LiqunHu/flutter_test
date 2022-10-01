import 'package:flutter/material.dart';

//Accessed by selecting "add a new appliance" on the home page. Not sure how this will be
//used yet due to Jackie saying that the provisioning and calibration sections weren't needed
class AppliancesPage extends StatelessWidget {
  const AppliancesPage({super.key});

  //Filler
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Appliance page")),
      body: Center(child: Text("Appliance page")),
    );
  }
}
