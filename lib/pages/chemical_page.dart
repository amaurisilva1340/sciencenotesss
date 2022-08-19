
import 'package:flutter/material.dart';
import 'package:sciencenotes/data/DBcontent.dart';
import 'package:sciencenotes/widgets/content_card.dart';
import 'package:sciencenotes/domain/content.dart';

class ChemicalPage extends StatefulWidget {
  const ChemicalPage({Key? key}) : super(key: key);

  @override
  State<ChemicalPage> createState() => _ChemicalPageState();
}

class _ChemicalPageState extends State<ChemicalPage> {

  Future<List<Content>> list = DBcontent.getListChemical();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 45, 16, 51),
        centerTitle: false,
        title: const Text(
          'Química',
          style: TextStyle(fontSize: 24,color: Colors.white,  fontFamily: 'Staatliches'),
        ),
      ),
      backgroundColor: Colors.deepPurple.shade50,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.deepPurple.shade50,
          child: ListView(
            children: [
              buildListView(),
            ],
          ),
        ),
      ),
    );
  }

  buildListView() {
    return FutureBuilder<List<Content>>(
      future: list,
      builder: (context, snapshot) {

        if(snapshot.hasData) {
          // ?? -> Verificar ser o conteudo de snapshot.data é nulo
          List<Content> list = snapshot.data ?? [];

          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: list.length,
            itemBuilder: (BuildContext context, int index) {
              return ContentCard(content: list[index]);
            },
          );
        }

        return const Center(child: CircularProgressIndicator());

      },
    );
  }
}
