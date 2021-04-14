import 'package:flutter/material.dart';

class MargemObtidaPage extends StatefulWidget {
  @override
  _MargemObtidaPageState createState() => _MargemObtidaPageState();
}

class _MargemObtidaPageState extends State<MargemObtidaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Margem Obtida'),
        centerTitle: true,
      ),
      backgroundColor: Colors.brown[300],
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Digite o valor do Preço de Venda',
                    hintText: 'Valor',
                    prefixIcon: Icon(Icons.monetization_on_outlined)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Digite o valor do Custo',
                    hintText: 'Valor',
                    prefixIcon: Icon(Icons.monetization_on_outlined)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Container(
                width: double.infinity,
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Calcular',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  color: Colors.brown[700],
                  height: 50,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
