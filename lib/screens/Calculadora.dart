import 'package:calculadora/components/Botao.dart';
import 'package:calculadora/models/LogicaCalculadora.dart';
import 'package:flutter/material.dart';

class Calculadora extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CalculadoraUI(),
    );
  }
}

class CalculadoraUI extends StatefulWidget {
  @override
  _CalculatoraUIState createState() => _CalculatoraUIState();
}

class _CalculatoraUIState extends State<CalculadoraUI> {
  dynamic text = '0';
  dynamic displaytxt = 20;

  LogicaCalculadora logica = LogicaCalculadora();

  void calculation(String btnText) {
    text = logica.calcular(btnText);
    setState(() {
      text = logica.finalResult;
    });
  }

  @override
  Widget build(BuildContext context) {
    //CalculadoraUI
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Calculadora'),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            // CalculadoraUI display
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Text(
                      '$text',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 75,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalcButton(
                  text: 'AC',
                  buttonColor: Colors.grey,
                  textColor: Colors.black,
                  onPressed: () {
                    calculation('AC');
                  },
                ),
                CalcButton(
                  text: '+/-',
                  buttonColor: Colors.grey,
                  textColor: Colors.black,
                  onPressed: () {
                    calculation('+/-');
                  },
                ),
                CalcButton(
                  text: '%',
                  buttonColor: Colors.grey,
                  textColor: Colors.black,
                  onPressed: () {
                    calculation('%');
                  },
                ),
                CalcButton(
                  text: '/',
                  buttonColor: Colors.amber[700]!,
                  textColor: Colors.white,
                  onPressed: () {
                    calculation('/');
                  },
                ),
              ],
            ),
            SizedBox(
              height: 10,
              width: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalcButton(
                  text: '7',
                  buttonColor: Colors.grey,
                  textColor: Colors.black,
                  onPressed: () {
                    calculation('7');
                  },
                ),
                CalcButton(
                  text: '8',
                  buttonColor: Colors.grey,
                  textColor: Colors.black,
                  onPressed: () {
                    calculation('8');
                  },
                ),
                CalcButton(
                  text: '9',
                  buttonColor: Colors.grey,
                  textColor: Colors.black,
                  onPressed: () {
                    calculation('9');
                  },
                ),
                CalcButton(
                  text: 'x',
                  buttonColor: Colors.amber[700]!,
                  textColor: Colors.white,
                  onPressed: () {
                    calculation('x');
                  },
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalcButton(
                  text: '4',
                  buttonColor: Colors.grey,
                  textColor: Colors.black,
                  onPressed: () {
                    calculation('4');
                  },
                ),
                CalcButton(
                  text: '5',
                  buttonColor: Colors.grey,
                  textColor: Colors.black,
                  onPressed: () {
                    calculation('5');
                  },
                ),
                CalcButton(
                  text: '6',
                  buttonColor: Colors.grey,
                  textColor: Colors.black,
                  onPressed: () {
                    calculation('6');
                  },
                ),
                CalcButton(
                  text: '-',
                  buttonColor: Colors.amber[700]!,
                  textColor: Colors.white,
                  onPressed: () {
                    calculation('-');
                  },
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalcButton(
                  text: '1',
                  buttonColor: Colors.grey,
                  textColor: Colors.black,
                  onPressed: () {
                    calculation('1');
                  },
                ),
                CalcButton(
                  text: '2',
                  buttonColor: Colors.grey,
                  textColor: Colors.black,
                  onPressed: () {
                    calculation('2');
                  },
                ),
                CalcButton(
                  text: '3',
                  buttonColor: Colors.grey,
                  textColor: Colors.black,
                  onPressed: () {
                    calculation('3');
                  },
                ),
                CalcButton(
                  text: '+',
                  buttonColor: Colors.amber[700]!,
                  textColor: Colors.white,
                  onPressed: () {
                    calculation('+');
                  },
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    calculation('0');
                  },
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(25, 10, 115, 10),
                      shape: StadiumBorder(),
                      backgroundColor: Colors.grey[850]),
                  child: Text(
                    '0',
                    style: TextStyle(fontSize: 35, color: Colors.white),
                  ),
                ),
                CalcButton(
                  text: '.',
                  buttonColor: Colors.grey,
                  textColor: Colors.black,
                  onPressed: () {
                    calculation('.');
                  },
                ),
                CalcButton(
                  text: '=',
                  buttonColor: Colors.amber[700]!,
                  textColor: Colors.white,
                  onPressed: () {
                    calculation('=');
                  },
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
