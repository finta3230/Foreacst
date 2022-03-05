import 'package:flutter/material.dart';
import 'custom_icons/meteo_icons_icons.dart';

class TodayPage extends StatelessWidget {
  TodayPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shadowColor: Colors.blueAccent,
          backgroundColor: Colors.white,
          title: const Text(
            'Today',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
          children: [
            const Padding(padding: EdgeInsets.only(top: 20)),
            Icon(
              MeteoIcons.sun,
              color: Colors.yellow,
            ),
            const Padding(padding: EdgeInsets.only(top: 15)),
            _mainText('London, UK'),
            const Padding(padding: EdgeInsets.only(top: 15)),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '22',
                        style: _blueBigText(),
                      ),
                      Container(
                        height: 30,
                        alignment: Alignment.topRight,
                        child: Icon(
                          Icons.exposure_zero,
                          color: Colors.blue,
                          size: 15,
                        ),
                      ),
                      Text('C | Sunny', style: _blueBigText())
                    ],
                  ),
                ),
              ],
            ),
            const Expanded(
              child: Divider(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                    child: _buildButtonColumn(Colors.black, MeteoIcons.drizzle,
                        '56%', Colors.yellow)),
                Expanded(
                    child: _buildButtonColumn(Colors.black, Icons.water_rounded,
                        '1.0 mm', Colors.yellow)),
                Expanded(
                    child: _buildButtonColumn(Colors.black, MeteoIcons.celcius,
                        '9999 hPa', Colors.yellow)),
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 30)),
            Row(
              children: [
                Expanded(
                    child: _buildButtonColumn(Colors.black, MeteoIcons.wind,
                        '20 km/h', Colors.yellow)),
                Expanded(
                    child: _buildButtonColumn(
                        Colors.black, MeteoIcons.compass, 'SE', Colors.yellow)),
              ],
            ),
            const Expanded(
              child: Divider(),
            ),
            SizedBox(
                height: 70,
                child: FittedBox(
                  child: Column(
                    children: [
                      FloatingActionButton(
                        onPressed: () {},
                        backgroundColor: Colors.blue,
                        child: const Icon(
                          Icons.share,
                          size: 30,
                        ),
                      ),
                      const Padding(padding: EdgeInsets.only(top: 8)),
                      _mainText('SHARE')
                    ],
                  ),
                )),
            const Padding(padding: EdgeInsets.only(bottom: 15))
          ],
        )));
  }

  Text _mainText(String text) => Text(text,
      style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold));

  TextStyle _blueBigText() => const TextStyle(
        color: Colors.blue,
        fontSize: 24,
        shadows: <Shadow>[
          Shadow(
            offset: Offset(1.0, 1.0),
            blurRadius: 1.0,
            color: Color.fromARGB(0, 33, 150, 243),
          ),
          Shadow(
            offset: Offset(2.0, 2.0),
            blurRadius: 8.0,
            color: Color.fromARGB(125, 33, 150, 243),
          ),
        ],
      );

  Column _buildButtonColumn(Color textColor, IconData icon, String label,
      [Color iconColor = Colors.black]) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: iconColor,
          size: 30,
        ),
        Container(
            margin: const EdgeInsets.only(top: 8), child: _mainText(label)),
      ],
    );
  }
}
