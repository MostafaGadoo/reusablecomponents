import 'package:flutter/material.dart';

class counter_screen extends StatefulWidget {

  @override
  _counter_screenState createState() => _counter_screenState();
}

class _counter_screenState extends State<counter_screen> {
  int counter = 0;

  @override
  void initState()
  {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Counter',
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: (){
                  setState(() {
                    counter--;
                    print(counter);
                  });

                },
                child: Text(
                  'MINUS'.toUpperCase(),
                )),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Text(
                '$counter',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            TextButton(

                onPressed: (){
                  setState(() {
                    counter++;
                    print(counter);
                  });

                },
                child: Text(
                  'Plus'.toUpperCase(),
                )),
          ],
        ),
      ),
    );
  }
}