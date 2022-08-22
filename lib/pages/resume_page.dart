import 'package:flutter/material.dart';
import 'package:highlight_text/highlight_text.dart';
import 'package:sciencenotes/pages/search_page.dart';

class ResumePage extends StatefulWidget {
  const ResumePage({Key? key}) : super(key: key);

  @override
  State<ResumePage> createState() => _ResumePageState();
}

class _ResumePageState extends State<ResumePage> {
  String text = "O aplicativo Sciencenotes foi feito para ajudar pessoas com dificudade nos campos da ciência";

  get children => null;
  
  makeDialog(BuildContext context, String text){
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text(text),
          );
        }
    );
  }

  Map<String, HighlightedWord> makewords(context) {
    return {
      "Sciencenotes ": HighlightedWord(
        onTap: () {
          makeDialog(context, text);
        },
        textStyle: const TextStyle(
          color: Colors.purple,
        ),
      ),
    };
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
      body: Center(
        child:
        children[
        ElevatedButton(
        onPressed: onPressedButton,
        style: ElevatedButton.styleFrom(
          primary: const Color.fromARGB(255, 45, 16, 51),
          minimumSize: (const Size(120, 40)),
        ), child: null,
      ),
        TextHighlight(
          text: text,
          words: makewords(context),
          textStyle: const TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 16,
            color: Colors.black,
              ),
            ),
          ]
      ),
    );
  }
}
