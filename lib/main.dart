import 'package:flutter/material.dart';
import 'package:http/http.dart'; as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MiPagina(),
    );
  }
}

Future getUsuarios(){
final resp = await http.get('https://reqres.in/api/users'); 
}

class MiPagina extends StatelessWidget {
  const MiPagina({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Datos API'),
      ),
      body: Center(
        child: Container(
          child: Text('Datos API'),
        ),
      ),
    );
  }
}
