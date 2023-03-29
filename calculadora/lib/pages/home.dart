import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

class PageHome extends StatelessWidget {
  const PageHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      // Botão fica no canto esquerdo superior
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.chevron_left),
          ),
          title: const Text('Convert'),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.grid_view_rounded),
            ),
          ]),
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: 110,
                width: 100,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: const Color.fromARGB(202, 26, 25, 25),
                  child: const Align(
                    child: Text(
                      '€',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 110,
                width: 290,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: const Color.fromARGB(202, 26, 25, 25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'From',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w100,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(width: 80), // Espaçamento vertical
                          Text(
                            '€3600,00',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                height: 110,
                width: 100,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: const Color.fromARGB(255, 245, 120, 18),
                  child: const Align(
                    child: Text(
                      '\$',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 110,
                width: 290,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: const Color.fromARGB(255, 245, 120, 18),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'To',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(width: 80), // Espaçamento vertical
                          Text(
                            '\$3631.55',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Primeiro botão
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    backgroundColor: const Color.fromARGB(202, 26, 25, 25),
                    minimumSize: const Size(95, 95),
                  ),
                  child: const Text(
                    '1',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                const SizedBox(width: 2), //Espaçamento horizontal
                //Segundo botão
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    backgroundColor: const Color.fromARGB(202, 26, 25, 25),
                    minimumSize: const Size(95, 95),
                  ),
                  child: const Text(
                    '2',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                const SizedBox(width: 2), //Espaçamento horizontal
                //Segundo botão
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    backgroundColor: const Color.fromARGB(202, 26, 25, 25),
                    minimumSize: const Size(95, 95),
                  ),
                  child: const Text(
                    '3',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                const SizedBox(width: 2), //Espaçamento horizontal
                //Terceiro botão (botão de apagar)
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    backgroundColor: const Color.fromARGB(202, 26, 25, 25),
                    minimumSize: const Size(95, 95),
                  ),
                  child: const Text(
                    'C',
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Segunda linha de botões
          Container(
            margin: const EdgeInsets.only(top: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 1),
                //Primeiro botão
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    backgroundColor: const Color.fromARGB(202, 26, 25, 25),
                    minimumSize: const Size(95, 95),
                  ),
                  child: const Text(
                    '4',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                const SizedBox(width: 2), //Espaçamento horizontal
                //Segundo botão
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    backgroundColor: const Color.fromARGB(202, 26, 25, 25),
                    minimumSize: const Size(95, 95),
                  ),
                  child: const Text(
                    '5',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                const SizedBox(width: 2), //Espaçamento horizontal
                //Segundo botão
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    backgroundColor: const Color.fromARGB(202, 26, 25, 25),
                    minimumSize: const Size(95, 95),
                  ),
                  child: const Text(
                    '6',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                const SizedBox(width: 2), //Espaçamento horizontal
                //Terceiro botão (botão de apagar)
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    backgroundColor: const Color.fromARGB(202, 26, 25, 25),
                    minimumSize: const Size(95, 95),
                  ),
                  child: const Text(
                    '-',
                    style: TextStyle(
                      fontSize: 60,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 1),
                //Primeiro botão
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    backgroundColor: const Color.fromARGB(202, 26, 25, 25),
                    minimumSize: const Size(95, 95),
                  ),
                  child: const Text(
                    '7',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                const SizedBox(width: 2), //Espaçamento horizontal
                //Segundo botão
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    backgroundColor: const Color.fromARGB(202, 26, 25, 25),
                    minimumSize: const Size(95, 95),
                  ),
                  child: const Text(
                    '8',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                const SizedBox(width: 2), //Espaçamento horizontal
                //Segundo botão
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    backgroundColor: const Color.fromARGB(202, 26, 25, 25),
                    minimumSize: const Size(95, 95),
                  ),
                  child: const Text(
                    '9',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                const SizedBox(width: 2), //Espaçamento horizontal
                //Terceiro botão (botão de apagar)
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    backgroundColor: const Color.fromARGB(202, 26, 25, 25),
                    minimumSize: const Size(95, 95),
                  ),
                  child: const Text(
                    '+',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 1),
                //Primeiro botão
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    backgroundColor: const Color.fromARGB(202, 26, 25, 25),
                    minimumSize: const Size(190, 90),
                  ),
                  child: const Text(
                    '0',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                const SizedBox(width: 2), //Espaçamento horizontal
                //Segundo botão
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    backgroundColor: const Color.fromARGB(202, 26, 25, 25),
                    minimumSize: const Size(95, 95),
                  ),
                  child: const Text(
                    '.',
                    style: TextStyle(
                      fontSize: 80,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                const SizedBox(width: 2), //Espaçamento horizontal
                //Terceiro botão (botão de apagar)
                SizedBox(
                  height: 95,
                  width: 95,
                  child: ElevatedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor:const Color.fromARGB(255, 245, 120, 18),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {},
                    child: IconButton(
                      icon: const Icon(Icons.arrow_outward_rounded),
                      color: Colors.white,
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 26, 25, 25),
        items: [
          const BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
              backgroundColor: Color.fromARGB(255, 12, 12, 12)),
          const BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              height: 45,
              width: 45,
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                border: const GradientBoxBorder(
                  gradient: LinearGradient(
                    colors: [
                      Colors.yellow,
                      Colors.green,
                      Colors.blue,
                      Colors.purple,
                      Colors.orange,
                    ],
                  ),
                ),
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Icon(Icons.arrow_outward_outlined),
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.crop_5_4),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.music_note_rounded),
            label: '',
          ),
        ],
      ),
    );
  }
}
