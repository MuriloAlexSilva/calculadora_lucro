import 'package:calculadora_lucro/app/components/textField_custom.dart';
import 'package:flutter/material.dart';

class MargemMeLiPage extends StatefulWidget {
  @override
  _MargemMeLiPageState createState() => _MargemMeLiPageState();
}

class _MargemMeLiPageState extends State<MargemMeLiPage> {
  TextEditingController _custoController = TextEditingController();
  TextEditingController _classicoController = TextEditingController();
  TextEditingController _premiumController = TextEditingController();
  TextEditingController _vendaController = TextEditingController();

  double taxaFixa = 5;
  double custo;
  double classico;
  double premium;
  double venda;
  double lucroClassico = 0;
  double margemClassico = 0;
  double lucroPremium = 0;
  double margemPremium = 0;
  String textoClassico = '';
  String textoPremium = '';

  void clear() {
    setState(() {
      _custoController.clear();
      _classicoController.clear();
      _premiumController.clear();
      _vendaController.clear();
      textoClassico = "";
      textoPremium = "";
    });
  }

  void isEmptyClassico() {
    setState(() {
      if (lucroClassico == 0) {
        textoClassico = 'Preencha os campos acima';
        return textoClassico;
      } else {
        textoClassico =
            'No anúncio Clássico você irá obter um lucro de R\$ ${lucroClassico.toStringAsFixed(2)}, com uma margem de ${margemClassico.toStringAsFixed(0)} \% por peça vendida!!!';
        return textoClassico;
      }
    });
  }

  void isEmptyPremium() {
    setState(() {
      if (lucroPremium == 0) {
        textoPremium = 'Preencha os campos acima';
        return textoPremium;
      } else {
        textoPremium =
            'No anúncio Premium você irá obter um lucro de R\$ ${lucroPremium.toStringAsFixed(2)}, com uma margem de ${margemPremium.toStringAsFixed(0)} \% por peça vendida!!!';
        return textoPremium;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mercado Livre'),
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
        child: SingleChildScrollView(
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
                controller: _classicoController,
                label: 'Digite a taxa do Anúncio Clássico',
                hint: 'Valor em Porcentagem',
                icon: Icon(Icons.account_balance),
              ),
              TextFieldCustom(
                controller: _premiumController,
                label: 'Digite a taxa do Anúncio Premium',
                hint: 'Valor em Porcentagem',
                icon: Icon(Icons.account_balance),
              ),
              TextFieldCustom(
                controller: _vendaController,
                label: 'Digite o preço de Venda Desejado',
                hint: 'Valor',
                icon: Icon(Icons.account_balance),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Container(
                  width: double.infinity,
                  child: FlatButton(
                    onPressed: () {
                      custo = double.tryParse(_custoController.text);
                      venda = double.tryParse(_vendaController.text);

                      setState(() {
                        classico = (venda *
                                double.tryParse(_classicoController.text)) /
                            100;

                        premium =
                            (venda * double.tryParse(_premiumController.text)) /
                                100;

                        lucroClassico = venda - (classico + custo + taxaFixa);
                        lucroPremium = venda - (premium + custo + taxaFixa);
                        margemClassico = (lucroClassico * 100) / custo;
                        margemPremium = (lucroPremium * 100) / custo;

                        isEmptyClassico();
                        isEmptyPremium();
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
                  textoClassico,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                )),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                    child: Text(
                  textoPremium,
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
      ),
    );
  }
}
