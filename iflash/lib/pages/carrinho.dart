import 'package:flutter/material.dart';
import 'package:iflash/pages/home.dart';

class PageCarrinho extends StatefulWidget {
  const PageCarrinho({super.key});

  @override
  State<PageCarrinho> createState() => _PageCarrinhoState();
}

class _PageCarrinhoState extends State<PageCarrinho> {
  double precoBanana = 4.0;
  int quantidadeBanana = 0;
  double precoSweer = 1.20;
  int quantidadeSweer = 0;
  double subTotal = 0.0;
  double total = 0.0;
  double teste = 0.0;

  @override
  Widget build(BuildContext context) {
    // total = (precoBanana * quantidadeBanana) + (precoSweer * quantidadeSweer);
    subTotal = (precoBanana * quantidadeBanana) + (precoSweer * quantidadeSweer);

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

      body: Column(
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
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 10),
            child: SizedBox(
              height: 140,
              child: Card(
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 248, 250, 152),
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
                            padding: EdgeInsets.only(left: 8, top: 10),
                            child: Text(
                              'Bananas',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Padding(
                            padding: EdgeInsets.only(right: 30),
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
                                '$quantidadeBanana',
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 40),
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
                          padding: const EdgeInsets.only(left: 40, top: 20),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(146, 202, 201, 199),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (quantidadeBanana <= 0) {
                                        quantidadeBanana = 0;
                                      } else {
                                        quantidadeBanana--;
                                      }
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.remove,
                                    color: Colors.black,
                                    size: 30,
                                  ),
                                  splashColor: Colors.red,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(146, 210, 142, 255),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      quantidadeBanana++;
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.add,
                                    color: Colors.black,
                                    size: 30,
                                  ),
                                  splashColor: Colors.green,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 16, left: 40),
                              child: Text(
                                'U\$ ${precoBanana * quantidadeBanana}',
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: SizedBox(
              height: 140,
              child: Card(
                shape: Border.all(
                  color: const Color.fromARGB(19, 0, 0, 0),
                  width: 1,
                ),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
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
                            padding: EdgeInsets.only(left: 8, top: 10),
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
                            padding: EdgeInsets.only(right: 8),
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
                                '$quantidadeSweer',
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 14),
                                child: Text(
                                  'KG',
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
                          padding: const EdgeInsets.only(left: 60, top: 20),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(146, 202, 201, 199),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (quantidadeSweer <= 0) {
                                        quantidadeSweer = 0;
                                      } else {
                                        quantidadeSweer--;
                                      }
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.remove,
                                    color: Colors.black,
                                    size: 30,
                                  ),
                                  splashColor: Colors.red,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(146, 210, 142, 255),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      quantidadeSweer++;
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.add,
                                    color: Colors.black,
                                    size: 30,
                                  ),
                                  splashColor: Colors.green,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                                padding:
                                    const EdgeInsets.only(left: 40, top: 16),
                                child: Text(
                                    'U\$ ${(precoSweer * quantidadeSweer).toStringAsFixed(2)}',
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800,
                                    ))),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: const BorderSide(
                  color: Color.fromARGB(73, 141, 140, 140),
                  width: 1,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 241, 241, 241),
                      ),
                      child: SizedBox(
                        width: 40,
                        height: 40,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              color: Colors.black,
                              width: 2,
                            ),
                          ),
                          child: const Icon(
                            Icons.percent_rounded,
                            size: 25,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 40),
                    const Text(
                      'Promo Code',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(width: 40),
                    // Validar o promo code para aplicar o desconto.
                    TextButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            String codigoInserido = '';
                            return AlertDialog(
                              title: const Text('Put your promo code here'),
                              content: TextField(
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Promo Code',
                                ),
                                onChanged: ((value) {
                                  codigoInserido = value;
                                }),
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text(
                                    'Cancel',
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                    if (codigoInserido == 'Pulsati' ||
                                        codigoInserido == 'a') {
                                      setState(() {
                                        total = subTotal - 10;
                                      });
                                      showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              title: const Text(
                                                'Promo Code Applied',
                                                style: TextStyle(
                                                  color: Colors.green,
                                                ),
                                              ),
                                              actions: [
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: const Text('Ok'),
                                                ),
                                              ],
                                            );
                                          });
                                    } else {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            title: const Text(
                                              'Invalid Promo Code',
                                              style: TextStyle(
                                                color: Colors.red,
                                              ),
                                            ),
                                            actions: [
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: const Text('Ok'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    }
                                  },
                                  child: const Text('Apply',
                                    style: TextStyle(color: Colors.green),
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 210, 141, 250),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            'Apply',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Card(
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          'Subtotal:',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 150),
                        child: Text(
                          'U\$ ${subTotal.toStringAsFixed(2)}',
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          'Delivery Fee:',
                          style: TextStyle(
                            color: Color.fromARGB(113, 133, 133, 133),
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 170),
                        child: Text(
                          'Free',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          'Total:',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 200),
                        child: Text(
                          'U\$ ${total.toStringAsFixed(2)}',
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  TextButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                                title: const Text('Order Placed'),
                                content:
                                    const Text('Your order has been placed.'),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const HomePage(),
                                        ),
                                      );
                                    },
                                    child: const Text('Ok'),
                                  ),
                                ]);
                          });
                    },
                    child: Container(
                      width: 300,
                      height: 60,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 210, 141, 250),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text(
                          'Place Order',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
