import 'package:cook_book/utils/routes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Thirty Day with Flutter'),
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
              ),
              ListTile(
                onTap: (){
                  Navigator.pushNamed(context, Routes.LocationContainer);
                },
                title: Text('Location example'),
                subtitle: Text('Check current location and address'),
                leading: Container(
                  width: 50,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1.0, color: Colors.grey),
                      shape: BoxShape.circle
                  ),
                  child: Image.asset('assets/location_placeholder.png', width: 35, height: 35,),
                ),
              ),
              Divider(
                height: 1.0,
                color: Colors.grey,
              ),
              ListTile(
                onTap: (){
                  Navigator.pushNamed(context, Routes.Day30Flutter);
                },
                title: Text('30 Days with Flutter'),
                subtitle: Text('A learning tutorial of flutter'),
                leading: Container(
                  width: 50,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1.0, color: Colors.grey),
                      shape: BoxShape.circle
                  ),
                  child: Image.asset('assets/30_day_flutter.png', width: 35, height: 35,),
                ),
              ),
              Divider(
                height: 1.0,
                color: Colors.grey,
              ),
              ListTile(
                onTap: (){
                  Navigator.pushNamed(context, Routes.GetXLibrary);
                },
                title: Text('GetX'),
                subtitle: Text('A GetX library tutorial for state management'),
                leading: Container(
                  width: 50,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1.0, color: Colors.grey),
                      shape: BoxShape.circle
                  ),
                  child: Image.asset('assets/get_x_icon.jpg', width: 35, height: 35,),
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
