import 'package:bodymassindex/reuseable_card.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class ResultPage extends StatelessWidget {

  ResultPage({
    required this.bmiResult,
    required this.result,
    required this.review,
});

  final String bmiResult;
  final String result;
  final String review;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Center(
              child: Container(
                child: Text(
                  'Your Results',
                  style: kTitleTextStyle,

                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              onPress: () {},
              colour: kActiveCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    result.toString(),
                    style: kResultTextStyle,

                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    review,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              )
            ),
          ),

          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: double.infinity,
              height: kBottomContainerHeight,
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.only(bottom: 10),
              color: kBottomContainerColor,
              child: Center(

                child: Text('RE-Calculate',
                  style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 35),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
