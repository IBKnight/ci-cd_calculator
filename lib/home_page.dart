import 'package:ci_cd_calculator/utils/palette.dart';
import 'package:ci_cd_calculator/utils/sizer.dart';
import 'package:ci_cd_calculator/widgets/calc_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final String text = '';
  final String operations = '';
  SizeConfig sizeConfig = SizeConfig();

  @override
  Widget build(BuildContext context) {
    sizeConfig.init(context);
    // print(MediaQuery.of(context).size.toString());
    return Scaffold(
        backgroundColor: Palette.bgGrey,
        body: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    'Result',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    'Result',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CalcButton(
                    text: 'sin',
                    callBack: () {},
                  ),
                  CalcButton(
                    text: 'cos',
                    callBack: () {},
                  ),
                  CalcButton(
                    text: 'π',
                    callBack: () {},
                  ),
                  CalcButton(
                    text: 'pow',
                    callBack: () {},
                  ),
                  CalcButton(
                    text: '√',
                    callBack: () {},
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CalcButton(
                    text: '7',
                    callBack: () {},
                  ),
                  CalcButton(
                    text: '8',
                    callBack: () {},
                  ),
                  CalcButton(
                    text: '9',
                    callBack: () {},
                  ),
                  CalcButton(
                    text: '÷',
                    callBack: () {},
                  ),
                  CalcButton(
                    text: '%',
                    callBack: () {},
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CalcButton(
                    text: '4',
                    callBack: () {},
                  ),
                  CalcButton(
                    text: '5',
                    callBack: () {},
                  ),
                  CalcButton(
                    text: '6',
                    callBack: () {},
                  ),
                  CalcButton(
                    text: '×',
                    callBack: () {},
                  ),
                  CalcButton(
                    text: 'floor',
                    callBack: () {},
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CalcButton(
                    text: '1',
                    callBack: () {},
                  ),
                  CalcButton(
                    text: '2',
                    callBack: () {},
                  ),
                  CalcButton(
                    text: '3',
                    callBack: () {},
                  ),
                  CalcButton(
                    text: '-',
                    callBack: () {},
                  ),
                  CalcButton(
                    text: 'ceil',
                    callBack: () {},
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CalcButton(
                    text: 'AC',
                    callBack: () {},
                  ),
                  CalcButton(
                    text: '0',
                    callBack: () {},
                  ),
                  CalcButton(
                    text: '.',
                    callBack: () {},
                  ),
                  CalcButton(
                    text: '+',
                    callBack: () {},
                  ),
                  CalcButton(
                    text: '=',
                    callBack: () {},
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
