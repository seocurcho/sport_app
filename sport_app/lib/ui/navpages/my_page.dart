import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sport_app/ui/page_s/forgotpasswor.dart';
import 'package:sport_app/ui/page_s/forgotpasswordveri.dart';
import 'package:sport_app/ui/page_s/login_screen.dart';
import 'package:sport_app/ui/page_s/registration_page.dart';
import 'package:sport_app/ui/page_s/widget/Authpage.dart';
import 'package:sport_app/ui/page_s/widget/header_widget.dart';
import 'package:sport_app/ui/page_s/widget/paywall.dart';

import '../../api/purchase_api.dart';
import '../page_s/widget/Utils.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final user = FirebaseAuth.instance.currentUser!;
  double _drawerIconSize = 24;
  double _drawerFontSize = 17;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        elevation: 0.5,
        iconTheme: IconThemeData(color: Colors.white),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: <Color>[
                Theme.of(context).primaryColor,
                Theme.of(context).colorScheme.secondary
              ])),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(
              top: 16,
              right: 16,
            ),
            child: Stack(
              children: <Widget>[
                Icon(Icons.notifications),
                Positioned(
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    constraints: BoxConstraints(
                      minWidth: 12,
                      minHeight: 12,
                    ),
                    child: Text(
                      '5',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
      drawer: Drawer(
          child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [
                    0.0,
                    1.0
                  ],
                      colors: [
                    Theme.of(context).primaryColor.withOpacity(0.2),
                    Theme.of(context).secondaryHeaderColor.withOpacity(0.5),
                  ])),
              child: ListView(children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0.0, 1.0],
                      colors: [
                        Theme.of(context).primaryColor,
                        Theme.of(context).secondaryHeaderColor,
                      ],
                    ),
                  ),
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Profil Beispiel",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                // ListTile(
                //   leading: Icon(Icons.screen_lock_landscape,
                //       size: _drawerIconSize,
                //       color: Theme.of(context).secondaryHeaderColor),
                //   title: Text(
                //     "splash screen",
                //     style: TextStyle(
                //         fontSize: 17,
                //         color: Theme.of(context).secondaryHeaderColor),
                //   ),
                //   onTap: () {
                //     Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //             builder: ((context) => StreamBuilder<Object>(
                //                 stream: null,
                //                 builder: (context, snapshot) {
                //                   return Authpage();
                //                 }))));
                //   },
                // ),
                // ListTile(
                //   leading: Icon(Icons.login_rounded,
                //       size: _drawerIconSize,
                //       color: Theme.of(context).accentColor),
                //   title: Text(
                //     'Login Page',
                //     style: TextStyle(
                //         fontSize: _drawerFontSize,
                //         color: Theme.of(context).accentColor),
                //   ),
                //   onTap: () {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //           builder: (context) => StreamBuilder<Object>(
                //               stream: null,
                //               builder: (context, snapshot) {
                //                 return Authpage();
                //               })),
                //     );
                //   },
                // ),
                // Divider(
                //   color: Theme.of(context).primaryColor,
                //   height: 1,
                // ),
                ListTile(
                  leading: Icon(Icons.add_card_outlined,
                      size: _drawerIconSize,
                      color: Theme.of(context).accentColor),
                  title: Text(
                    'Subscribe',
                    style: TextStyle(
                        fontSize: _drawerFontSize,
                        color: Theme.of(context).accentColor),
                  ),
                  onTap: () {
                    //fetchOffers eig
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => StreamBuilder<Object>(
                              stream: null,
                              builder: (context, snapshot) {
                                return Paywall();
                              })),
                    );
                  },
                ),
                // Divider(
                //   color: Theme.of(context).primaryColor,
                //   height: 1,
                // ),
                // ListTile(
                //   leading: Icon(
                //     Icons.password_rounded,
                //     size: _drawerIconSize,
                //     color: Theme.of(context).accentColor,
                //   ),
                //   title: Text(
                //     'Forgot Password Page',
                //     style: TextStyle(
                //         fontSize: _drawerFontSize,
                //         color: Theme.of(context).accentColor),
                //   ),
                //   onTap: () {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //           builder: (context) => StreamBuilder<Object>(
                //               stream: null,
                //               builder: (context, snapshot) {
                //                 return ForgotPasswordPage();
                //               })),
                //     );
                //   },
                // ),
                // Divider(
                //   color: Theme.of(context).primaryColor,
                //   height: 1,
                // ),
                // ListTile(
                //   leading: Icon(
                //     Icons.verified_user_sharp,
                //     size: _drawerIconSize,
                //     color: Theme.of(context).accentColor,
                //   ),
                //   title: Text(
                //     'Verification Page',
                //     style: TextStyle(
                //         fontSize: _drawerFontSize,
                //         color: Theme.of(context).accentColor),
                //   ),
                //   onTap: () {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //           builder: (context) => StreamBuilder<Object>(
                //               stream: null,
                //               builder: (context, snapshot) {
                //                 return ForgotPasswordVerificationPage();
                //               })),
                //     );
                //   },
                // ),
                // Divider(
                //   color: Theme.of(context).primaryColor,
                //   height: 1,
                // ),
                ListTile(
                    leading: Icon(
                      Icons.logout_rounded,
                      size: _drawerIconSize,
                      color: Theme.of(context).accentColor,
                    ),
                    title: Text(
                      'Logout',
                      style: TextStyle(
                          fontSize: _drawerFontSize,
                          color: Theme.of(context).accentColor),
                    ),
                    onTap: () => FirebaseAuth.instance.signOut())
              ]))),
      body: SingleChildScrollView(
          child: Stack(
        children: [
          Container(
            height: 100,
            child: HeaderWidget(100, false, Icons.house_rounded),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(width: 5, color: Colors.white),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 20,
                        offset: const Offset(5, 5),
                      ),
                    ],
                  ),
                  child:
                      Icon(Icons.person, size: 80, color: Colors.grey.shade300),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Samuel",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.only(left: 8.0, bottom: 4.0),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "User Information",
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Card(
                        child: Container(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.all(15),
                          child: Column(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  ...ListTile.divideTiles(
                                    color: Colors.grey,
                                    tiles: [
                                      ListTile(
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 12, vertical: 4),
                                        leading: Icon(Icons.my_location),
                                        title: Text("Location"),
                                        subtitle: Text("Germany"),
                                      ),
                                      ListTile(
                                        leading: Icon(Icons.email),
                                        title: Text("Email"),
                                        subtitle: Text(user.email!),
                                      ),
                                      ListTile(
                                        leading: Icon(Icons.phone),
                                        title: Text("Phone"),
                                        subtitle: Text("99--99876-56"),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }

  Future fetchOffers() async {
    final offerings = await PurchaseApi.fetchOffers();

    if (offerings.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('No Plans Found'),
      ));
    } else {
      final packages = offerings
          .map((offer) => offer.availablePackages)
          .expand((pair) => pair)
          .toList();
    }
  }
}
