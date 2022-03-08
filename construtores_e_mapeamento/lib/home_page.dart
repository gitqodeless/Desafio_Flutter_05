import 'package:construtores_e_mapeamento/user.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
    }
}

class HomePageState extends State<HomePage> {
  
  int cores = 0;
  mudarCor(int numero) {
    switch (numero) {
      case 1:
        return cores = 1;
        case 2:
        return cores = 2;
      default:
      return cores = 0;
    }
  }
  var input = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('QODLESS')
      ),
      body: Center(
      child: Container(
        color: cores == 1 ? Colors.black : Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(175),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                style: const TextStyle(color: Colors.red),
                controller: input,
                decoration: const InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border:  OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                 if(input.text == "Ubuntu"){
                   Navigator.of(context).push(
                     MaterialPageRoute(builder: (context) => User())
                   );
                 }
                          },
               child: const Text('Validar'), 
               )
            ],
          ),
        ),
      ),
    ));
  }
}