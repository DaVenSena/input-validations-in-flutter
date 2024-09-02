import 'package:ejemplo_contruccion_soft/utils.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final _nameController = TextEditingController();
  final _idController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Ejemplo de validaciones'),
            const SizedBox(height: 20),
            TextField(
              controller: _nameController,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                hintText: "Ingrese su nombre",
                border: UnderlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              keyboardType: TextInputType.number,
              controller: _idController,
              decoration: const InputDecoration(
                hintText: "Ingrese su cédula",
                border: UnderlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text("Validar"),
              onPressed: () =>
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content:
                    Text(validate(_nameController.text, _idController.text)),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
