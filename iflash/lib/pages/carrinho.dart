import 'package:flutter/material.dart';

class PageCarrinho extends StatefulWidget {
  const PageCarrinho({super.key});

  @override
  State<PageCarrinho> createState() => _PageCarrinhoState();
}

class _PageCarrinhoState extends State<PageCarrinho> {
  int quantidade = 0;
  int quantidadeN = 0;
  @override
  Widget build(BuildContext context) {
    quantidade = ModalRoute.of(context)!.settings.arguments as int;
    quantidadeN = quantidade;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Checkout'),
        centerTitle: true,
        elevation: 0,
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontSize: 24,
          fontWeight: FontWeight.w600,
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body:
          // Order Details
          Column(
        children: [
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 8, top: 8),
                child: Text(
                  'Order Details',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const SizedBox(width: 10,),
              Container(
                decoration: BoxDecoration(
                  color:const Color.fromARGB(115, 221, 221, 221),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset('assets/img/Bunch_of_Bananas.png',
                    width: 100, height: 100),
              ),
              Card(
                elevation: 0,
                color: Colors.transparent,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Banana',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Padding(
                      padding: EdgeInsets.only(right: 12),
                      child: Text(
                        'Fruits',
                        style: TextStyle(
                          color: Color.fromARGB(255, 126, 124, 124),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Text(
                          quantidadeN.toString(),
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 30),
                          child: Text(
                            'pc',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color:const Color.fromARGB(146, 202, 201, 199),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                quantidadeN--;
                              });
                            },
                            icon: const Icon(
                              Icons.remove,
                              color: Colors.black,
                            ),
                            splashColor: Colors.red,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          decoration: BoxDecoration(
                            color:const Color.fromARGB(146, 210, 142, 255),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                quantidadeN++;
                              });
                            },
                            icon: const Icon(
                              Icons.add,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const SizedBox(width: 10,),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(146, 250, 202, 140),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset('assets/img/Sweer_Peper.png',
                    width: 100, height: 100),
              ),
              Card(
                elevation: 0,
                color: Colors.transparent,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Sweer',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Text(
                        'Fruits',
                        style: TextStyle(
                          color: Color.fromARGB(255, 126, 124, 124),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Text(
                          quantidadeN.toString(),
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text(
                            'pc',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color:const Color.fromARGB(146, 202, 201, 199),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                quantidadeN--;
                              });
                            },
                            icon: const Icon(
                              Icons.remove,
                              color: Colors.black,
                            ),
                            splashColor: Colors.red,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          decoration: BoxDecoration(
                            color:const Color.fromARGB(146, 210, 142, 255),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                quantidadeN++;
                              });
                            },
                            icon: const Icon(
                              Icons.add,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
