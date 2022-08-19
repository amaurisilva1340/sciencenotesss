import 'package:flutter/material.dart';
import 'package:sciencenotes/pages/profile_page.dart';
import 'package:sciencenotes/pages/register_page.dart';
import 'package:sciencenotes/pages/home_page.dart';
import 'package:sciencenotes/pages/listPeople_page.dart';
import 'package:sciencenotes/pages/recoverPassword_page.dart';

class EnterPage extends StatefulWidget {
  const EnterPage({Key? key}) : super(key: key);

  @override
  State<EnterPage> createState() => _EnterPageState();
}

class _EnterPageState extends State<EnterPage> {

  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Image.asset('lib/assets/images/logo.png'),
                    TextFormField(
                      controller: userController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Campo usuário obrigatório';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        icon: Icon(Icons.account_box),
                        labelText: 'Usuário',
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Abel-Regular',
                        ),
                      ),
                    ),
                    TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: const InputDecoration(
                        icon: Icon(Icons.lock),
                        labelText: 'Senha',
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Abel-Regular',
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Campo senha obrigatório';
                        } 
                        return null;
                      },
                    ),
                    const SizedBox(height: 36),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          onPressed: onPressedButton,
                          style: ElevatedButton.styleFrom(
                            primary: const Color.fromARGB(255, 45, 16, 51),
                            minimumSize: (const Size(120, 40)),
                          ),
                          child: const Text(
                            'Logar',
                            style: TextStyle(
                              fontSize: 28,
                              color: Colors.white,
                              fontFamily: 'AmaticSC-Regular',
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextButton(
                          onPressed:(){
                            Navigator.push(
                              context, 
                              MaterialPageRoute(
                                builder: (context) {
                                  return const RecoverPasswordPage();
                                },
                              ),
                            );
                          },
                          child: const Text("Esqueci a minha senha",
                            style: TextStyle(
                              color: Color.fromARGB(186, 0, 0, 0),
                              fontSize: 15,
                              fontFamily: 'Abel-Regular',
                            ),
                          ),
                        ),
                      ]
                    ),
                    const SizedBox(height: 26),
                    TextButton(
                      onPressed:(){
                        Navigator.push(
                          context, 
                          MaterialPageRoute(
                            builder: (context) {
                              return const RegisterPage();
                            },
                          ),
                        );
                      },
                      child: const Text("Não tem uma conta? Cadastre-se.",
                        style: TextStyle(
                          color: Color.fromARGB(186, 0, 0, 0),
                          fontSize: 16,
                          fontFamily: 'Abel-Regular',
                        ),
                      ),
                    ),
                  ]
                ),
              ),
            ),
          ),
        ),
      ),  
    );
  }

  void onPressedButton() {

    if (_formKey.currentState!.validate()) {
      String userBD = "fjuliaaf";
      String passwordBD = "12345";

      String user = userController.text;
      String pwd = passwordController.text;

      if (userBD == user && passwordBD == pwd) {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const HomePage();
             },
          ),
          (Route<dynamic> route) => false,
        );
      } 
    } 
  }
}