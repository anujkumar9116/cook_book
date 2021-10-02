import 'package:cook_book/utils/routes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Cook Book'),
        ),
        body: ListView(
            children: [
              ListTile(
                onTap: (){
                  Navigator.pushNamed(context, Routes.AnimatedContainer);
                },
                title: Text('Container example'),
                subtitle: Text('Animated container with button functionality'),
                leading: Container(
                  width: 50,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1.0, color: Colors.grey),
                    shape: BoxShape.circle
                  ),
                  child: Image.asset('assets/animated_container.gif', width: 35, height: 35,),
                ),
              ),
              Divider(
                height: 1.0,
                color: Colors.grey,
              )
            ],
        ),
      ),
    );
  }
}
