import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {

  final int result;
  final bool isMale;
  final int age;

  BMIResultScreen({
    required this.result,
    required this.isMale,
    required this.age,
});

  ress(){
    String res;
    if(result <= 18.5){
      res = 'Underweight';
    }else if(result > 18.5 && result < 24.9){
      res = 'Normal weight';
    }else if(result > 25 && result < 29.9){
      res = 'Overweight';
    }else {
      res = 'Obesity';
    }
    return res;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0A0E20),
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: Color(0xff0A0E20),
        centerTitle: true,
        title: Text(
            'BMI Result'
        ),
        elevation: 2,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 9),
            Text(
              'Result : ${result}',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 9),
            Text(
              'Categorie: ${ress()}',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
