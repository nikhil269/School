import 'package:flutter/material.dart';
import './profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        '/profile': (BuildContext context) => new ProfileRoute(),
      },
      debugShowCheckedModeBanner: false,
      title: "School ManagMent",
      theme: ThemeData(brightness: Brightness.dark),
      home: Scaffold(
          drawer: Drawer(
            child: ListView(
              children: <Widget>[
                UserAccountsDrawerHeader(
                  accountEmail: Text('a@a.com'),
                  accountName: Text('Mr. A'),
                ),
                ListTile(
                  onTap: () => Navigator.of(context).pushNamed('/profile'),
                  title: Text("Profile"),
                ),
              ],
            ),
          ),
          // backgroundColor: Color(0xFF1C4289),
          appBar: AppBar(
            title: Text("School Managment"),
          ),
          body: CollapsingList()),
    );
  }
}

class CollapsingList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverFixedExtentList(
          itemExtent: 300.0,
          delegate: SliverChildListDelegate(
            [
              Container(
                padding: EdgeInsets.all(30.0),
                color: Color(0xFF1C4289),
                child: Image.asset("assets/fri.png"),
              ),
            ],
          ),
        ),
        SliverGrid.count(
          crossAxisCount: 3,
          children: <Widget>[
            OurGridItem(
              color: Color(0xFF0B7DC3),
              title: "Profile",
              icon: IconData(0xe82b, fontFamily: 'Linearicons'),
            ),
            OurGridItem(
              color: Color(0xFFCD3E44),
              title: "TimeTable",
              icon: IconData(0xe836, fontFamily: 'Linearicons'),
            ),
            OurGridItem(
              color: Color(0xFFE6AC0C),
              title: "Attendance",
              icon: IconData(0xe81f, fontFamily: 'Linearicons'),
            ),
            OurGridItem(
              color: Color(0xFFF04647),
              title: "Result",
              icon: IconData(0xe81e, fontFamily: 'Linearicons'),
            ),
            OurGridItem(
              color: Color(0xFF018A83),
              title: "Academic Fees",
              icon: IconData(0xe82b, fontFamily: 'Linearicons'),
            ),
            OurGridItem(
              color: Color(0xFF8E3EC3),
              title: "Hostel",
              icon: IconData(0xe800, fontFamily: 'Linearicons'),
            ),
            OurGridItem(
              color: Color(0xFF009BB7),
              title: "Transport",
              icon: IconData(0xe84d, fontFamily: 'Linearicons'),
            ),
            OurGridItem(
              color: Color(0xFF5630B7),
              title: "Update",
              icon: IconData(0xe859, fontFamily: 'Linearicons'),
            ),
            OurGridItem(
              color: Color(0xFF179959),
              title: "Help",
              icon: IconData(0xe87d, fontFamily: 'Linearicons'),
            ),
          ],
        ),
      ],
    );
  }
}

class OurGridItem extends StatelessWidget {
  var color;
  var title;
  var icon;
  OurGridItem({this.color, this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              icon,
              size: 80.0,
              color: Colors.white,
            ),
          ),
          Text(
            title,
            style: TextStyle(fontSize: 18.0, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
