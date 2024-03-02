import 'package:adopt_me/view/feedpage.dart';
import 'package:flutter/material.dart';

class appHome extends StatefulWidget {
  const appHome({super.key});

  @override
  State<appHome> createState() => _appHomeState();
}

class _appHomeState extends State<appHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 60, left: 40, right: 40),
        color: Colors.white,
        //ListView para o techado não ficar encima dos inputs
        child: ListView(
          children: <Widget>[
            //Uma caixa com um tamanho especificado.
            SizedBox(
              width: 250,
              height: 250,
              child: Image.asset("assets/logo.png"),
            ),

            //Dar um espaçamento entre a imagem e o proximo elemento
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "E-mail or Phone number",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
            //Inserindo o campo e-mail, como um formulário
            TextFormField(
              //keyboardType é o tipo de teclado que vai er usado para incerir os dados no input
              // TextInputType.emailAddress diz que o tipo dele é email, irá aparecer o @ no teclado
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                fillColor: Color.fromARGB(15, 244, 54, 149),
                filled: true,
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.pink),
                    borderRadius: BorderRadius.circular(15)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.pink),
                    borderRadius: BorderRadius.circular(15)),
                /* labelText: "E-mail or Phone number",
                labelStyle: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w100,
                  fontSize: 20,
                ), */
              ),
              style: const TextStyle(fontSize: 15),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Password",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
            TextFormField(
              //keyboardType é o tipo de teclado que vai er usado para incerir os dados no input
              // TextInputType.emailAddress diz que o tipo dele é email, irá aparecer o @ no teclado
              keyboardType: TextInputType.text,
              //Para esconder a senha
              obscureText: true,
              decoration: InputDecoration(
                fillColor: Color.fromARGB(15, 244, 54, 149),
                filled: true,
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.pink),
                    borderRadius: BorderRadius.circular(15)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.pink),
                    borderRadius: BorderRadius.circular(15)),
                /* labelText: "Password",
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w100,
                  fontSize: 20,
                ), */
              ),
              style: const TextStyle(fontSize: 15),
            ),
            Container(
              height: 40,
              alignment: Alignment.centerRight,
              child: const Text(
                'Forgot Password?',
                textAlign: TextAlign.right,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 255, 135, 171),
                        padding:
                            EdgeInsets.symmetric(horizontal: 0, vertical: 25),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => feedpage()),
                        );
                      },
                      child: const Text(
                        'Signup',
                        style: TextStyle(color: Colors.white),
                      )),
                )
                /* Container(
                  height: 40,
                  width: 300,
                  /* alignment:Alignment.center, */
                  decoration: const BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                ) */
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          'OR',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            child: Image.asset("assets/facebook.png"),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            child: Image.asset("assets/google.png"),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an Account? ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Signup",
                      style: TextStyle(
                          color: Colors.pink, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
