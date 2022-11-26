import 'package:flutter/material.dart';
import 'package:primeiro_projeto/components/task.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text("Meus primeiros passos"),
      ),
      backgroundColor: Colors.blue[100],
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: const Duration(milliseconds: 800),
        child: ListView(
          children: const [
            Task("Aprender Flutter", "assets/images/dash.png", 3),
            Task("Andar de Bike", "assets/images/bike.webp", 2),
            Task("Meditar", "assets/images/meditar.jpeg", 5),
            Task("Ler", "assets/images/livro.jpg", 1),
            Task("Jogar", "assets/images/jogar.jpg", 2),
            SizedBox(height: 80),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.remove_red_eye),
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
      ),
    );
  }
}
