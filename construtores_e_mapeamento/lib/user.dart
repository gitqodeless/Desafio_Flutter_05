import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class User extends StatefulWidget {
  const User({ Key? key }) : super(key: key);

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  List _contatos = [];

  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/database.json');
    final data = await json.decode(response);
    setState(() {
    _contatos = data["contatos"];  
    });
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          'Contatos'
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            ElevatedButton(
              child: const Text('abrir lista'),
              onPressed: readJson,
              ),
              _contatos.isNotEmpty
              ? Expanded(
                child: ListView.builder(
                  itemCount: _contatos.length,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: const EdgeInsets.all(10),
                      child: ListTile(
                        leading: Text(_contatos[index]["name"]),
                        title: Text(_contatos[index]["status"]),
                        subtitle: Text(_contatos[index]["street"]),
                      ),
                    );
                  },
                ),
              )
              : Container()
          ],)
        ),
    );
  }
}