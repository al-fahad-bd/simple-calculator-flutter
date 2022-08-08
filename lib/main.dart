import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  return runApp(Calculator());
}

String input = '', value = '', resultFinal = '';
int value1 = 0, value2 = 0, result =0, pressKey = 0, operator = 0, pressEqual = 0, activity = 0;
double resultD = 0.0;

class Calculator extends StatefulWidget {
  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(fontFamily: 'Teko'),

      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: const Color(0xFF00BFA5),
            title: const Text(
              'Simple Calculator',
              style: TextStyle(
                fontSize: 30.0,
                fontFamily: 'Comfortaa',
              ),
            ),
          ),

          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                flex: 3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          input,
                          style: const TextStyle(
                            fontSize: 40.0,
                            fontFamily: 'Comfortaa',
                            color: Colors.black54,

                          ),
                        ),
                        Text(
                          resultFinal,
                          style: const TextStyle(
                            fontSize: 40.0,
                            fontFamily: 'Comfortaa',
                            color: Colors.black54,
                          ),
                        ),
                      ],

                    ),
                  ],

                ),
              ),

              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            if (input.length == 15) {
                              input = '';
                              operator = 0;
                              resultFinal = '';
                              value2 = 0;
                              value1 = 0;
                              value = '';
                              pressEqual = 0;
                              pressKey = 0;
                            }
                            if (pressEqual == 1 && value2 != null) {
                              input = '';
                              value = '';
                              operator = 0;
                              pressEqual = 0;
                              pressKey = 0;
                              resultFinal = '';
                            }
                            pressKey = 1;
                            print('Press 1');
                            input += '1';
                            value += '1';
                            print('Input is $input');
                            print('value is $input');
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.all(2.0),
                          child: const Text(
                            '1',
                            style: TextStyle(
                              fontSize: 36.0,
                              fontFamily: 'Comfortaa',
                              color: Colors.black54,
                            ),
                          ),
                          color: const Color(0xFF00BFA5),
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            if (input.length == 15) {
                              input = '';
                              operator = 0;
                              resultFinal = '';
                              value2 = 0;
                              value1 = 0;
                              value = '';
                              pressEqual = 0;
                              pressKey = 0;
                            }
                            if (pressEqual == 1 && value2 != null) {
                              input = '';
                              value = '';
                              operator = 0;
                              pressEqual = 0;
                              pressKey = 0;
                              resultFinal = '';
                            }
                            pressKey = 1;
                            print('Press 2');
                            input += '2';
                            value += '2';
                            print('Input is $input');
                            print('value is $input');
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.all(2.0),
                          child: const Text(
                            '2',
                            style: TextStyle(
                              fontSize: 36.0,
                              fontFamily: 'Comfortaa',
                              color: Colors.black54,
                            ),
                          ),
                          color: const Color(0xFF1DE9B6),
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            if (input.length == 15) {
                              input = '';
                              operator = 0;
                              resultFinal = '';
                              value2 = 0;
                              value1 = 0;
                              value = '';
                              pressEqual = 0;
                              pressKey = 0;
                            }
                            if (pressEqual == 1 && value2 != null) {
                              input = '';
                              value = '';
                              operator = 0;
                              pressEqual = 0;
                              pressKey = 0;
                              resultFinal = '';
                            }
                            pressKey = 1;
                            print('Press 3');
                            input += '3';
                            value += '3';
                            print('Input is $input');
                            print('value is $input');
                          });
                        },
                        child: Container(
                        margin: const EdgeInsets.all(2.0),
                          child: const Text(
                            '3',
                            style: TextStyle(
                              fontSize: 36.0,
                              fontFamily: 'Comfortaa',
                              color: Colors.black54,
                            ),
                          ),
                          color: const Color(0xFF64FFDA),
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(

                        onTap: () {
                          setState(() {
                            if (input.length == 15) {
                              input = '';
                              operator = 0;
                              resultFinal = '';
                              value2 = 0;
                              value1 = 0;
                              value = '';
                              pressEqual = 0;
                              pressKey = 0;
                            }

                            activity = 1;

                            if (pressEqual == 1 && value2 != null) {
                              input = '';
                              value = '';
                              operator = 0;
                              pressEqual = 0;
                              pressKey = 0;
                              resultFinal = '';
                            }
                            if (pressKey == 1 && operator == 0) {
                              input += '+';
                              value1 = int.parse(value);
                              operator = operator + 1;
                              value = '';
                              print('Value 1 = $value1');
                            }
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.all(2.0),
                          child: const Text(
                            '+',
                            style: TextStyle(
                              fontSize: 36.0,
                              fontFamily: 'Comfortaa',
                              color: Colors.black54,
                            ),
                          ),
                          color: const Color(0xFFA7FFEB),
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            if (input.length == 15) {
                              input = '';
                              operator = 0;
                              resultFinal = '';
                              value2 = 0;
                              value1 = 0;
                              value = '';
                              pressEqual = 0;
                              pressKey = 0;
                            }
                            if (pressEqual == 1 && value2 != null) {
                              input = '';
                              value = '';
                              operator = 0;
                              pressEqual = 0;
                              pressKey = 0;
                              resultFinal = '';
                            }
                            pressKey = 1;
                            print('Press 4');
                            input += '4';
                            value += '4';
                            print('Input is $input');
                            print('value is $input');
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.all(2.0),
                          child: const Text(
                            '4',
                            style: TextStyle(
                              fontSize: 36.0,
                              fontFamily: 'Comfortaa',
                              color: Colors.black54,
                            ),
                          ),
                          color: const Color(0xFFA7FFEB),
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            if (input.length == 15) {
                              input = '';
                              operator = 0;
                              resultFinal = '';
                              value2 = 0;
                              value1 = 0;
                              value = '';
                              pressEqual = 0;
                              pressKey = 0;
                            }
                            if (pressEqual == 1 && value2 != null) {
                              input = '';
                              value = '';
                              operator = 0;
                              pressEqual = 0;
                              pressKey = 0;
                              resultFinal = '';
                            }
                            pressKey = 1;
                            print('Press 5');
                            input += '5';
                            value += '5';
                            print('Input is $input');
                            print('value is $input');
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.all(2.0),
                          child: const Text(
                            '5',
                            style: TextStyle(
                              fontSize: 36.0,
                              fontFamily: 'Comfortaa',
                              color: Colors.black54,
                            ),
                          ),
                          color: const Color(0xFF64FFDA),
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            if (input.length == 15) {
                              input = '';
                              operator = 0;
                              resultFinal = '';
                              value2 = 0;
                              value1 = 0;
                              value = '';
                              pressEqual = 0;
                              pressKey = 0;
                            }
                            if (pressEqual == 1 && value2 != null) {
                              input = '';
                              value = '';
                              operator = 0;
                              pressEqual = 0;
                              pressKey = 0;
                              resultFinal = '';
                            }
                            pressKey = 1;
                            print('Press 6');
                            input += '6';
                            value += '6';
                            print('Input is $input');
                            print('value is $input');
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.all(2.0),
                          child: const Text(
                            '6',
                            style: TextStyle(
                              fontSize: 36.0,
                              fontFamily: 'Comfortaa',
                              color: Colors.black54,
                            ),
                          ),
                          color: const Color(0xFF1DE9B6),
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            if (input.length == 15) {
                              input = '';
                              operator = 0;
                              resultFinal = '';
                              value2 = 0;
                              value1 = 0;
                              value = '';
                              pressEqual = 0;
                              pressKey = 0;
                            }

                            activity = 2;

                            if (pressEqual == 1 && value2 != null) {
                              input = '';
                              value = '';
                              operator = 0;
                              pressEqual = 0;
                              pressKey = 0;
                              resultFinal = '';
                            }
                            if (pressKey == 1 && operator == 0) {
                              input += '-';
                              value1 = int.parse(value);
                              operator = operator + 1;
                              value = '';
                              print('Value 1 = $value1');
                            }
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.all(2.0),
                          child: const Text(
                            '-',
                            style: TextStyle(
                              fontSize: 36.0,
                              fontFamily: 'Comfortaa',
                              color: Colors.black54,
                            ),
                          ),
                          color: const Color(0xFF00BFA5),
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            if (input.length == 15) {
                              input = '';
                              operator = 0;
                              resultFinal = '';
                              value2 = 0;
                              value1 = 0;
                              value = '';
                              pressEqual = 0;
                              pressKey = 0;
                            }
                            if (pressEqual == 1 && value2 != null) {
                              input = '';
                              value = '';
                              operator = 0;
                              pressEqual = 0;
                              pressKey = 0;
                              resultFinal = '';
                            }
                            pressKey = 1;
                            print('Press 7');
                            input += '7';
                            value += '7';
                            print('Input is $input');
                            print('value is $input');
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.all(2.0),
                          child: const Text(
                            '7',
                            style: TextStyle(
                              fontSize: 36.0,
                              fontFamily: 'Comfortaa',
                              color: Colors.black54,
                            ),
                          ),
                          color: const Color(0xFF00BFA5),
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            if (input.length == 15) {
                              input = '';
                              operator = 0;
                              resultFinal = '';
                              value2 = 0;
                              value1 = 0;
                              value = '';
                              pressEqual = 0;
                              pressKey = 0;
                            }
                            if (pressEqual == 1 && value2 != null) {
                              input = '';
                              value = '';
                              operator = 0;
                              pressEqual = 0;
                              pressKey = 0;
                              resultFinal = '';
                            }
                            pressKey = 1;
                            print('Press 8');
                            input += '8';
                            value += '8';
                            print('Input is $input');
                            print('value is $input');
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.all(2.0),
                          child: const Text(
                            '8',
                            style: TextStyle(
                              fontSize: 36.0,
                              fontFamily: 'Comfortaa',
                              color: Colors.black54,
                            ),
                          ),
                          color: const Color(0xFF1DE9B6),
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            if (input.length == 15) {
                              input = '';
                              operator = 0;
                              resultFinal = '';
                              value2 = 0;
                              value1 = 0;
                              value = '';
                              pressEqual = 0;
                              pressKey = 0;
                            }
                            if (pressEqual == 1 && value2 != null) {
                              input = '';
                              value = '';
                              operator = 0;
                              pressEqual = 0;
                              pressKey = 0;
                              resultFinal = '';
                            }
                            pressKey = 1;
                            print('Press 9');
                            input += '9';
                            value += '9';
                            print('Input is $input');
                            print('value is $input');
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.all(2.0),
                          child: const Text(
                            '9',
                            style: TextStyle(
                              fontSize: 36.0,
                              fontFamily: 'Comfortaa',
                              color: Colors.black54,
                            ),
                          ),
                          color: const Color(0xFF64FFDA),
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            if (input.length == 15) {
                              input = '';
                              operator = 0;
                              resultFinal = '';
                              value2 = 0;
                              value1 = 0;
                              value = '';
                              pressEqual = 0;
                              pressKey = 0;
                            }

                            activity = 3;

                            if (pressEqual == 1 && value2 != null) {
                              input = '';
                              value = '';
                              operator = 0;
                              pressEqual = 0;
                              pressKey = 0;
                              resultFinal = '';
                            }
                            if (pressKey == 1 && operator == 0) {
                              input += '*';
                              value1 = int.parse(value);
                              operator = operator + 1;
                              value = '';
                              print('Value 1 = $value1');
                            }
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.all(2.0),
                          child: const Text(
                            '*',
                            style: TextStyle(
                              fontSize: 36.0,
                              fontFamily: 'Comfortaa',
                              color: Colors.black54,
                            ),
                          ),
                          color: const Color(0xFFA7FFEB),
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            if (input.length == 15) {
                              input = '';
                              operator = 0;
                              resultFinal = '';
                              value2 = 0;
                              value1 = 0;
                              value = '';
                              pressEqual = 0;
                              pressKey = 0;
                            }
                            if (pressEqual == 1 && value2 != null) {
                              input = '';
                              value = '';
                              operator = 0;
                              pressEqual = 0;
                              pressKey = 0;
                              resultFinal = '';
                            }
                            pressKey = 1;
                            print('Press 0');
                            input += '0';
                            value += '0';
                            print('Input is $input');
                            print('value is $input');
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.all(2.0),
                          child: const Text(
                            '0',
                            style: TextStyle(
                              fontSize: 36.0,
                              fontFamily: 'Comfortaa',
                              color: Colors.black54,
                            ),
                          ),
                          color: const Color(0xFFA7FFEB),
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            input = '';
                            value = '';
                            operator = 0;
                            pressEqual = 0;
                            pressKey = 0;
                            resultFinal = '';
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.all(2.0),
                          child: const Text(
                            'C',
                            style: TextStyle(
                              fontSize: 36.0,
                              fontFamily: 'Comfortaa',
                              color: Colors.black54,
                            ),
                          ),
                          color: const Color(0xFF64FFDA),
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            /*if(input.length == 15){
                              input = '';
                              operator = 0;
                              resultFinal = '';
                              value2 = 0;
                              value1 = 0;
                              value = '';
                              pressEqual =0;
                              pressKey = 0;
                            }

                             */

                            pressEqual = 1;

                            value2 = int.parse(value);
                            print('Value 2 is $value2');

                            if (activity == 1) {
                              result = value1 + value2;
                              resultFinal = '=' + result.toString();
                              print('Result is $result');
                            }
                            if (activity == 2) {
                              result = value1 - value2;
                              resultFinal = '=' + result.toString();
                              print('Result is $result');
                            }
                            if (activity == 3) {
                              result = value1 * value2;
                              resultFinal = '=' + result.toString();
                              print('Result is $result');
                            }
                            if (activity == 4) {
                              if (value2 == 0) {
                                resultFinal = '=Infinity';
                              }
                              if (value2 != 0) {
                                resultD = value1 / value2;
                                resultFinal =
                                    '=' + resultD.toStringAsPrecision(10);
                                print('Result is $result');
                              }
                            }
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.all(2.0),
                          child: const Text(
                            '=',
                            style: TextStyle(
                              fontSize: 36.0,
                              fontFamily: 'Comfortaa',
                              color: Colors.black54,
                            ),
                          ),
                          color: const Color(0xFF1DE9B6),
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            if (input.length == 15) {
                              input = '';
                              operator = 0;
                              resultFinal = '';
                              value2 = 0;
                              value1 = 0;
                              value = '';
                              pressEqual = 0;
                              pressKey = 0;
                            }

                            activity = 4;

                            if (pressEqual == 1 && value2 != null) {
                              input = '';
                              value = '';
                              operator = 0;
                              pressEqual = 0;
                              pressKey = 0;
                              resultFinal = '';
                            }
                            if (pressKey == 1 && operator == 0) {
                              input += '/';
                              value1 = int.parse(value);
                              operator = operator + 1;
                              value = '';
                              print('Value 1 = $value1');
                            }
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.all(2.0),
                          child: const Text(
                            '/',
                            style: TextStyle(
                              fontSize: 36.0,
                              fontFamily: 'Comfortaa',
                              color: Colors.black54,
                            ),
                          ),
                          color: const Color(0xFF00BFA5),
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
      ),
    );
  }
}
