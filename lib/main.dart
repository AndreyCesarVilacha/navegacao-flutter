import 'package:flutter/material.dart';
import 'package:navegacao/TelaSecundaria.dart';

void main() {
  runApp(MaterialApp(
    home: TelaPrincipal(),
  ));
}

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Principal"),
        backgroundColor: Colors.red,
      ),
      body: Container(
          padding: EdgeInsets.all(32),
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TelaSecundaria()),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Text("Ir para segunda tela"),
                ),
              ),
            ],
          )),
    );
  }
}
