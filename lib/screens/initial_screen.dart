import 'package:flutter/material.dart';
import '../components/task.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenStateState();
}

class _InitialScreenStateState extends State<InitialScreen> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text('Tarefas'),
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: const Duration(milliseconds: 800),
        child: ListView(
          children: const [
            Task('Aprender Flutter no curso da Alura',
                'assets/images/flutter.png', 4),
            Task('Andar de bike',
                'assets/images/bike.png', 3),
            Task('Ir no Correios',
                'assets/images/correios.png', 1),
            Task('Ir no mercado',
                'assets/images/mercado.png', 1),
            Task('Caminhar',
                'assets/images/caminhar.png', 2),
            Task('Estudar',
                'assets/images/estudar.png', 4),
            Task('Cozinhar',
                'assets/images/cozinhar.png', 2),
            SizedBox(height: 80,)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}
