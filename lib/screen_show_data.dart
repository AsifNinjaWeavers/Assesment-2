import 'package:assesment_3/formviewlist.dart';
import 'package:assesment_3/simple_data_preferences.dart';
import 'package:flutter/material.dart';

class ScreenShowData extends StatefulWidget {
  const ScreenShowData({super.key});

  @override
  State<ScreenShowData> createState() => _ScreenShowDataState();
}

class _ScreenShowDataState extends State<ScreenShowData> {
  String name = "";
  String age = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('View Data')),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          height: 150,
          width: 500,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: Color(0xffDDDDDD),
                blurRadius: 15.0,
                spreadRadius: 2.0,
                offset: Offset(0.0, 0.0),
              )
            ],
          ),
          child: Column(
            children: [
              FormViewList(dataname: name, datatype: 'Name'),
              FormViewList(dataname: age, datatype: 'Age'),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      name = SimpleDataPreference.getname()!;
                      age = SimpleDataPreference.getage()!;
                    });
                  },
                  child: const Text(
                    "View Data",
                    style: TextStyle(color: Colors.blue),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
