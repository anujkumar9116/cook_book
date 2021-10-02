import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class AnimateContainer extends StatefulWidget {
  @override
  _AnimateContainerState createState() => _AnimateContainerState();
}

class _AnimateContainerState extends State<AnimateContainer> {

  String name = '';
  // final _textController = new TextEditingController();
  bool isAnimate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(name),
          16.heightBox,
          TextField(
            decoration: InputDecoration(
              hintText: 'Enter your name'
            ),
            onChanged: (value){

              name = value;
              setState(() {

              });
            },
          ),
          16.heightBox,
          InkWell(
            onTap: () async{
              isAnimate = true;
              setState(() {
              });
              await Future.delayed(Duration(seconds: 1));
              name = 'welcome';
              setState(() {

              });
            },
            child: AnimatedContainer(
              duration: Duration(seconds: 1),
              width: isAnimate?50:150,
              alignment: Alignment.center,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
                borderRadius: BorderRadius.circular(isAnimate?40:8)
              ),
              child: isAnimate?Icon(Icons.done, color: Colors.white,):Text('Login', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),),
            ),
          )
        ],
      ),
    );
  }
}
