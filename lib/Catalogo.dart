import 'package:flutter/material.dart';
import 'package:path/path.dart';
class Catalogo extends StatefulWidget {
  const Catalogo({Key? key}) : super(key: key);

  @override
  State<Catalogo> createState() => _CatalogoState();
}

class _CatalogoState extends State<Catalogo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(5),child:  _boton("Hamburguesa", "hamburguesa.png",context),),
              Padding(padding: EdgeInsets.all(5),child:  _boton("Helado", "helado.png",context),),
              Padding(padding: EdgeInsets.all(5),child:  _boton("Hot-Dog", "hotdog.png",context),)
            ],
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.all(5),child:  _boton("Raspados", "raspado.png",context),),
              Padding(padding: EdgeInsets.all(5),child:  _boton("Tacos", "taco.png",context),),
              Padding(padding: EdgeInsets.all(5),child:  _boton("Sushi", "sushi.png",context),)
            ],
          )


        ],
      ),)
    );
  }

}

Widget _boton(String texto,String imagen,BuildContext context){

  return Material(
    color: Colors.orange,
    elevation: 8,
    borderRadius: BorderRadius.circular(28),
    clipBehavior: Clip.antiAliasWithSaveLayer,
    child: InkWell(
      splashColor: Colors.white,
      onTap: (){
        alerta(context);
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image(image: AssetImage("assets/images/${imagen}"), height: 90,)
        ],
      ),
    ),
  );
}


Future<void> alerta(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // hace que el usuario no pueda cerrar el diálogo haciendo clic fuera de él
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('¡PRODUCTO AGREGADO!'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('PRODUCTO AGREGADO AL CARRITO CORRECTAMENTE'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: Text('Aceptar'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

