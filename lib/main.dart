import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _descriptionText =
      '''This district is beautiful enough for any traveler. But the beauty of the lake added another extra ornament. The blue water from the lake will please mind easily. Most of the main infrastructures from Madaripur town was built around the lake. The DC office, police station, and many more government buildings around the lake. The academic name of the lake is “Shokuni Lake”, but local people won’t be able to recognize the lake by that name. They simply know the lake as “Madaripur Lake”.

This large lake has two portion separated by a fishing net. One half is using for fish cultivation. This water tank was built by few hundred years back by a Raja (a king) to ease the water crisis. But now a days this is a great entertainment place for the locals. During the afternoon, it will be hard to get an empty space around the lake. Most of the people from town used to pass some pleasing time with friends here. The sweets from the lake area are famous from Madaripur.

Dhaka to Madaripur distance is 426 Km and need 8 hours 5 minutes to reach Madaripur. There are available bus 24 hours a day. It is easy to go Shariatpur from Dhaka.

To go Madaripur Start journey from Dhaka to Mawa Ghat. BRTC, Procesta, Elish, Gungun, Ajmeri bus service are available Dhaka to Mawa Ghat. BRTC bus terminal is Gulistan and fair is 70/-, Procesta bus terminal are Uttora & Rampur and fair 100/-,Elish, Gungun, Ajmari bus terminal is Jatrabari and fair is 80/-. From Mawa Ghat use ferry, sea boat, troler or launce to go Kawrakandi or Majhikandi. . From Kawrakandi or Majhikandi local bus are available to go Madaripur. If you want you can take taxi to go Madaripur.

''';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              myImage(),
              myListTile(),
              mainRoute(),
              imageDescription(),
            ],
          ),
        ),
      ),
    );
  }

  Image myImage() {
    return Image.network(
      'https://www.unitednews24.com/wp-content/uploads/2020/07/shokuni-lake.jpg',
      height: 250,
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }

  ListTile myListTile() {
    return ListTile(
      title: Text(
        'Madaripur Shokuni Lake',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text('Madaripur Sadar, Madaripur, Bangladesh'),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(
            Icons.star,
            color: Colors.yellow,
            size: 35,
          ),
          Text('95'),
        ],
      ),
    );
  }

  Container mainRoute() {
    return Container(
      padding: EdgeInsets.all(16.0),
      margin: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          color: Colors.purple,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.5),
                blurRadius: 0,
                spreadRadius: 0,
                offset: Offset(7, 7)),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          eachRoute(Icons.call, 'CALL'),
          eachRoute(Icons.near_me, 'ROUTE'),
          eachRoute(Icons.share, 'SHARE'),
        ],
      ),
    );
  }

  Column eachRoute(_icon, _text) {
    return Column(
      children: <Widget>[
        Icon(
          _icon,
          color: Colors.white,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          _text,
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }

  Padding imageDescription() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Text(_descriptionText),
    );
  }
}
