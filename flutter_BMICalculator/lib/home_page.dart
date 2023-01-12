import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'iconwidget.dart';
import 'ccontainer.dart';
import 'constants.dart';
import 'package:flutter_bmicalculator/results_page.dart';
import 'bmicalculator.dart';

enum gender {
  male,
  female,
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color maleContainerColor = kInactiveColor;
  Color femaleContainerColor = kInactiveColor;
  int height = 180;
  int weight = 60;
  int age = 25;

  void updateCcontainer(var selectedGender) {
    switch (selectedGender) {
      case gender.male:
        print('MALE PRESSED');
        if (maleContainerColor == kActiveColor) {
          maleContainerColor = kInactiveColor;
        } else {
          maleContainerColor = kActiveColor;
        }
        femaleContainerColor = kInactiveColor;
        break;
      case gender.female:
        print('FEMALE PRESSED');
        if (femaleContainerColor == kActiveColor) {
          femaleContainerColor = kInactiveColor;
        } else {
          femaleContainerColor = kActiveColor;
        }
        maleContainerColor = kInactiveColor;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CContainer(
                    stateFunction: () {
                      setState(() {
                        updateCcontainer(gender.male);
                      });
                    },
                    myChild: IconWidget(
                      label: 'MALE',
                      icon: FontAwesomeIcons.mars,
                    ),
                    myColor: maleContainerColor,
                  ),
                ),
                Expanded(
                  child: CContainer(
                    stateFunction: () {
                      setState(() {
                        updateCcontainer(gender.female);
                      });
                    },
                    myChild: IconWidget(
                      label: 'FEMALE',
                      icon: FontAwesomeIcons.venus,
                    ),
                    myColor: femaleContainerColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: CContainer(
              myColor: kInactiveColor,
              myChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: kMyTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kMyTextStyle2,
                      ),
                      Text(
                        'cm',
                        style: kMyTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderThemeData(
                        inactiveTrackColor: Color(0xFF898997),
                        activeTrackColor: kAccentColor,
                        thumbColor: kAccentColor,
                        overlayColor: Color(0x29EA1556),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30.0)),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double newHeight) {
                        setState(() {
                          height = newHeight.toInt();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CContainer(
                    myColor: kInactiveColor,
                    myChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'WEIGHT',
                          style: kMyTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kMyTextStyle2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              myOnPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              icon: FontAwesomeIcons.plus,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                                myOnPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                icon: FontAwesomeIcons.minus),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: CContainer(
                    myColor: kInactiveColor,
                    myChild: Column(
                      children: <Widget>[
                        Text('AGE', style: kMyTextStyle,),
                        Text(age.toString(), style: kMyTextStyle2,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                myOnPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                  },
                            ),
                            SizedBox(width: 10.0,),
                            RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                myOnPressed:(){
                                  setState((){
                                    age--;
                                  });
                                },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: (){

              BMICalculator bmi = BMICalculator(height: height, weight: weight);

              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ResutlPage(bmi: bmi.getBMI(), result: bmi.getResult(), feedback: bmi.getFeedback(),)),
              );
            },  
            child: Container(
              child: Center(
                child: Text('CALCULATE',
                style: kLargeButtonTextStye,),
              ),
              color: kAccentColor,
              margin: EdgeInsets.only(top: 10.0),
              padding: EdgeInsets.only(bottom: 30.0),
              width: double.infinity,
              height: kContainerHeight,
            ),
          ),
        ],
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.icon, required this.myOnPressed});

  final IconData icon;
  final Function() myOnPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: myOnPressed,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: kThecolor,
    );
  }
}
