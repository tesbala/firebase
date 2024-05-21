import 'package:flutter/material.dart';

class GameListPage extends StatefulWidget {
  const GameListPage({super.key});

  @override
  State<GameListPage> createState() => _GameListPageState();
}

class _GameListPageState extends State<GameListPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/home.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: <Widget>[
            const SizedBox(
              height: 100,
            ),
            Row(
              children: <Widget>[
                const SizedBox(
                  width: 140,
                ),
                RawMaterialButton(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return SizedBox(
                              height: 300,
                              child: Column(
                                children: <Widget>[
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Expanded(
                                          child: IconButton(
                                              onPressed: null,
                                              icon: Image.asset(
                                                'assets/2.png',
                                                height: 72,
                                              ))),
                                      Expanded(
                                          child: IconButton(
                                              onPressed: null,
                                              icon: Image.asset(
                                                'assets/5.png',
                                                height: 72,
                                              ))),
                                      Expanded(
                                          child: IconButton(
                                              onPressed: null,
                                              icon: Image.asset(
                                                'assets/10.png',
                                                height: 72,
                                              ))),
                                      Expanded(
                                          child: IconButton(
                                              onPressed: null,
                                              icon: Image.asset(
                                                'assets/25.png',
                                                height: 72,
                                              ))),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Expanded(
                                          child: IconButton(
                                              onPressed: null,
                                              icon: Image.asset(
                                                'assets/50.png',
                                                height: 72,
                                              ))),
                                      Expanded(
                                          child: IconButton(
                                              onPressed: null,
                                              icon: Image.asset(
                                                'assets/100.png',
                                                height: 72,
                                              ))),
                                      Expanded(
                                          child: IconButton(
                                              onPressed: null,
                                              icon: Image.asset(
                                                'assets/250.png',
                                                height: 72,
                                              ))),
                                      Expanded(
                                          child: IconButton(
                                              onPressed: null,
                                              icon: Image.asset(
                                                'assets/500.png',
                                                height: 72,
                                              ))),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Expanded(
                                          child: IconButton(
                                              onPressed: null,
                                              icon: Image.asset(
                                                'assets/free.png',
                                                height: 72,
                                              ))),
                                      Expanded(
                                          child: ElevatedButton(
                                        style:
                                            ElevatedButton.styleFrom(backgroundColor: Colors.black),
                                        child: const Text(
                                          'Close',
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontFamily: 'mafia',
                                              fontWeight: FontWeight.bold),
                                        ),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                      )),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          });
                    },
                    elevation: 1.0,
                    shape: const CircleBorder(),
                    child: Image.asset(
                      'assets/carom.png',
                      height: 70,
                    )),
                const SizedBox(
                  width: 40,
                ),
                RawMaterialButton(
                    onPressed: null,
                    elevation: 1.0,
                    shape: const CircleBorder(),
                    child: Image.asset(
                      'assets/freefire.png',
                      height: 70,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
