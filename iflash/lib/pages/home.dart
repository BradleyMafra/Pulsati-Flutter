import 'package:flutter/material.dart';
import 'package:iflash/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              height: 400,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                color: Color.fromARGB(255, 174, 60, 250),
              ),
              child: Image.asset('assets/img/Motboy.png'),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Text(
                  'Bring the Store to your \n Door',
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Row(
            children: const [
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Text(
                    'Pick your desired Fruits and Vegetable \n from Sthe apllication and we will deliver \n it to your door step',
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 131, 131, 131)),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              SizedBox(
                child: Container(
                  height: 12,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 200, 136, 243),
                      width: 18,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              SizedBox(
                child: Container(
                  height: 12,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 187, 185, 185),
                      width: 8,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              SizedBox(
                child: Container(
                  height: 12,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 187, 185, 185),
                      width: 8,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              const SizedBox(height: 80),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {Navigator.of(context).pushNamed(AppRoutes.itens);},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 192, 110, 247),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Get Started',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
