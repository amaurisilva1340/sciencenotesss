import 'package:flutter/material.dart';
import 'package:sciencenotes/domain/content.dart';

class ResumePage extends StatefulWidget {
  final Content content;

  const ResumePage({
    Key? key,
    required this.content,
  }) : super(key: key);

  @override
  State<ResumePage> createState() => _ResumePageState();
}

class _ResumePageState extends State<ResumePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 216, 194, 225),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            Column(
              children: [
                buildText(text: widget.content.resume.paragraph1),
                const SizedBox(height: 8,),
                buildText(text: widget.content.resume.paragraph2),
                const SizedBox(height: 8,),
                Center(
                  child: SizedBox(
                    height: 400,
                    width: 400,
                    child: Image.network(
                      widget.content.resume.image,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                buildText(text: widget.content.resume.paragraph3),
                const SizedBox(height: 8,),
                buildText(text: widget.content.resume.paragraph4),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Text buildText({
    required String text,
  }) {
    return Text(
      text,
      style: const TextStyle(
        fontFamily: 'Abel-Regular',
        fontSize: 18,
      ),
      textAlign: TextAlign.justify,
    );
  }
}
