import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';


class LiteRolling extends StatefulWidget {
  const LiteRolling({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<LiteRolling> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //By default
            LiteRollingSwitch(
              value: false,
              onChanged: (bool state) {
                print('turned ${(state) ? 'on' : 'off'}');
              },
              onDoubleTap: () {},
              onSwipe: () {},
              onTap: () {},
            ),

            //Customized
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: LiteRollingSwitch(
                value: true,
                width: 150,
                textOn: 'active',
                textOff: 'inactive',
                colorOn: Colors.deepOrange,
                colorOff: Colors.blueGrey,
                iconOn: Icons.lightbulb_outline,
                iconOff: Icons.power_settings_new,
                animationDuration: const Duration(milliseconds: 300),
                onChanged: (bool state) {
                  print('turned ${(state) ? 'on' : 'off'}');
                },
                onDoubleTap: () {},
                onSwipe: () {},
                onTap: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}