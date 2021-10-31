import 'package:cook_book/widgets/my_drawer.dart';
import 'package:flutter/material.dart';

class DrawerDayNine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent.shade400,
        title: Text("Day Nine"),
      ),
      drawer: MyDrawer(),
    );
  }
}
