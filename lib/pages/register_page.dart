import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sciencenotes/domain/content.dart';
import 'package:sciencenotes/pages/enter_page.dart';
import 'package:sciencenotes/pages/home_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                Image.asset('lib/assets/images/logo.png', height: 300,),
                const SizedBox(height: 24),
                const Text(
                  "Criar conta",
                  style: TextStyle(
                    fontSize: 36,
                    color: Color.fromARGB(255, 45, 16, 51),
                    fontFamily: 'Staatliches',
                  ),
                ),
                const SizedBox(height: 36),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person_pin_rounded),
                    labelText: 'User',
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Abel-Regular',
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    labelText: 'Nome completo',
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Abel-Regular',
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  keyboardType: TextInputType.datetime,
                  decoration: const InputDecoration(
                    icon: Icon(CupertinoIcons.calendar),
                    labelText: 'Data de nascimento',
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Abel-Regular',
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    icon: Icon(CupertinoIcons.envelope_fill),
                    labelText: 'Email',
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Abel-Regular',
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    icon: Icon(CupertinoIcons.lock_shield_fill),
                    labelText: 'Senha',
                    labelStyle: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Abel-Regular',
                      ),
                    ),
                ),
                const SizedBox(height: 72),
                ElevatedButton(
                  onPressed: onPressedButton,
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 45, 16, 51),
                    minimumSize: (const Size(170, 40)),
                  ),
                  child: const Text(
                    'Cadastrar',
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