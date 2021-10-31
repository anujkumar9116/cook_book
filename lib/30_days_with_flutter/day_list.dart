import 'package:cook_book/utils/routes.dart';
import 'package:flutter/material.dart';

class DayList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("30 day with flutter"),
      ),
      body: ListView(
        children: [
          ListTile(
            onTap: (){
              Navigator.pushNamed(context, Routes.DrawerLayout);
            },
            title: Text("Day 9"),
            subtitle: Text('Create a drawer'),
          ),
          Divider(
            thickness: 1.0,
            color: Colors.grey,
          ),
          ListTile(
            onTap: (){
              // Navigator.pushNamed(context, Routes.DrawerLayout);
            },
            title: Text("Day 10"),
            subtitle: Text('Create a drawer'),
          ),
          Divider(
            thickness: 1.0,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
