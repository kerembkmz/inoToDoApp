import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'mindDump.dart';
import 'nonUrgentNonImportant.dart';
import 'urgentImportant.dart';
import 'urgentNonImportant.dart';

class nonUrgentImportant extends StatelessWidget {
  const nonUrgentImportant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'nonUrgentImportant Page',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MynonUrgentImportantPage(title: 'Notable'),
    );
  }
}

class MynonUrgentImportantPage extends StatefulWidget {
  const MynonUrgentImportantPage({Key? key, required this.title})
      : super(key: key);

  final String title;

  @override
  State<MynonUrgentImportantPage> createState() =>
      _MynonUrgentImportantPageState();
}

class _MynonUrgentImportantPageState extends State<MynonUrgentImportantPage> {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Drawer(
        backgroundColor: Colors.white70,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.orangeAccent),
              child: Text(
                'Good Morning Kerem',
              ),
            ),
            ListTile(
              title: const Text("MindDump"),
              leading: Icon(
                Icons.book,
                color: Colors.lightGreen,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.fade,
                      child: mindDump(),
                    ));
              },
            ),
            ListTile(
              title: const Text("Red Label"),
              leading: Icon(
                Icons.label,
                color: Colors.red,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.fade,
                      child: urgentImportant(),
                    ));
              },
            ),
            ListTile(
                title: const Text("Orange Label"),
                leading: Icon(
                  Icons.label,
                  color: Colors.orange,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        child: urgentNonImportant(),
                      ));
                }),
            ListTile(
              title: const Text("Blue Label"),
              leading: Icon(
                Icons.label,
                color: Colors.blue,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.fade,
                      child: nonUrgentImportant(),
                    ));
              },
            ),
            ListTile(
              title: const Text("Black Label"),
              leading: Icon(
                Icons.label,
                color: Colors.black,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.fade,
                      child: nonUrgentNonImportant(),
                    ));
              },
            ),
          ],
        ),
      ),
      Expanded(
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(
                    color: Colors.white60,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                margin: EdgeInsets.fromLTRB(20, 30, 170, 0),
                child: const Text(
                  'Non Urgent Important Page',
                ),
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
