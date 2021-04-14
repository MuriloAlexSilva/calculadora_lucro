import 'package:flutter/material.dart';

class MargemDesejadaPage extends StatefulWidget {
  @override
  _MargemDesejadaPageState createState() => _MargemDesejadaPageState();
}

class _MargemDesejadaPageState extends State<MargemDesejadaPage> {
  TextEditingController _custoController = TextEditingController();
  TextEditingController _porcentagemController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Margem Desejada'),
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
                    labelText: 'Digite o valor do Custo',
                    hintText: 'Valor',
                    prefixIcon: Icon(Icons.monetization_on_outlined)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Digite o valor da Porcentagem',
                    hintText: 'Valor',
                    prefixIcon: Icon(Icons.account_balance)),
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
