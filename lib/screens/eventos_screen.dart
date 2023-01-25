import 'package:flutter/material.dart';

class EventosScreen extends StatelessWidget {
  
  const EventosScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    //final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return 
      Container(
        height: height,
        color: Colors.white,
        child: const Text('EventosScreen')
      );
  }
}