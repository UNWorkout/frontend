import 'package:flutter/material.dart';

class RoutineView extends StatelessWidget {
  final int numberOfCards = 4;

  const RoutineView({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    // Crea una lista de cartas basada en el número especificado.
    List<Widget> cards = List.generate(
      numberOfCards,
          (index) => Card(
        child: Column(
          children: [
            ListTile(
              title: Text('Día ${index + 1}'), // Mantén el título original
            ),
            const Text('Ejercicios'),
            const Text('Duracion maxima'),
            const Text('Hora de inicio'),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('Iniciar'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
              ],
            ),
            // Agrega más Text widgets según sea necesario
          ],
        ),
      ),
    );

    return ListView(
      children: cards,
    );
  }
}