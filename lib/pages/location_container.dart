import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationContainer extends StatefulWidget {
  @override
  _LocationContainerState createState() => _LocationContainerState();
}

class _LocationContainerState extends State<LocationContainer> {

  var latLong ='';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocation();
  }


  getLocation() async{
    var position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);

    latLong = "${position.latitude},  ${position.longitude}";
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      body: Center(
        child: Text('Current LatLong $latLong'),
      ),
    );
  }
}
