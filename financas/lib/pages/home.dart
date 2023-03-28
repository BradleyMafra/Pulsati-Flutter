import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  get nameController => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 176, 13, 252),
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 176, 13, 252),
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 158, 6, 204),
              ),
              child: Center(
                child: Text(
                  'Finanças',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w300,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(height: 200),
            ListTile(
              title: const Text(
                'Home',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                'Saídas',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                'Entradas',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                'Saldo Mensal',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                'Sair',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 30),
          Row(
            children: [
              Column(
                children: [
                  Row(children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 130),
                      child: Text(
                        'Total balance',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          
                          color: Color.fromARGB(255, 176, 13, 252),
                        ),
                      ),
                    ),
                  ]),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 130),
                    child: Row(children: const [
                      Text(
                        '\$12,698',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w800,
                          color: Color.fromARGB(255, 176, 13, 252),
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 30),
          SizedBox(
            height: 600,
            child: Card(
              // Coloque sua cor abaixo para aplicar ao card
              child: Column(
                children: [
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          'Statistics',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: null,
                        child: Padding(
                          padding: EdgeInsets.only(left: 100),
                          child: Text(
                            'See all',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 350,
                    height: 100,
                    child: Card(
                      color:const Color.fromARGB(255, 248, 57, 137),
                      child: Column(
                        children: [
                          const SizedBox(height: 14),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:const [
                              Text(
                                'Income',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:const [
                              Text(
                                '\$22,821',
                                style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
