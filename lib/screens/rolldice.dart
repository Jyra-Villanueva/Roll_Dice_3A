import 'dart:math';
import 'package:flutter/material.dart';

class RollDiceScreen extends StatefulWidget {
  const RollDiceScreen({super.key});

  @override
  State<RollDiceScreen> createState() => _RollDiceScreenState();
}

int active = 6;

List<String> diceImage = [
  'https://webstockreview.net/images/dice-clipart-one-9.png',
  'https://jooinn.com/images/2-dice-2.png',
  'https://webstockreview.net/images/dice-clipart-three.png',
  'https://img.favpng.com/8/0/16/dice-dominoes-bunco-clip-art-png-favpng-S5LTxQjZmumuCE6ha1qyzWXNn_t.jpg',
  'https://www.kindpng.com/picc/m/57-576825_dice-clipart-number-five-side-of-dice-hd.png',
  'https://www.tynker.com/projects/images/5a6397185ae02937258b47ac/dice-6---dice-6.png',
  'https://c.tenor.com/i_L5KauoCcoAAAAj/dice.gif'
];

class _RollDiceScreenState extends State<RollDiceScreen> {
  @override
  Widget build(BuildContext context) {
    print('build called');
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.yellow,
              Colors.green,
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Roll Dice',
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Image.network(
                diceImage[active],
                width: 200,
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {
                  var ranNum = Random().nextInt(6);
                  setState(() {
                    active = ranNum;
                  });
                  print('button pressed');
                },
                child: const Text(
                  'Roll!',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
