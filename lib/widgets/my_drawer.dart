import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.orangeAccent.shade400,
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.orangeAccent.shade400,
              ),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.orangeAccent.shade400
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvatlV1XCcuZ0wY_o4_EzNOspCKy1DH0_9aQ&usqp=CAU",),
                  ),
                  accountEmail: Text("anujkumar9116@gmail.com"),
                  accountName: Text("Anuj Kumar"),
                )
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home, color: Colors.white,),
              title: Text("Home", textScaleFactor:1.2,style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail, color: Colors.white,),
              title: Text("Email me",textScaleFactor:1.2, style: TextStyle(color: Colors.white),),
            )
          ],
        ),
      ),
    );
  }
}
