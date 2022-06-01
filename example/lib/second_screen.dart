import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:route_navigator/navigate.dart';
import 'package:route_navigator/result.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  Map? _data;
  String _name = "";

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _data = NavigateWithName.getArguments(context);
    Navigate.extrasData(
        context: context,
        data: _data,
        onSuccess: (data) {
          log("Name: ${data['name']}");
          _name = data['name'];
        },
        onFailure: () {
          NavigateWithName.finish(context);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_name),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                NavigateWithName.finish(context,
                    result:
                        Result(resultOk: true, data: {'ownerName': 'Ronak'}));
              },
              child: const Text("Back to First Screen"),
            ),
          ],
        ),
      ),
    );
  }
}
