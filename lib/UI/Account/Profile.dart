import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
        body: Center(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 110,
              ),
              Image.asset(
                'assets/upload.png',
                height: 111,
              ),
              const SizedBox(
                height: 18,
              ),
              const Text(
                'Bala Murugan',
                style: TextStyle(fontSize: 26, fontFamily: 'mafia', fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: <Widget>[
                  const SizedBox(
                    width: 128,
                  ),
                  Image.asset(
                    'assets/money-bag.png',
                    height: 40,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  const Text(
                    '₹100',
                    style:
                        TextStyle(fontSize: 22, fontFamily: 'mafia', fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 17,
              ),
              Image.asset(
                'assets/addm.png',
                height: 72,
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset(
                'assets/bank.png',
                height: 72,
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset(
                'assets/info.png',
                height: 72,
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset(
                'assets/history.png',
                height: 72,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
