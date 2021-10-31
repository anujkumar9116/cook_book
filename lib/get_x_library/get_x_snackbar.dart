import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXSnackbarList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Snackbar"),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white,),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        ),
        body: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(24.0, 4.0, 24.0, 4.0),
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: (){
                      Get.snackbar("Simple Snackbar", "This is simple Snackbar",
                      snackPosition: SnackPosition.BOTTOM);
                    },
                    style: ElevatedButton.styleFrom(primary: Colors.blue),
                    child: Text("Simple Snackbar", style: TextStyle(
                      color: Colors.white
                    ),),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(24.0, 4.0, 24.0, 4.0),
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: (){
                      Get.snackbar("Snackbar Margin", "Custom margin snackBar",
                      snackPosition: SnackPosition.BOTTOM,
                      margin: EdgeInsets.all(8.0));
                    },
                    style: ElevatedButton.styleFrom(primary: Colors.blue),
                    child: Text("Snackbar margin", style: TextStyle(
                      color: Colors.white
                    ),),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(24.0, 4.0, 24.0, 4.0),
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: (){
                      Get.snackbar("Gradient Snackbar", "change snackbar background as a gradient",
                      snackPosition: SnackPosition.BOTTOM,
                      margin: EdgeInsets.all(8.0),
                      backgroundGradient: LinearGradient(colors: [Color(0XFF123654)]));
                    },
                    style: ElevatedButton.styleFrom(primary: Colors.blue),
                    child: Text("Gradient Snackbar", style: TextStyle(
                      color: Colors.white
                    ),),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
