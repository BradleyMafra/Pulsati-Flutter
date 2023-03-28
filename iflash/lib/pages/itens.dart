import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iflash/pages/carrinho.dart';

class PageItens extends StatefulWidget {
  const PageItens({Key? key}) : super(key: key);

  @override
  State<PageItens> createState() => _PageItensState();
}

class _PageItensState extends State<PageItens> {
  bool foiClicado = false;
  int quantidade = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Mango'),
        centerTitle: true,
        elevation: 0,
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontSize: 25,
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
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () {
                setState(() {
                  foiClicado = !foiClicado;
                });
              },
              icon: Icon(
                foiClicado ? CupertinoIcons.heart_fill : CupertinoIcons.heart,
                color: foiClicado
                    ? const Color.fromARGB(255, 184, 111, 252)
                    : Colors.black,
                size: 30,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8, left: 60, bottom: 20),
                  child: Center(
                    child: Image.asset(
                      'assets/img/Mango.png',
                      width: 300,
                      height: 200,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 200,
            height: 80,
            child: Card(
              elevation: 0,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 60,
                    height: 100,
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          if(quantidade <= 0){
                            quantidade = 0;
                          }else{
                            quantidade--;
                          }
                        });
                      },
                      icon: const Padding(
                        padding: EdgeInsets.only(bottom: 30),
                        child: Icon(
                          Icons.minimize_rounded,
                          color: Colors.black,
                          size: 35,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    width: 70,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: quantidade > 0
                            ? const Color.fromARGB(255, 250, 176, 231)
                            : Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      child: Text(
                        '$quantidade',
                        style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 60,
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              quantidade++;
                            });
                          },
                          icon: const Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.add_rounded,
                              color: Colors.black,
                              size: 40,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: const [
              SizedBox(height: 100, width: 10),
              Text(
                'Duncan Mango',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(width: 70),
              Text(
                '\$2.00',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w800,
                    color: Color.fromARGB(255, 176, 82, 253)),
              ),
              Text(
                'pc',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 176, 82, 253)),
              ),
            ],
          ),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'Description',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'A mango is a sweet tropical fruit and it`s also the name',
                      style: TextStyle(
                        color: Color(0xFFA0A0A0),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 8),
                    child: Text(
                      'of the trees on which the fruit grows..',
                      style: TextStyle(
                        color: Color(0xFFA0A0A0),
                      ),
                    ),
                  ),
                  Text(
                    'See more',
                    style: TextStyle(
                      color: Color.fromARGB(255, 176, 82, 253),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 24, left: 20),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 250, 176, 231),
                  ),
                  child: const SizedBox(
                    child: Icon(
                      Icons.star_border_rounded,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10, top: 24),
                child: Text(
                  '4.5 Star',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24, left: 20),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 250, 176, 231),
                  ),
                  child: const SizedBox(
                    child: Icon(
                      Icons.access_time_rounded,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10, top: 24),
                child: Text(
                  '1 Day',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 8, left: 20),
                child: Text(
                  'Other Items',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const SizedBox(width: 20),
              Card(
                elevation: 0,
                color: const Color.fromARGB(146, 250, 202, 140),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: Image.asset(
                        'assets/img/Tomato.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 20),
              Card(
                elevation: 0,
                color: const Color.fromARGB(146, 250, 202, 140),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: Image.asset(
                        'assets/img/Sweer_Peper.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 20),
              Card(
                elevation: 0,
                color: const Color.fromARGB(146, 250, 202, 140),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: Image.asset(
                        'assets/img/Alface.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 24, left: 20),
                child: Container(
                  width: 150,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: const Color(0xFFA0A0A0),
                    ),
                  ),
                  child: const TextButton(
                    onPressed: null,
                    child: Text(
                      'Add to cart',
                      style: TextStyle(
                        color: Color(0xFFA0A0A0),
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24, left: 20),
                child: Container(
                  width: 150,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 253, 122, 253),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (contextquantidade) => const PageCarrinho(),
                          settings: RouteSettings(arguments: quantidade),
                        ),
                      );
                    },
                    child: const Text(
                      'Buy now',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
