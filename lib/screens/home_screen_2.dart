import 'package:flutter/material.dart';

class HomeScreen2 extends StatelessWidget {
  
  const HomeScreen2({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    //final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return 
      Container(
        height: height,
        color: Colors.white,
        child: Image(
            image: AssetImage('assets/logo_elecciones.png')
          )
    );
  }
}