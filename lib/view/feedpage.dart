import 'dart:math' as math;

import 'package:flutter/material.dart';

class feedpage extends StatefulWidget {
  const feedpage({super.key});

  @override
  State<feedpage> createState() => _feedpageState();
}

class _feedpageState extends State<feedpage> {
  int? _value = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 0,
        left: 20,
        right: 20,
      ),
      child: Scaffold(
        appBar: AppBar(
            leading: Image.asset('assets/userprofile.png'),
            title: const Column(
              children: [
                Text('Good Morning!', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.pink),),
                Text('Morning', style: TextStyle(fontSize: 15),),
              ],
            ),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.notifications_none),
                tooltip: 'Show Snackbar',
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Sem notificações')));
                },
              )
            ]),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              //keyboardType é o tipo de teclado que vai er usado para incerir os dados no input
              // TextInputType.emailAddress diz que o tipo dele é email, irá aparecer o @ no teclado
              keyboardType: TextInputType.text,
              //Para esconder a senha
              decoration: InputDecoration(
                  fillColor: const Color.fromARGB(52, 194, 186, 186),
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(15)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color.fromARGB(144, 194, 186, 186)),
                      borderRadius: BorderRadius.circular(15)),
                  labelText: "Search",
                  labelStyle: const TextStyle(
                    color: Color.fromARGB(117, 0, 0, 0),
                    fontWeight: FontWeight.w100,
                    fontSize: 10,
                  ),
                  icon: const Icon(Icons.search)),
              style: const TextStyle(fontSize: 15),
            ),
            const SizedBox(
              height: 20,
            ),

            //MONTAR UMA CLASSE SEPARADA
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    /* Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(50)),
                      child: const Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //  Image.asset('assets/category.png'),
                            Text("b"),
                            Text(
                              'A',
                              style: TextStyle(color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    ), */
                    Column(
                      children: [
                        Wrap(
                          spacing: 34.0,
                          children: List<Widget>.generate(
                            4,
                            (int index) {
                              return ChoiceChip(
                                selectedColor: Colors.pink,
                                showCheckmark: false,
                                label: Row(
                                  children: [
                                    Image.asset('assets/category.png'),
                                    Text("data")
                                  ],
                                ),
                                selected: _value == index,
                                onSelected: (bool selected) {
                                  setState(() {
                                    _value = selected ? index : null;
                                  });
                                },
                              );
                            },
                          ).toList(),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),

            Expanded(
              child: GridView.builder(
                itemCount: 10,
                padding: const EdgeInsets.all(12.0),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  mainAxisExtent: 260,
                  childAspectRatio: 6 / 8,
                ),
                itemBuilder: (BuildContext context, int index) {
                  final math.Random random = math.Random(index);

                  //Retornar os containers dos pets
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      // ignore: prefer_const_literals_to_create_immutables
                      boxShadow: [
                        // ignore: prefer_const_constructors
                        BoxShadow(
                          color: Color.fromARGB(125, 158, 158, 158),
                          blurRadius: 10,
                          offset: Offset(4, 8), // Shadow position
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: Image.asset(
                              'assets/dog1.png',
                              fit: BoxFit.cover,
                              width: MediaQuery.of(context).size.width,
                            )),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              // ignore: unnecessary_const
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text('Kuggu'),
                                      Icon(Icons.male),
                                    ],
                                  ),
                                  Text('2 Years')
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Mixed Brood | Adult'),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.location_on_outlined),
                                  Text('2.7 KM Away')
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
