import 'package:assesment_3/add_data_page.dart';
import 'package:assesment_3/screen_show_data.dart';
import 'package:assesment_3/simple_data_preferences.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SimpleDataPreference.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const ScreenShowData(),
                      ));
                },
                child: const Text(
                  "View",
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
        body: const Padding(
          padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
          child: AddPage(),
        ));
  }
}
