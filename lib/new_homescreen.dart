import 'package:flutter/material.dart';

class NewHomescreen extends StatelessWidget {
  const NewHomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController namedController = TextEditingController();
    var amount = 1000;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('New Home Screen'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('New Home Screen'),
            Text('Welcome to the new home screen!'),
            Text('New Home Screen'),
            InkWell(
              onTap: () {
                print('ink pressed');
              },
              child: Text('Welcome to the new home screen!'),
            ),
            GestureDetector(
              onTap: () {
                print('pressed');
              },
              child: Text(
                amount.toString(),
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
            ),

            SizedBox(height: 50),

            Row(
              children: [
                Expanded(child: Text('New Home Screen')),
                Expanded(child: Text('Welcome to the new home screen!')),
                Expanded(child: Text('New Home Screen')),
                Expanded(child: Text('Welcome to the new home screen!')),
              ],
            ),
            Container(
              padding: EdgeInsets.all(20.00),
              margin: EdgeInsets.all(20.00),
              color: Colors.amber,
              width: 100.00,
              height: 100.00,
              child: Text("Happy Day"),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: TextField(
                controller: namedController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your name',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                debugPrint('Name: ${namedController.text}');
              },
              child: Text('submit'),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Stack(
                children: [
                  Container(width: 500, height: 150, color: Colors.amber),
                  Positioned(
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Column(
                              children: [
                                Text('Savings Account'),
                                SizedBox(height: 20.0),
                                Text('.Active'),
                              ],
                            ),
                            Text('**********',),
                            Icon(Icons.remove_red_eye),
                          ],
                        ),
                        Column(
                          children: [
                            Text('1234567890'),
                            Icon(Icons.arrow_drop_down_sharp),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
