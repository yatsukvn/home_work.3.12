import 'package:flutter/material.dart';
import 'package:home_work_3_12/utils.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WeatherForecast(),
    );
  }
}

Scaffold WeatherForecast() {
  return Scaffold(
    backgroundColor: Colors.deepOrange,
    appBar: AppBar(
      title: const Text(
        'Weather Forecast',
        style: TextStyle(color: Colors.white),
      ),
      centerTitle: true,
      backgroundColor: Colors.deepOrange,
      elevation: 0,
    ),
    body: _buildBody(),
  );
}

Widget _buildBody() {
  return SingleChildScrollView(
    child: Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              icon: Icon(Icons.search, color: Colors.white),
              labelText: 'Enter City Name',
              labelStyle: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        _cityDetail(),
        _temperatureDetail(),
        _extraWeatherDetail(),
      ],
    ),
  );
}

Widget _cityDetail() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 16.0, 0, 16.0),
    child: Column(
      children: const [
        Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 16.0),
          child: Text(
            'Murmansk oblast, RU',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        Text(
          'Friday, Mar 20, 2020',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
}

Widget _temperatureDetail() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 16.0, 0, 16.0),
    child: Center(
      child: SizedBox(
        width: 320.0,
        child: ListTile(
          title: Text(
            '14 ${Degree.fahrenheit}',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 56,
              fontWeight: FontWeight.w200,
            ),
          ),
          subtitle: const Center(
            child: Text(
              'LIGHT SNOW',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          leading: const Icon(
            Icons.wb_sunny,
            size: 96,
            color: Colors.white,
          ),
        ),
      ),
    ),
  );
}

Widget _extraWeatherDetail() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(40.0, 16.0, 40.0, 16.0),
    child: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: const [
              Icon(Icons.cloudy_snowing, color: Colors.white, size: 32.0),
              Text(
                '5',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Text(
                'km/hr',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Column(
            children: const [
              Icon(Icons.cloudy_snowing, color: Colors.white, size: 32.0),
              Text(
                '5',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Text(
                'km/hr',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Column(
            children: const [
              Icon(Icons.cloudy_snowing, color: Colors.white, size: 32.0),
              Text(
                '5',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Text(
                'km/hr',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
