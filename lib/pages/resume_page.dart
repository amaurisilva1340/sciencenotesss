import 'package:flutter/material.dart';
import 'package:sciencenotes/pages/search_page.dart';

class ResumePage extends StatefulWidget {
  const ResumePage({Key? key}) : super(key: key);

  @override
  State<ResumePage> createState() => _ResumePageState();
}

class _ResumePageState extends State<ResumePage> {
  String text = "Qualquer coisa";

  makewords (context) {
    return {}
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff2d1033ff),
        title: const Text(
            'Resumo',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: SearchPage(),
              );
            },
            icon: const Icon(Icons.search_rounded),),
        ],
      ),
    );
  }
}
