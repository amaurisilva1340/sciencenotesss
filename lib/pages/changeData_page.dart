import 'package:flutter/material.dart';
import 'package:sciencenotes/pages/register_page.dart';
import 'package:sciencenotes/pages/enter_page.dart';
import 'package:sciencenotes/pages/profile_page.dart';


class ChangeDataPage extends StatefulWidget{
  const ChangeDataPage({Key? key}) : super(key: key);
  
  @override
  State<ChangeDataPage> createState() => _ChangeDataPage();
}

class _ChangeDataPage extends State<ChangeDataPage>{

  TextEditingController userController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override 
  Widget build(BuildContext context){
      return SafeArea(
        child: Scaffold (
          appBar: AppBar(
            centerTitle:false,
            backgroundColor: const Color.fromARGB(255, 45, 16, 51),
            title: const Text(
              'Science Notes',
              style: TextStyle(fontSize: 24, color:Colors.white, fontFamily:'Staatliches'),

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
                          const Text(
                            'Deseja alterar os dados?',
                            style: TextStyle(
                              fontSize: 30,
                              color:Color.fromARGB(255, 45, 16, 51),
                              fontFamily: 'Abel-Regular',
                            ),
                          ),
                          const SizedBox(height: 32),
                          const Text(
                            'Para alterar os dados preencha os campos com os novos dados',
                            style: TextStyle(
                              color: Colors.black38,
                              fontSize: 22,
                              fontFamily: 'Abel-Regular',
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 42),
                          TextFormField(
                            controller: nameController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Campo nome obrigat??rio';
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              icon: Icon(Icons.person),
                              labelText: 'Nome',
                            ),
                          ),
                          const SizedBox(height: 20),
                          TextFormField(
                            controller: userController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Campo usu??rio obrigat??rio';
                              }

                              return null;
                            },
                            decoration: const InputDecoration(
                              icon: Icon(Icons.person_pin_rounded),
                              labelText: 'User',
                            ),
                          ),
                          const SizedBox(height: 32),
                          TextFormField(
                            controller: emailController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Campo email obrigat??rio';
                              }

                              return null;
                            },
                            decoration: const InputDecoration(
                              icon: Icon(Icons.email_outlined),
                              labelText: 'Email',
                            ),
                          ),
                          const SizedBox(height: 40),
                          TextFormField(
                            controller: ageController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Campo idade obrigat??rio';
                              }

                              return null;
                            },
                            decoration: const InputDecoration(
                              icon: Icon(Icons.restore),
                              labelText: 'Idade',
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
                              'SALVAR ALTERA????ES',
                              style: TextStyle(
                                fontSize: 28,
                                color: Colors.white,
                                fontFamily: 'AmaticSC-Regular',
                              ),
                            ),
                          ),
                        ],
                      )
                    )
                  ),
            ),
          ),
        ),
      );
  }

  void onPressedButton() {
    if (_formKey.currentState!.validate()) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return const ProfilePage();
          },
        ),
      );
    }
  }
}
