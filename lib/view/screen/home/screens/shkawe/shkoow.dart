// ignore_for_file: avoid_print, library_private_types_in_public_api

import 'package:comment_box/comment/comment.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestMe extends StatefulWidget {
  const TestMe({super.key});

  @override
  _TestMeState createState() => _TestMeState();
}

class _TestMeState extends State<TestMe> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController commentController = TextEditingController();
  List filedata = [];

  Widget commentChild(data) {
    return ListView(
      children: [
        for (var i = 0; i < data.length; i++)
          Padding(
            padding: const EdgeInsets.fromLTRB(2.0, 8.0, 2.0, 0.0),
            child: ListTile(
              leading: GestureDetector(
                onTap: () async {
                  // Display the image in large form.
                  print("Comment Clicked");
                },
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: CircleAvatar(
                      radius: 50,
                      backgroundImage: CommentBox.commentImageParser(
                          imageURLorPath: data[i]['pic'])),
                ),
              ),
              title: Text(
                data[i]['name'],
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(data[i]['message']),
              trailing:
                  Text(data[i]['date'], style: const TextStyle(fontSize: 10)),
            ),
          )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[300],
      appBar: AppBar(
        title: Text("96".tr),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 97, 183, 184),
      ),
      body: Container(
        padding: const EdgeInsets.all(0),
        child: CommentBox(
          userImage: CommentBox.commentImageParser(
              imageURLorPath: "assets/images/zaid.jpg"),
          labelText: '94'.tr,
          errorText: "95".tr,
          withBorder: false,
          sendButtonMethod: () {
            if (formKey.currentState!.validate()) {
              print(commentController.text);
              setState(() {
                var value = {
                  'name': '97'.tr,
                  'pic': "assets/images/zaid.jpg",
                  'message': commentController.text,
                  'date': '2021-01-01 12:00:00'
                };
                filedata.insert(0, value);
              });
              commentController.clear();
              FocusScope.of(context).unfocus();
            } else {
              print("Not validated");
            }
          },
          formKey: formKey,
          commentController: commentController,
          backgroundColor: const Color.fromARGB(255, 62, 161, 172),
          textColor: Colors.white,
          sendWidget:
              const Icon(Icons.send_sharp, size: 30, color: Colors.white),
          child: commentChild(filedata),
        ),
      ),
    );
  }
}
