import 'package:flutter/material.dart';
import 'package:sciencenotes/pages/enter_page.dart';
import 'package:sciencenotes/pages/home_page.dart';
import 'package:sciencenotes/pages/changeData_page.dart';
import 'package:sciencenotes/data/BDpeople.dart';
import 'package:sciencenotes/domain/people.dart';
import 'package:sciencenotes/widgets/list_profile.dart';

class ProfilePage extends StatefulWidget{
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}
class _ProfilePageState extends State<ProfilePage>{
  Future<List<People>> list = BD.getPeople();
  @override
  Widget build(BuildContext context){
    return Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Container(
              child: Column(
                children: [
                  //buildListView(),
                  Image.asset('lib/assets/images/logo.png'),
                  ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 45, 16, 51),
                      minimumSize: (const Size(120, 40)),
                    ),
                    child: const Text(
                      'VER MEUS DADOS',
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                        fontFamily: 'AmaticSC-Regular',
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: buildListView,
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 45, 16, 51),
                      minimumSize: (const Size(120, 40)),
                    ),
                    child: const Text(
                      'ALTERAR DADOS CADASTRAIS',
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                        fontFamily: 'AmaticSC-Regular',
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 45, 16, 51),
                      minimumSize: (const Size(120, 40)),
                    ),
                    child: const Text(
                      'SOBRE NÓS',
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                        fontFamily: 'AmaticSC-Regular',
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 45, 16, 51),
                      minimumSize: (const Size(120, 40)),
                    ),
                    child: const Text(
                      'LISTA DE USUÁRIOS',
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
          )
        ),
    );
  }
  buildListView(){
    return FutureBuilder<List<People>>(
        future: list,
        builder: (context, snapshot){
          if(snapshot.hasData){
            List<People> list = snapshot.data ?? [];
            return ListView.builder(
              itemCount: list.length,
              itemBuilder: (BuildContext context, int index){
                return ListProfile(people: list[index]);
              },
            );
          }
          return const Center(child: CircularProgressIndicator());
        }
    );
  }
}