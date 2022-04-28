import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sport_app/ui/mainpage/items/Homepage.dart';
import 'package:sport_app/ui/mainpage/items/item.dart';
import 'package:sport_app/ui/navpages/my_page.dart';

class Homepage extends StatefulWidget {
  Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Homepage")),
      body: Center(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20.0, top: 35.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Feature',
                      style: TextStyle(
                          color: Colors.pink.shade900,
                          fontWeight: FontWeight.bold,
                          fontSize: 22.0))
                ],
              ),
            ),
            InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => dashboard()));
                },
                child: Container(
                    width: 220.0,
                    height: 350.0,
                    margin: EdgeInsets.all(40.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                      color: Colors.pink,
                    ),
                    child: Image(
                      image: AssetImage(
                        'assets/bilder/IMG_20190813_193423_711.png',
                      ),
                      width: 220.0,
                      height: 350.0,
                    ))),
            Padding(
              padding: EdgeInsets.only(
                left: 20.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Exclusives',
                      style: TextStyle(
                          color: Colors.pink.shade900,
                          fontWeight: FontWeight.bold,
                          fontSize: 22.0))
                ],
              ),
            ),
            Container(
                width: 350.0,
                height: 150.0,
                margin: EdgeInsets.all(40.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(4.0)),
                  color: Colors.pink,
                ),
                child: Image(
                  image: AssetImage(
                    'assets/bilder/coming-soon-png-png-image-654809.png',
                  ),
                  width: 350.0,
                  height: 150.0,
                )),
            Padding(
              padding: EdgeInsets.only(
                left: 20.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Spotlight',
                      style: TextStyle(
                          color: Colors.pink.shade900,
                          fontWeight: FontWeight.bold,
                          fontSize: 22.0))
                ],
              ),
            ),
            CarouselSlider(
              items: [
                Container(
                    width: 350.0,
                    height: 150.0,
                    margin: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                      color: Colors.pink,
                    ),
                    child: Image(
                      image: AssetImage(
                        'assets/bilder/coming-soon-png-png-image-654809.png',
                      ),
                      width: 350.0,
                      height: 150.0,
                    )),
              ],
              options: CarouselOptions(
                height: 150.0,
                enlargeCenterPage: true,
                autoPlay: true,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(seconds: 2),
              ),
            )
          ],
        ),
      ),
    );
  }
}
