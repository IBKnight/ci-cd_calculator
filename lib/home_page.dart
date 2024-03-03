import 'package:ci_cd_calculator/utils/calculator.dart';
import 'package:ci_cd_calculator/utils/palette.dart';
import 'package:ci_cd_calculator/utils/sizer.dart';
import 'package:ci_cd_calculator/utils/strings.dart';
import 'package:ci_cd_calculator/widgets/calc_button.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String text = '';
  String operations = '';
  SizeConfig sizeConfig = SizeConfig();

  Map<String, Function> functions = {
    Strings.mod: Calculator.mod,
    Strings.add: Calculator.add,
    Strings.subtract: Calculator.substract,
    Strings.divide: Calculator.divide,
    Strings.multiply: Calculator.multiply,
    Strings.pow: Calculator.powF,
  };

  String formatter(Object value) {
    return '$value';
  }

  void addingNumber(String number) {
    setState(() {
      if (text.length == 11) {
        return;
      }

      if (operations.endsWith(Strings.equal)) {
        operations = '';
        text = number;
      } else if (text.length == 1 && text.startsWith(Strings.zero)) {
        text = number;
      } else {
        text += number;
      }
    });
  }

  void addingOperations(String op) {
    setState(() {
      if (text.isNotEmpty) {
        operations = '$text $op';
        text = '';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    sizeConfig.init(context);
    // print(MediaQuery.of(context).size.toString());
    return Scaffold(
        backgroundColor: Palette.bgGrey,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        operations,
                        style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        text,
                        style: const TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CalcButton(
                        text: Strings.sin,
                        callBack: () {
                          setState(() {
                            if (text.isNotEmpty) {
                              text =
                                  formatter(Calculator.sinF(num.parse(text)));
                              operations = '${Strings.sin}($text)';
                            } else {
                              text = formatter(Calculator.sinF(0));
                              operations = '${Strings.sin}(${Strings.zero})';
                            }
                          });
                        },
                      ),
                      CalcButton(
                        text: Strings.cos,
                        callBack: () {
                          setState(() {
                            if (text.isNotEmpty) {
                              text =
                                  formatter(Calculator.cosF(num.parse(text)));
                              operations = '${Strings.cos}($text)';
                            } else {
                              text = formatter(Calculator.cosF(0));
                              operations = '${Strings.cos}(${Strings.zero})';
                            }
                          });
                        },
                      ),
                      CalcButton(
                        text: 'π',
                        callBack: () {
                          setState(() {
                            text = '3.14';
                          });
                        },
                      ),
                      CalcButton(
                        text: Strings.pow,
                        callBack: () {
                          setState(() {
                            if (text.isNotEmpty) {
                              operations = '$text ${Strings.pow}';
                              text = '';
                            } else {
                              text = formatter(Calculator.powF(0, 1));
                              operations =
                                  '${Strings.zero} ${Strings.pow} ${Strings.one})';
                            }
                          });
                        },
                      ),
                      CalcButton(
                        text: Strings.sqrt,
                        callBack: () {
                          setState(() {
                            if (text.isNotEmpty) {
                              operations = '${Strings.sqrt}($text)';
                              text =
                                  formatter(Calculator.sqrtF(num.parse(text)));
                            } else {
                              text = formatter(Calculator.sqrtF(0));
                              operations = '${Strings.sqrt}(${Strings.zero})';
                            }
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CalcButton(
                        text: Strings.seven,
                        callBack: () {
                          addingNumber(Strings.seven);
                        },
                      ),
                      CalcButton(
                        text: Strings.eight,
                        callBack: () {
                          addingNumber(Strings.eight);
                        },
                      ),
                      CalcButton(
                        text: Strings.nine,
                        callBack: () {
                          addingNumber(Strings.nine);
                        },
                      ),
                      CalcButton(
                        text: Strings.divide,
                        callBack: () {
                          addingOperations(Strings.divide);
                        },
                      ),
                      CalcButton(
                        text: Strings.mod,
                        callBack: () {
                          addingOperations(Strings.mod);
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CalcButton(
                        text: Strings.four,
                        callBack: () {
                          addingNumber(Strings.four);
                        },
                      ),
                      CalcButton(
                        text: Strings.five,
                        callBack: () {
                          addingNumber(Strings.five);
                        },
                      ),
                      CalcButton(
                        text: Strings.six,
                        callBack: () {
                          addingNumber(Strings.six);
                        },
                      ),
                      CalcButton(
                        text: Strings.multiply,
                        callBack: () {
                          addingOperations(Strings.multiply);
                        },
                      ),
                      CalcButton(
                        text: 'floor',
                        callBack: () {
                          setState(() {
                            if (text.isNotEmpty) {
                              text =
                                  formatter(Calculator.floor(num.parse(text)));
                              operations = '${Strings.floor}($text)';
                            }
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CalcButton(
                        text: Strings.one,
                        callBack: () {
                          addingNumber(Strings.one);
                        },
                      ),
                      CalcButton(
                        text: Strings.two,
                        callBack: () {
                          addingNumber(Strings.two);
                        },
                      ),
                      CalcButton(
                        text: Strings.three,
                        callBack: () {
                          addingNumber(Strings.three);
                        },
                      ),
                      CalcButton(
                        text: Strings.subtract,
                        callBack: () {
                          addingOperations(Strings.subtract);
                        },
                      ),
                      CalcButton(
                        text: 'ceil',
                        callBack: () {
                          setState(() {
                            if (text.isNotEmpty) {
                              text =
                                  formatter(Calculator.ceil(num.parse(text)));
                              operations = '${Strings.ceil}($text)';
                            }
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CalcButton(
                        text: 'AC',
                        callBack: () {
                          setState(() {
                            text = '';
                            operations = '';
                          });
                        },
                      ),
                      CalcButton(
                        text: Strings.zero,
                        callBack: () {
                          addingNumber(Strings.zero);
                        },
                      ),
                      CalcButton(
                        text: '.',
                        callBack: () {
                          setState(() {
                            if (text.isEmpty) {
                              text += '0.';
                            }
                            if (!text.contains('.')) {
                              text += '.';
                            }
                          });
                        },
                      ),
                      CalcButton(
                        text: Strings.add,
                        callBack: () {
                          addingOperations(Strings.add);
                        },
                      ),
                      CalcButton(
                        text: Strings.equal,
                        callBack: () {
                          setState(() {
                            if (operations.isNotEmpty && text.isNotEmpty) {
                              List<String> op = operations.split(' ');
                              String firstNumber = op[0];
                              String operation = op[1];

                              operations += ' $text ${Strings.equal}';
                              text =
                                  '${functions[operation]!(num.parse(firstNumber), num.parse(text))}';
                            } else if (operations.isNotEmpty) {
                              List<String> op = operations.split(' ');
                              String firstNumber = op[0];
                              String operation = op[1];

                              operations += ' $firstNumber ${Strings.equal}';
                              text =
                                  '${functions[operation]!(num.parse(firstNumber), num.parse(firstNumber))}';
                            }
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
