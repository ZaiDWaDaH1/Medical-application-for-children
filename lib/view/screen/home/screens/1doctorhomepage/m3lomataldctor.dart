import 'package:flutter/material.dart';

class InfoDoctor1 extends StatefulWidget {
  const InfoDoctor1({super.key});

  @override
  State<InfoDoctor1> createState() => _InfoDoctor1State();
}

class _InfoDoctor1State extends State<InfoDoctor1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[300],
      appBar: AppBar(
        backgroundColor: Colors.cyan[600],
        title: const Text(
          'حسابي',
        ),
        centerTitle: true,
      ),
      body: const Column(children: [
        Padding(
          padding: EdgeInsets.only(right: 20, top: 40),
          child: Row(
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage(
                  'images/df.jpg',
                ),
              ),
              SizedBox(
                width: 40,
              ),
              Column(
                children: [
                  Text(
                    'الاسم',
                    style: TextStyle(fontSize: 22),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    'الاختصاص',
                    style: TextStyle(fontSize: 22),
                    textAlign: TextAlign.start,
                  ),
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}
