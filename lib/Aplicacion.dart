import 'package:dam_u2_practica2_19400660/Catalogo.dart';
import 'package:dam_u2_practica2_19400660/Inicio.dart';
import 'package:dam_u2_practica2_19400660/Pedidos.dart';
import 'package:flutter/material.dart';

class Aplicacion extends StatefulWidget {
  const Aplicacion({Key? key}) : super(key: key);

  @override
  State<Aplicacion> createState() => _AplicacionState();
}

class _AplicacionState extends State<Aplicacion> {
  int _indice = 0;
  @override
  void cambiarIndice(int indice){
    setState(() {
      _indice=indice;
    });
  }
  final List<Widget> _paginas=[
  Inicio(),
  Catalogo(),
  Pedidos(),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Razzi",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        actions: [

        ],
        backgroundColor: Colors.orange,
      ),
      body: _paginas[_indice],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Inicio"),
          BottomNavigationBarItem(icon: Icon(Icons.fastfood_sharp),label: "Catalogo"),
          BottomNavigationBarItem(icon: Icon(Icons.pedal_bike),label: "Pedidos")
        ],
        currentIndex: _indice,
        showSelectedLabels: false,
        iconSize: 30,
        backgroundColor: Colors.grey,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white38,
        onTap: cambiarIndice,
      )
      
    );
  }
}
