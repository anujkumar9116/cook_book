import 'package:cook_book/utils/routes.dart';
import 'package:flutter/material.dart';

class GetXTutorial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX Tutorial"),
      ),
      body: ListView(
        children: [
          ListTile(
            onTap: (){
              Navigator.pushNamed(context, Routes.GetxSnackbar);
            },
            title: Text("GetX Snackbar"),
            subtitle: Text('A Stylish snackbar without using context'),
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
