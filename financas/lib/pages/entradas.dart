// ignore_for_file: unnecessary_string_interpolations

import 'package:flutter/material.dart';

String nome = '';
String valor = '';
String data = '';

class EntradasPage extends StatelessWidget {
  const EntradasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 176, 13, 252),
        title: TextButton(
          onPressed: () {},
          child: const Text(
            'Entradas',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              const SizedBox(width: 100),
              TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => Dialog(
                      child: SizedBox(
                        height: 400,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 30, top: 40, right: 30),
                              child: TextField(
                                onChanged: (String value) {
                                  nome = value;
                                },
                                decoration: const InputDecoration(
                                  hintText: 'Nome',
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30, top: 40, right: 30),
                              child: TextField(
                                onChanged: (String value) {
                                  valor = value;
                                },
                                decoration: const InputDecoration(
                                  hintText: 'Valor',
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30, top: 40, right: 30),
                              child: TextField(
                                onChanged: (String value) {
                                  data = value;
                                },
                                decoration: const InputDecoration(
                                  hintText: 'Data',
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 60),
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('Salvar'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                child: const Text(
                  '+ Nova entrada',
                  style: TextStyle(
                    color: Color.fromARGB(255, 182, 252, 219),
                    fontSize: 26,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  const SizedBox(height: 20),
                  Text(
                    '$nome',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    '$valor',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    '$data',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 176, 13, 252),
    );
  }
}
