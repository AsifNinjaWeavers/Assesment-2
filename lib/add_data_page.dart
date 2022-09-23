import 'package:assesment_3/simple_data_preferences.dart';
import 'package:flutter/material.dart';

import 'forminputlist.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          height: 200,
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
              FormInputList(
                nameController: nameController,
                formName: "Name",
                formNameHint: "Enter Your Name",
                textInputType: TextInputType.name,
              ),
              FormInputList(
                nameController: ageController,
                formName: "Age",
                formNameHint: "Enter Your Age",
                textInputType: TextInputType.number,
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () async {
                  await SimpleDataPreference.setname(
                      nameController.text.toString());
                  await SimpleDataPreference.setage(
                      ageController.text.toString());
                  // print(SimpleDataPreference.getname());
                  // print(SimpleDataPreference.getage());
                },
                child: const Text('Save'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
