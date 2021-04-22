import 'package:calculadora_lucro/app/components/textField_custom.dart';
import 'package:flutter/material.dart';

class MargemInstagramPage extends StatefulWidget {
  @override
  _MargemInstagramPageState createState() => _MargemInstagramPageState();
}

class _MargemInstagramPageState extends State<MargemInstagramPage> {
  TextEditingController _custoController = TextEditingController();
  TextEditingController _margemController = TextEditingController();

  double embalagem = 2.5;
  double custo;
  double margem;
  double margemInstagram;
  double vendaInstagram = 0;
  double lucroInstagram = 0;
  String texto = '';

  void clear() {
    setState(() {
      _custoController.clear();
      _margemController.clear();
      texto = "";
    });
  }

  void isEmpty() {
    setState(() {
      if (vendaInstagram == 0 && lucroInstagram == 0) {
        texto = 'Preencha o campo de Custo e Margem';
        return texto;
      } else {
        texto =
            'Seu preço de venda deverá ser R\$ ${vendaInstagram.toStringAsFixed(2)}, obtendo um lucro de R\$ ${lucroInstagram.toStringAsFixed(2)} por peça vendida!!!';
        return texto;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Margem Instagram'),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () => clear(),
            ),
          )
        ],
      ),
      backgroundColor: Colors.brown[300],
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextFieldCustom(
              controller: _custoController,
              hint: 'Valor',
              label: 'Digite o valor do Custo',
              icon: Icon(Icons.monetization_on_outlined),
            ),
            TextFieldCustom(
              controller: _margemController,
              label: 'Digite a Margem Desejada',
              hint: 'Valor em Porcentagem',
              icon: Icon(Icons.account_balance),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Container(
                width: double.infinity,
                child: FlatButton(
                  onPressed: () {
                    custo = double.tryParse(_custoController.text);
                    margem = double.tryParse(_margemController.text);
                    margemInstagram = (custo * margem) / 100;
                    setState(() {
                      vendaInstagram = custo + margemInstagram + embalagem;
                      lucroInstagram = vendaInstagram - custo - embalagem;
                      isEmpty();
                    });
                  },
                  child: Text(
                    'Calcular',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  color: Colors.brown[700],
                  height: 50,
                ),
              ),
            ),
            Divider(height: 40),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                  child: Text(
                texto,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
