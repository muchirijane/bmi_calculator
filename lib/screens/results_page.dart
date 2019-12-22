import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';
import '../components/bottom_Button_content.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import '../constant.dart';
import 'package:bmi_calculator/calculator_brain.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.getBmi,
      @required this.getResults,
      @required this.getInterpretation});
  final String getBmi;
  final String getResults;
  final String getInterpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'YOUR RESULTS',
                style: kTittleResultStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    getResults.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    getBmi,
                    style: kResultNumber,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      getInterpretation,
                      textAlign: TextAlign.center,
                      style: kResultBodyStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: BottomButton(
                onTap: () {
                  Navigator.pop(context);
                },
                buttonText: 'RE-CALCULATE'),
          ),
        ],
      ),
    );
  }
}
