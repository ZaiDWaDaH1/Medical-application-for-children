import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class Zaid1 extends StatefulWidget {
  const Zaid1({super.key});

  @override
  State<Zaid1> createState() => _Zaid1State();
}

class _Zaid1State extends State<Zaid1> {
  final Uri _url = Uri.parse(
      'https://www.facebook.com/profile.php?id=100065066623954&sk=about');
  final Uri _url1 = Uri.parse('tel:+963 986972288');

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  Future<void> _launchUrl1() async {
    if (!await launchUrl(_url1)) {
      throw Exception('Could not launch $_url1');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 33, 181, 195),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 300, top: 20),
              child: FloatingActionButton(
                  backgroundColor: const Color.fromARGB(255, 138, 255, 255),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  )),
            ),
            const SizedBox(
              height: 110,
            ),
            const CircleAvatar(
              radius: 90,
              backgroundImage: AssetImage('images/zaid.jpg'),
            ),
            const SizedBox(
              height: 30,
            ),
            Text('88'.tr,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 5,
            ),
            Text('110'.tr,
                style: TextStyle(
                    color: Colors.grey.shade200,
                    fontSize: 19,
                    fontWeight: FontWeight.bold)),
            const SizedBox(
                height: 20,
                width: 200,
                child: Divider(
                  color: Color.fromARGB(255, 173, 235, 246),
                )),
            const SizedBox(
              height: 30,
            ),
            Card(
                margin: const EdgeInsets.all(10),
                child: ListTile(
                  leading: const Icon(
                    Icons.facebook,
                    size: 35,
                    color: Color.fromARGB(255, 30, 195, 210),
                  ),
                  title: InkWell(
                    onTap: _launchUrl,
                    child: const Text(
                      '  Zaid Wa',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                )),
            Card(
              margin: const EdgeInsets.all(10),
              child: Padding(
                padding: const EdgeInsets.all(.0),
                child: ListTile(
                  leading: const Icon(
                    Icons.phone_android,
                    size: 35,
                    color: Color.fromARGB(255, 30, 195, 210),
                  ),
                  title: InkWell(
                    onTap: _launchUrl1,
                    child: const Text(
                      '0986972288',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
