import 'package:flutter/material.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: myHomePage(),
    );
  }
}

class myHomePage extends StatefulWidget {
  const myHomePage({super.key});

  @override
  State<myHomePage> createState() => _myHomePageState();
}

class _myHomePageState extends State<myHomePage> {
  String saludo = "Hola";
  var myNameController = TextEditingController();

  void mostrarSaludo() {
    setState(() {
      saludo = myNameController.text.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Campos de texto"),
        ),
        body: Column(
          children: [
            Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(label: Text("Ingrese su nombre")),
                  controller: myNameController,
                )),
            MaterialButton(
              onPressed: mostrarSaludo,
              child: Text("Saludar", style: TextStyle(color: Colors.white)),
              color: Colors.lightBlueAccent,
            ),
            Text(saludo)
          ],
        ));
  }
}
