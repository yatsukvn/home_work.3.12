import 'package:flutter/material.dart';
import 'package:home_work_3_12/models.dart';
import 'package:home_work_3_12/settings.dart';
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
    backgroundColor: Settings.background,
    appBar: AppBar(
      title: const Text(
        'Weather Forecast',
        style: TextStyle(color: Colors.white),
      ),
      centerTitle: true,
      backgroundColor: Settings.background,
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
        const Text(
          '7-DAY WEATHER FORECAST',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w300,
          ),
        ),
        _bottomDetail(),
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

Padding _extraWeatherDetail() {
  final values = [
    WeatherDetail(Icons.ac_unit, '5', 'km/hr'),
    WeatherDetail(Icons.ac_unit, '3', '%'),
    WeatherDetail(Icons.ac_unit, '20', '%'),
  ];

  return Padding(
    padding: const EdgeInsets.fromLTRB(40.0, 16.0, 40.0, 16.0),
    child: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          3,
          (int index) {
            return _extraWeatherDetailItem(values[index]);
          },
        ),
      ),
    ),
  );
}

Column _extraWeatherDetailItem(WeatherDetail weatherDetail) {
  return Column(
    children: [
      Icon(
        weatherDetail.icon,
        color: Colors.white,
        size: 32.0,
      ),
      Text(
        weatherDetail.title,
        style: Settings.extraWeatherDetailItemTextStyle,
      ),
      Text(
        weatherDetail.subtitle,
        style: Settings.extraWeatherDetailItemTextStyle,
      ),
    ],
  );
}

Padding _bottomDetail() {
  final values = [
    WeatherDetail(Icons.wb_sunny, 'Friday', '6'),
    WeatherDetail(Icons.wb_sunny, 'Saturday', '5'),
    WeatherDetail(Icons.wb_sunny, 'Sunday', '22'),
    WeatherDetail(Icons.wb_sunny, 'Monday', '24'),
    WeatherDetail(Icons.wb_sunny, 'Tuesday', '28'),
    WeatherDetail(Icons.wb_sunny, 'Wednesday', '29'),
    WeatherDetail(Icons.wb_sunny, 'Thursday', '30'),
  ];

  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: SizedBox(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
          7,
          (int index) {
            return _weatherDayOfWeekDetail(values[index]);
          },
        ),
      ),
    ),
  );
}

Card _weatherDayOfWeekDetail(WeatherDetail weatherDetail) {
  return Card(
    color: Colors.white.withOpacity(0.4),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(2.0),
    ),
    child: SizedBox(
      width: 160,
      height: 120,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  weatherDetail.title,
                  style: Settings.weatherDayOfWeekDetail,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '${weatherDetail.subtitle} ${Degree.fahrenheit}',
                  style: Settings.weatherDayOfWeekDetail,
                ),
                Icon(
                  weatherDetail.icon,
                  color: Colors.white,
                  size: 40.0,
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
