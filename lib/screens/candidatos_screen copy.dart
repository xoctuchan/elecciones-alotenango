import 'package:flutter/material.dart';

class CandidatosScreen extends StatelessWidget {
  
  const CandidatosScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    //final double height = MediaQuery.of(context).size.height;
    return 
    CustomScrollView(
          slivers: [
            SliverList(delegate: 
              SliverChildListDelegate([
      Container(
        //width: width ,
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        //color: Colors.red,
        child: Column(
          children: [
            SliderImage(image: 'assets/cabal_candidato.jpg', nombre: 'Candidato 1', partido: 'Cabal'),
            SliderImage(image: 'assets/prosperidad_candidato.jpg', nombre: 'Candidato 2', partido: 'prosperidad'),
            SliderImage(image: 'assets/une_candidato.jpg', nombre: 'Candidato 3', partido: 'Une'),
            SliderImage(image: 'assets/cabal_candidato.jpg', nombre: 'Candidato 1', partido: 'Cabal'),
            SliderImage(image: 'assets/prosperidad_candidato.jpg', nombre: 'Candidato 2', partido: 'prosperidad'),
            SliderImage(image: 'assets/une_candidato.jpg', nombre: 'Candidato 3', partido: 'Une'),
          ],
        ),
      )
              ])
            )
          ]
    );
      
  }
}


class SliderImage extends StatelessWidget {
  final String image;
  final String nombre;
  final String partido;
  const SliderImage({
    Key? key, required this.image, required this.nombre, required this.partido,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return 
    GestureDetector(
      onTap: (){
        print(partido);
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Card(
          child: Column(
          children: [
            SizedBox(
              //margin: EdgeInsets.symmetric(vertical: 10),
              height: 200,
              width: width,
              //padding: const EdgeInsets.symmetric(vertical: 3),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(2),
                child: Image( 
                  image:AssetImage(image), 
                  fit: BoxFit.cover,
                )
              ),
            ),
            Text(this.nombre),
            SizedBox(height: 15,),
          ],
        )
        ),
      ),
    );
  }
}