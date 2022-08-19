import 'package:flutter/material.dart';
import 'package:sciencenotes/pages/register_page.dart';
import 'package:sciencenotes/pages/enter_page.dart';

class RecoverPasswordPage extends StatefulWidget {
  const RecoverPasswordPage({Key? key}) : super(key: key);

  @override
  State<RecoverPasswordPage> createState() => _RecoverPasswordPageState();
}

class _RecoverPasswordPageState extends State<RecoverPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: const Color.fromARGB(255, 45, 16, 51),
        title: const Text(
          'Science Notes',
          style: TextStyle(fontSize: 24, color: Colors.white, fontFamily: 'Staatliches'),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 216, 194, 221),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text(
                  'Esqueceu a senha?',
                  style: TextStyle(
                    fontSize: 30,
                    color: Color.fromARGB(255, 45, 16, 51),
                    fontFamily: 'Abel-Regular',
                  ),
                ),
                const SizedBox(height: 32),
                const Text(
                  'Para recuperar seu acesso, preencha o campo com o e-mail cadastrado em sua conta e a sua nova senha.',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 20,
                      fontFamily: 'Abel-Regular',
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 42),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.email),
                    labelText: 'E-mail',
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Abel-Regular',
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.lock),
                    labelText: 'Senha',
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Abel-Regular',
                    ),
                  ),
                ),
                const SizedBox(height: 76),
                ElevatedButton(
                  onPressed: onPressedButton,
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 45, 16, 51),
                    minimumSize: (const Size(200, 40)),
                  ),
                  child: const Text(
                    'Recuperar acesso',
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontFamily: 'AmaticSC-Regular',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  void onPressedButton() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const EnterPage();
        },
      ),
          (Route<dynamic> route) => false,
    );
  }
}