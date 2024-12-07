import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int teamApoints = 0;

  int teamBpoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('points counter'),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text(
                      'Team A',
                      style: TextStyle(fontSize: 32),
                    ),
                    Text(
                      '$teamApoints',
                      style: const TextStyle(fontSize: 150),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(150, 50)),
                          onPressed: () {
                            setState(() {
                               teamApoints += 1;
                            });
                           
                          },
                          child: const Text(
                            'Add 1 point',
                            style: TextStyle(fontSize: 22, color: Colors.black),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(150, 50)),
                          onPressed: () {
                            setState(() {
                               teamApoints += 2;
                            });
                           
                          },
                          child: const Text(
                            'Add 2 point',
                            style: TextStyle(fontSize: 22, color: Colors.black),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(150, 50)),
                          onPressed: () {
                            setState(() {
                               teamApoints += 3;
                            });
                           
                          },
                          child: const Text(
                            'Add 3 point',
                            style: TextStyle(fontSize: 22, color: Colors.black),
                          )),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 450,
                  child: VerticalDivider(
                    indent: 20,
                    width: 2,
                    thickness: 2,
                    color: Colors.grey,
                  ),
                ),
                Column(
                  children: [
                    const Text( 
                      'Team B',
                      style: TextStyle(fontSize: 32),
                    ),
                    Text(
                      '$teamBpoints',
                      style: const TextStyle(fontSize: 150),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(150, 50)),
                          onPressed: () {
                            setState(() {
                              teamBpoints += 1;
                            });
                            
                          },
                          child: const Text(
                            'Add 1 point',
                            style: TextStyle(fontSize: 22, color: Colors.black),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(150, 50)),
                          onPressed: () {
                            setState(() {
                              teamBpoints += 2;
                            });
                            
                          },
                          child: const Text(
                            'Add 2 point',
                            style: TextStyle(fontSize: 22, color: Colors.black),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(150, 50)),
                          onPressed: () {
                            setState(() {
                              teamBpoints += 3;
                            });
                            
                          },
                          child: const Text(
                            'Add 3 point',
                            style: TextStyle(fontSize: 22, color: Colors.black),
                          )),
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(
              flex: 1,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                   teamApoints = 0;
                teamBpoints = 0;
                });
               
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
              child: const Text(
                'Reset',
                style: TextStyle(color: Colors.black),
              ),
            ),
            const Spacer(
              flex: 2,
            )
          ],
        ),
      ),
    );
  }
}

