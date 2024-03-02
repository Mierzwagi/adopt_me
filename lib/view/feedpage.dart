import 'package:flutter/material.dart';

class feedpage extends StatefulWidget {
  const feedpage({super.key});

  @override
  State<feedpage> createState() => _feedpageState();
}

class _feedpageState extends State<feedpage> {
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
            title: const Text('Good Morning'),
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
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(50)),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //  Image.asset('assets/category.png'),
                            Text("b"),
                            const Text(
                              'A',
                              style: TextStyle(color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Image.asset('assets/category.png'),
                          const Text(
                            'Dogs',
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Image.asset('assets/category.png'),
                          const Text(
                            'Cats',
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Image.asset('assets/category.png'),
                          const Text(
                            'Rabbits',
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
