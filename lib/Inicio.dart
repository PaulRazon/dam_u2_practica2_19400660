import 'package:flutter/material.dart';

class Inicio extends StatefulWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            children: [
              SizedBox(height: 30,),
              Text("Aqui en Razzi tenemos las mejores Burgers", style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,fontFamily: 'Raleway'),),
              SizedBox(height: 50,),
              Image(image: AssetImage("assets/images/promo1.jpg"),height: 300,width: 300,)
            ],
          ),
        )
      );
  }
}
