import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sport_app/ui/mainpage/items/bodyweight.dart';
import 'package:sport_app/ui/mainpage/items/no_time.dart';
import 'package:sport_app/ui/page_s/widget/paywall.dart';
import 'package:url_launcher/url_launcher.dart';

class dashboard extends StatelessWidget {
  String _url = 'https://instagram.com';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profil')),
      body: Center(
          child: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 20.0, top: 35.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('Maxim',
                    style: TextStyle(
                        color: Colors.pink.shade900,
                        fontWeight: FontWeight.bold,
                        fontSize: 27.0))
              ],
            ),
          ),
          CarouselSlider(
            items: [
              Container(
                margin: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                      image: AssetImage(
                          'assets/bilder/IMG_20190813_193423_711.png'),
                      fit: BoxFit.cover),
                ),
              ),
              Container(
                margin: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                      image: AssetImage('assets/bilder/thumbnail_DSC00026.png'),
                      fit: BoxFit.cover),
                ),
              ),
              Container(
                margin: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                      image: AssetImage('assets/bilder/thumbnail_DSC03888.png'),
                      fit: BoxFit.cover),
                ),
              ),
              Container(
                margin: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                      image: AssetImage('assets/bilder/thumbnail_DSC04188.png'),
                      fit: BoxFit.cover),
                ),
              )
            ],
            options: CarouselOptions(
              height: 600.0,
              enlargeCenterPage: true,
              autoPlay: true,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(seconds: 8),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(50.0),
              child: IconButton(
                  onPressed: _launchUrl,
                  icon: FaIcon(FontAwesomeIcons.instagram))),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Divider(height: 2.0, color: Colors.black),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
                onPressed: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Paywall()));
                }),
                child: const Text('No Time Workout')),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
                onPressed: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Paywall()));
                }),
                child: const Text('Bodyweight')),
          )
        ],
      )),
    );
  }

  void _launchUrl() async {
    if (!await launch(_url)) throw 'could not lauch url $_url';
  }
}
