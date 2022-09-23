import 'package:flutter/material.dart';

class FormInputList extends StatelessWidget {
  const FormInputList({
    Key? key,
    required this.nameController,
    required this.formName,
    required this.formNameHint,
    required this.textInputType,
  }) : super(key: key);

  final TextEditingController nameController;
  final String formName;
  final String formNameHint;
  final TextInputType textInputType;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$formName : ',
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
        SizedBox(
          width: 250,
          child: TextFormField(
            keyboardType: textInputType,
            controller: nameController,
            decoration: InputDecoration(
              hintText: formNameHint,
            ),
          ),
        )
      ],
    );
  }
}
