import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class AnimateContainer extends StatefulWidget {
  @override
  _AnimateContainerState createState() => _AnimateContainerState();
}

class _AnimateContainerState extends State<AnimateContainer> {

  final _keyForm = GlobalKey<FormState>();
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
          Form(
            key: _keyForm,
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter your name',
              ),
              validator: (value){
                if(value!.isEmpty){
                  return 'cannot be empty';
                }else if(value.length<6){
                  return 'length should be 6';
                }
              },
              onChanged: (value){

                name = value;
                setState(() {

                });
              },
            ),
          ),
          16.heightBox,
          Material(
              color: Colors.deepPurpleAccent,
              borderRadius: BorderRadius.circular(isAnimate?40:8),
            child: InkWell(
              onTap: () async{
                if(_keyForm.currentState!.validate()) {
                  isAnimate = true;
                  setState(() {});
                  await Future.delayed(Duration(seconds: 1));
                  name = 'welcome';
                  await Future.delayed(Duration(seconds: 1));
                  setState(() {
                    isAnimate = false;
                  });
                }
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                width: isAnimate?50:150,
                alignment: Alignment.center,
                height: 40,
                child: isAnimate?Icon(Icons.done, color: Colors.white,):Text('Login', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),),
              ),
            ),
          )
        ],
      ),
    );
  }
}
