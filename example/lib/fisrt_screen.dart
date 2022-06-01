import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:route_navigator/navigate.dart';
import 'package:route_navigator_example/routes.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  String _ownerName = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fisrt Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Owner: $_ownerName"),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                NavigateWithName.to(context, Routes.secondScreen,
                    arguments: {'name': 'techdirr'}, result: (result) {
                  if (result.resultOk) {
                    log("Owner: ${result.data['ownerName']}");
                    setState(() {
                      _ownerName = result.data['ownerName'];
                    });
                  }
                });
              },
              child: const Text("Second Screen"),
            ),
          ],
        ),
      ),
    );
  }
}
