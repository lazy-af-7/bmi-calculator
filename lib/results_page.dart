import 'package:bmi_calculator/Shared_Widgets/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/material.dart';
import 'Shared_Widgets/reusable_card.dart';
import 'calculator_brain.dart';

class Results extends StatelessWidget {
  Results(
      {@required this.bmi_results,
      @required this.interpretation,
      @required this.resultText});
  final String bmi_results;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'BMI CALCULATOR',
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
                flex: 5,
                child: ReusableCard(
                  colour: activeCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        resultText.toUpperCase(),
                        style: resultTextStyle,
                      ),
                      Text(
                        bmi_results,
                        style: bmiTextStyle,
                      ),
                      Text(
                        interpretation,
                        style: bodyTextStyle,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                )),
            BottomButton(
                ontap: () {
                  Navigator.pop(context);
                },
                bottomTitle: 'RE-CALCULATE'),
          ],
        ));
  }
}
