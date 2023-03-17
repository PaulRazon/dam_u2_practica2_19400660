import 'dart:async';
import 'package:flutter/material.dart';

class Pedidos extends StatefulWidget {
  const Pedidos({Key? key}) : super(key: key);

  @override
  State<Pedidos> createState() => _PedidosState();
}
List Estados=["Nayarit","Colima","Yucatan","Jalisco"];
class _PedidosState extends State<Pedidos> {
  bool _seleccionado=false;
  String _estado =Estados.first;

  @override
  Widget build(BuildContext context) {
    return Center(child: Column(children: [
      SizedBox(height: 30,),
      Text("Tenemos envios a toda la republica,\n confirma si no eres de tlaxcala",style: TextStyle(fontSize: 15),),
      SizedBox(height:30,),
      CheckboxListTile(title: Text("Confirmar"),value: _seleccionado, onChanged: (bool? valor){
        setState(() {
          _seleccionado= valor!;
        });
      }),
      SizedBox(height:30,),
      Text("Escoje el estado donde vives",style: TextStyle(fontSize: 13),),
      SizedBox(height: 10,),
      DropdownButton(
        value: _estado,
          items: Estados.map((valor){
            return DropdownMenuItem(child: Text(valor),value: valor,);
          }).toList(),
          onChanged: (valor){
            setState(() {
              _estado=valor.toString();
            });
          }),
      SizedBox(height: 10,),
      Image(image: AssetImage("assets/images/mapa.jpg",),height: 170,)

    ],),);
  }

}

