// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:sciencenotes/pages/home_page.dart';
import 'package:sciencenotes/pages/resume_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sciencenotes/pages/videos_page.dart';
import 'package:sciencenotes/pages/questions_page.dart';
import 'package:sciencenotes/pages/profile_page.dart';
import 'package:sciencenotes/domain/content.dart';

class SubjectPage extends StatefulWidget {
  final Content content;

  const SubjectPage({
    Key? key,
    required this.content,
  }) : super(key: key);

  @override
  State<SubjectPage> createState() => _SubjectPageState();
}

class _SubjectPageState extends State<SubjectPage> {
  int selectedIndex = 0;
  @override

  Widget build(BuildContext context) {
    List<Widget> pages = [
      const ResumePage(),
      const VideosPage(),
      QuestionsPage(conteudo: widget.content),
      const ProfilePage(),
    ];

    return  Scaffold(
      appBar: AppBar(
        title: Text(
          selectedIndex==3 ? 'Science Notes' : widget.content.title,
          style: const TextStyle(
              fontSize: 24, color: Colors.white,  fontFamily: 'Staatliches'),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: onPressedButton,
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 45, 16, 51),
      ),
      backgroundColor: const Color.fromARGB(255, 216, 194, 221),
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: directionPage,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.deepPurple.shade50,
        selectedItemColor: Colors.deepPurple.shade200,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.book_solid), label: 'Resumos',),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.videocam_circle), label: 'Vídeos',),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.pencil_circle), label: 'Questões',),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person), label: 'Perfil',),
        ],
      ),
    );
  }

  void directionPage(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  void onPressedButton() {
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
