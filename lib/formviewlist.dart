import 'package:flutter/material.dart';

class FormViewList extends StatelessWidget {
  const FormViewList({
    Key? key,
    this.dataname = "",
    this.datatype = "",
  }) : super(key: key);
  final String dataname;
  final String datatype;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(
        '$datatype : ',
        style: const TextStyle(
          color: Colors.black,
          fontSize: 18,
        ),
      ),
      Text(
        dataname,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 18,
        ),
      )
    ]);
  }
}
