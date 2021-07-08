import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ibm_calculator/modules/bmi_result/mbi_result_screen.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen> {

  bool isMale = true;
  double height = 120;
  int weight = 40;
  int age = 18;

  @override
  Widget build(BuildContext context){


    return Scaffold(
      backgroundColor: Color(0xff0A0E20),
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: Color(0xff0A0E20),
        centerTitle: true,
        title: Text(
          'BMI Calculator'
        ),
        elevation: 10,
      ),
      body: Column(

        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male,
                              size: 78,
                              color: Colors.white,
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Male',
                              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: isMale ? Color(0xffF50D56) : Color(0xff111327),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female,
                              size: 78,
                              color: Colors.white,
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Female',
                              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: !isMale ? Color(0xffF50D56) : Color(0xff111327),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff111327)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Height',
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text('${height.round()}',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 44,color: Colors.white),
                        ),
                        Text('CM',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,color: Colors.white),
                        ),
                      ],
                    ),
                    Slider(
                      activeColor: Colors.white,
                        inactiveColor: Color(0xff7E7F89),
                        value: height,
                        max: 220,
                        min: 80,
                        onChanged: (value){
                          setState(() {
                            height = value;
                          });
                        },
                    )

                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff111327),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal,color: Colors.grey),
                          ),
                          SizedBox(height: 3),
                          Text(
                            '${weight}',
                            style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold,color: Colors.white),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    weight--;
                                  });
                                },
                                backgroundColor: Color(0xff4C4F5D),
                                mini: true,
                                child: Icon(
                                  Icons.remove,
                                ),
                              ),
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    weight++;
                                  });
                                },
                                backgroundColor: Color(0xff4C4F5D),
                                mini: true,
                                child: Icon(
                                    Icons.add
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff111327),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal,color: Colors.grey),
                          ),
                          SizedBox(height: 3),
                          Text(
                            '${age}',
                            style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold,color: Colors.white),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    age--;
                                  });
                                },
                                backgroundColor: Color(0xff4C4F5D),
                                mini: true,
                                child: Icon(
                                  Icons.remove,
                                ),
                              ),
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    age++;
                                  });
                                },
                                backgroundColor: Color(0xff4C4F5D),
                                mini: true,
                                child: Icon(
                                    Icons.add
                                ),
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
          ),
          Container(
            height: 64,
            width: double.infinity,
            color: Color(0xffF50D56),
            child: MaterialButton(
                onPressed: (){
                  double result = weight / pow(height / 100, 2);
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
                  print(res);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BMIResultScreen(
                            age: age,
                            result: result.round(),
                            isMale: isMale,
                          ),
                      ),
                  );
                },
              child: Text(
                'Calculate',
                style: TextStyle(fontSize: 18, color: Colors.white),)

              ,

            ),
          ),
        ],
      ),
    );
  }
}
