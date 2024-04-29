import 'package:flutter/material.dart';
import 'package:flutter_icons_fix/flutter_icons_fix.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[300],
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              print("Bosildi");
            },
            icon: Icon(Icons.arrow_back_ios_new),
            color: Colors.white,
          ),
          backgroundColor: Colors.blue[300],
          centerTitle: true,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "Bangdung, ",
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16),
              ),
              Text(
                "Indonesia",
                style: TextStyle(color: Colors.white, fontSize: 16),
              )
            ],
          ),
          actions: const [
            SizedBox(
              width: 60,
            )
          ],
        ),
        body: Body(),
        drawerScrimColor: Colors.white,
      ),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          const Text(
            " Next 7 Days",
            style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Dayinfo(
            weekday: "Monday",
            maxtemp: "30",
            mintemp: "28",
            day: "3 Oct",
            icon_condition: Icon(
              FlutterIcons.sun_faw5s,
              color: Color.fromARGB(255, 255, 179, 0),
              size: 40,
            ),
          ),
          Dayinfo(
            weekday: "Turseday",
            maxtemp: "22",
            mintemp: "23",
            day: "4 Oct",
            icon_condition: Icon(
              FlutterIcons.weather_rainy_mco,
              color: Color.fromARGB(255, 255, 255, 255),
              size: 40,
            ),
          ),
          Dayinfo(
            weekday: "Wendnesday",
            maxtemp: "30",
            mintemp: "31",
            day: "5 Oct",
            icon_condition: Icon(
              FlutterIcons.sun_faw5s,
              color: Color.fromARGB(255, 255, 179, 0),
              size: 40,
            ),
          ),
          Dayinfo(
            weekday: "Thursday",
            maxtemp: "24",
            mintemp: "26",
            day: "6 Oct",
            icon_condition: Icon(
              FlutterIcons.weather_partly_cloudy_mco,
              color: Color.fromARGB(255, 255, 255, 255),
              size: 40,
            ),
          ),
          Dayinfo(
            weekday: "Fridey",
            maxtemp: "26",
            mintemp: "27",
            day: "7 Oct",
            icon_condition: Icon(
              FlutterIcons.cloud_ant,
              color: Color.fromARGB(255, 255, 255, 255),
              size: 40,
            ),
          ),
          Dayinfo(
            weekday: "Saturday",
            maxtemp: "27",
            mintemp: "28",
            day: "8 Oct",
            icon_condition: Icon(
              FlutterIcons.weather_fog_mco,
              color: Color.fromARGB(255, 255, 255, 255),
              size: 40,
            ),
          ),
          Dayinfo(
            weekday: "Sunday",
            maxtemp: "22",
            mintemp: "23",
            day: "9 Oct",
            icon_condition: Icon(
              FlutterIcons.weather_partly_snowy_rainy_mco,
              color: Color.fromARGB(255, 255, 251, 241),
              size: 40,
            ),
          ),
          SizedBox(
            height: 60,
          )
        ],
      ),
    );
  }
}

class Dayinfo extends StatelessWidget {
  Icon icon_condition;
  String weekday;
  String maxtemp;
  String mintemp;
  String day;
  Dayinfo({required this.icon_condition, required this.weekday, required this.maxtemp, required this.mintemp, required this.day});
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        icon_condition,
        SizedBox(
          width: 30,
        ),
        Text(
          "$weekday,",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
        ),
        Text(
          " $day",
          style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w300),
        ),
        SizedBox(
          width: 35,
        ),
        Text(
          "$maxtemp",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
        ),
        Text(
          " / $mintemp°",
          style: TextStyle(fontWeight: FontWeight.w400, color: Colors.white),
        )
      ],
    );
  }
}
