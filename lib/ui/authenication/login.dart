import 'package:flutter/material.dart';

import '../Games/List.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginState();
}

class _LoginState extends State<LoginPage> {
  //value for usename & password
  late String username, password;
  //this key for formkey that help  both 2 inputfiled validation
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController usenameeControlle = TextEditingController();
  final TextEditingController passworddController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/bk.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Form(
            key: formKey,
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 299,
                ),
                const Text(
                  'Welcome',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontFamily: 'game',
                      letterSpacing: 9,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 24,
                ),

                ////Username input filed
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 39.9),
                  child: TextFormField(
                    controller: usenameeControlle,
                    validator: (String? use) {
                      username = use!;
                      if (username.isEmpty) {
                        return 'pls enter the username ';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      hintText: 'User Name',
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 17.0, horizontal: 15.0), // Adjust the size of the TextField
                      hintStyle: TextStyle(fontSize: 15.0, fontFamily: 'mafia'),
                    ),
                    style: const TextStyle(
                        fontSize: 15.0,
                        fontFamily: 'mafia'), // Change the font size of the input text
                  ),
                ),
                const SizedBox(
                  height: 23,
                ),

                ////password input filed
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 39.9),
                  child: TextFormField(
                    controller: passworddController,
                    validator: (String? pass) {
                      password = pass!;
                      if (password.isEmpty) {
                        return 'Please enter your username ';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      hintText: 'Password',
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 17.0, horizontal: 15.0), // Adjust the size of the TextField
                      hintStyle: TextStyle(fontSize: 15.0, fontFamily: 'mafia'),
                    ),
                    style: const TextStyle(
                        fontSize: 15.0,
                        fontFamily: 'mafia'), // Change the font size of the input text
                  ),
                ),

                IconButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        if (username == 'bala' && password == '21227788') {
                          Navigator.push(
                            context,
                            MaterialPageRoute<Widget>(
                                builder: (BuildContext context) => const GameListPage()),
                          );
                        } else {
                          print('no no no no ');
                        }
                      }

                      // Clear the input fields
                      usenameeControlle.clear();
                      passworddController.clear();
                    },
                    icon: Image.asset(
                      'assets/login.png',
                      height: 80,
                    )),

                Row(
                  children: <Widget>[
                    Expanded(
                        child: IconButton(
                            onPressed: null,
                            icon: Image.asset(
                              'assets/Line.png',
                              height: 70,
                            ))),
                    Expanded(
                        child: IconButton(
                            onPressed: null,
                            icon: Image.asset(
                              'assets/OR.png',
                              height: 40,
                            ))),
                    Expanded(
                        child: IconButton(
                            onPressed: null,
                            icon: Image.asset(
                              'assets/Line.png',
                              height: 40,
                            )))
                  ],
                ),

                /////google and facbook authenication
                Padding(
                  padding: const EdgeInsets.fromLTRB(59, 0, 59, 0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: IconButton(
                              onPressed: null,
                              icon: Image.asset(
                                'assets/google.png',
                                height: 75,
                              ))),
                      Expanded(
                          child: IconButton(
                              onPressed: null,
                              icon: Image.asset(
                                'assets/facebook.png',
                                height: 75,
                              )))
                    ],
                  ),
                )
                /////navigation to sinup page
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    usenameeControlle.dispose();
    passworddController.dispose();
    super.dispose();
  }
}
