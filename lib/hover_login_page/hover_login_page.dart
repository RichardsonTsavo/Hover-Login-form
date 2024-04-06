import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../shared/widgets/hover_container.dart';

class HoverLoginPage extends StatefulWidget {
  const HoverLoginPage({super.key});

  @override
  State<HoverLoginPage> createState() => _HoverLoginPageState();
}

class _HoverLoginPageState extends State<HoverLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: LayoutBuilder(builder: (context, constraints) {
        return Stack(
          alignment: Alignment.center,
          children: [
            Container(
              color: Colors.black,
              width: constraints.maxWidth,
              height: constraints.maxHeight,
            )
                .animate(onPlay: (controller) => controller.repeat())
                .shimmer(
                  angle: 8,
                  duration: 3.seconds,
                  color: Theme.of(context).primaryColor,
                )
                .animate(),
            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 15),
              itemBuilder: (context, index) => const HoverContainer(),
            ),
            Container(
              width: constraints.maxWidth / 3,
              height: constraints.maxHeight / 1.5,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
                color: const Color.fromARGB(255, 25, 24, 25),
                borderRadius: BorderRadius.circular(15),
              ),
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Login",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: constraints.maxWidth * 0.03),
                  ),
                  TextField(
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email,
                          color: Theme.of(context).primaryColor),
                      filled: true,
                      labelText: "E-mail",
                      labelStyle: const TextStyle(
                        color: Colors.white,
                      ),
                      fillColor: const Color.fromARGB(255, 50, 48, 50),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                  TextField(
                    style: const TextStyle(color: Colors.white),
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock,
                          color: Theme.of(context).primaryColor),
                      filled: true,
                      labelText: "Senha",
                      labelStyle: const TextStyle(
                        color: Colors.white,
                      ),
                      fillColor: const Color.fromARGB(255, 50, 48, 50),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text("Esqueceu a senha?",
                            style: TextStyle(color: Colors.white)),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text("Cadastrar-se",
                            style: TextStyle(
                                color: Theme.of(context).primaryColor)),
                      )
                    ],
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size.fromWidth(constraints.maxWidth * 0.2),
                      backgroundColor: Theme.of(context).primaryColor,
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Entrar",
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                ],
              ),
            )
          ],
        );
      }),
    );
  }
}
