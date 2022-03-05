import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forecast_app/custom_icons/meteo_icons_icons.dart';

class ForecastPage extends StatefulWidget {
  const ForecastPage({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

String _location = 'City';

class _State extends State<ForecastPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shadowColor: Colors.blueAccent,
          backgroundColor: Colors.white,
          title: Text(
            _location,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.w900),
          ),
          centerTitle: true,
        ),
        body: ListView(
          //  scrollDirection: Axis.horizontal,
          children: [
            _weatherInfo('Today'),
            _weatherInfo('Today'),
            _weatherInfo('Today'),
            _weatherInfo('Today'),
            _weatherInfo('Today')
          ],
        ));
  }
}

TextStyle _bigText(double size) =>
    TextStyle(color: Colors.white, fontSize: size, fontWeight: FontWeight.bold);

Column _weatherInfo(String day) {
  return Column(
    children: [
      Text(
        day,
        style: const TextStyle(color: Colors.black, fontSize: 32),
      ),
      SizedBox(
          height: 100,
          child: _quaterDayWeather(
              MeteoIcons.sunrise, 'clear', '22', 'assets/morning.png')),
      SizedBox(
          height: 100,
          child: _quaterDayWeather(
              MeteoIcons.sun, 'clear', '22', 'assets/midday.png')),
      SizedBox(
          height: 100,
          child: _quaterDayWeather(
              CupertinoIcons.sunset, 'clear', '22', 'assets/evening.png')),
      SizedBox(
          height: 100,
          child: _quaterDayWeather(
              MeteoIcons.moon, 'clear', '22', 'assets/night.png')),
    ],
  );
}

Container _quaterDayWeather(
  IconData icon,
  String condition,
  String temperature,
  String imagePath,
) =>
    Container(
      decoration: BoxDecoration(
        border: const Border.symmetric(
            horizontal: BorderSide(color: Colors.white, width: 2)),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            icon,
            size: 72,
            color: Colors.white,
          ),
          Text(
            '13:00\n$condition',
            style: _bigText(24),
          ),
          Container(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Padding(padding: EdgeInsets.only(right: 8)),
                  Text(
                    temperature,
                    style: _bigText(36),
                  ),
                  const Icon(
                    MeteoIcons.celcius,
                    color: Colors.white,
                    size: 72,
                  ),
                ],
              ))
        ],
      ),
    );
