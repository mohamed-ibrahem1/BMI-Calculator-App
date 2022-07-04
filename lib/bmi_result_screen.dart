import 'package:flutter/material.dart';

class BmiResaltScreen extends StatelessWidget {
  final int result;
  final bool isMale;

  final String val;

  const BmiResaltScreen(
      {required this.result, required this.isMale, required this.val});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(34, 40, 49, 1.0),
        elevation: 0.0,
        title: Text('BMI Result'),
      ),
      body: Container(
        color: Color.fromRGBO(34, 40, 49, 1.0),
        child: Center(
          child: Container(
            width: 280,
            height: 190,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: const Color.fromRGBO(0, 173, 181, 1),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Gender : ${isMale ? 'Male' : 'Female'}",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Divider(
                  thickness: 2.0,
                  color: Colors.black45,
                ),
                Text(
                  'Resalt : $result',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Divider(
                  thickness: 2.0,
                  color: Colors.black45,
                ),
                Text(
                  'Shape : $val',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
