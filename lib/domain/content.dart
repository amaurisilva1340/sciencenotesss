import 'package:flutter/material.dart';
import 'package:sciencenotes/domain/question.dart';

class Content {
  final String image;
  final String title;
  final String resume;
  final String aplicacao;
  final String equacao;
  final Color colorButton;
  final Color colorContent;
  final List<Question> question;

  Content({
    required this.image,
    required this.title,
    required this.resume,
    required this.aplicacao,
    required this.equacao,
    required this.colorButton,
    required this.colorContent,
    required this.question,
  });
}
