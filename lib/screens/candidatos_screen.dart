import 'package:elecciones2023/widgets/imagen_persona_partido.dart';
import 'package:flutter/material.dart';

class CandidatosScreen extends StatelessWidget {
    
  const CandidatosScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final listadoCandidatos = [
            SliderImage(image: 'assets/candidato1.jpg', nombre: 'Marco Moran', partido: 'Cabal', imagenPartido: 'assets/partido1.jpg', color: Color(0xff0201FF)),
            SliderImage(image: 'assets/candidato2.jpg', nombre: 'Mario Cojolon', partido: 'Prosperidad Ciudadana', imagenPartido: 'assets/partido2.jpg', color: Color(0xffFCE71A)),
            SliderImage(image: 'assets/candidato3.jpg', nombre: 'Jacinto Rancho', partido: 'Une', imagenPartido: 'assets/partido3.jpg', color: Color(0xff50A700)),
            SliderImage(image: 'assets/candidato4.jpg', nombre: 'Richard Pamal', partido: 'Mi Familia', imagenPartido: 'assets/partido4.jpg', color: Color(0xff0D09E4)),
            SliderImage(image: 'assets/candidato5.jpg', nombre: 'Odalis Canrey', partido: 'Unionista', imagenPartido: 'assets/partido5.jpg', color: Color(0xff0E166B)),
          ];
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
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount:listadoCandidatos.length,
                itemBuilder: ( _ , index ){
                  return  listadoCandidatos[index];
              }
            ),
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
  final String imagenPartido;
  final Color color;
  const SliderImage({
    Key? key, required this.image, required this.nombre, required this.partido, required this.imagenPartido, required this.color,
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
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: Card(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5)),
                child: Container(
                  height: 30,
                  width: width,
                  alignment: AlignmentDirectional.center,
                  color: this.color,
                  child: Text(this.partido, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),),
                ),
              ),
              Row(
                children: [
                  ImagePersonaPartido(image: this.image),
                  ImagePersonaPartido(image: this.imagenPartido),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Column(
                  children: [
                    Text('Nombre del candidato:', style: TextStyle(fontSize: 10),),
                    Text(this.nombre, style: TextStyle(fontSize: 30),)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}