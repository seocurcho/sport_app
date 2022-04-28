import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sport_app/ui/navpages/main_page.dart';
import 'package:sport_app/ui/navpages/my_page.dart';
import 'package:sport_app/ui/page_s/login_screen.dart';

import '../../page_s/widget/Authpage.dart';

// class MainPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return CupertinoTabScaffold(
//       tabBar: CupertinoTabBar(items: const <BottomNavigationBarItem>[
//         BottomNavigationBarItem(icon: Icon(Icons.home)),
//         BottomNavigationBarItem(icon: Icon(Icons.person))
//       ]),
//       tabBuilder: (context, index) {
//         switch (index) {
//           case 0:
//             return CupertinoTabView(builder: (context) {
//               return CupertinoPageScaffold(
//                 child: Homepage(),
//               );
//             });
//           case 1:
//             return CupertinoTabView(builder: (context) {
//               return CupertinoPageScaffold(
//                 child: ProfilePage(),
//               );
//             });
//           default:
//             return CupertinoTabView(builder: (context) {
//               return CupertinoPageScaffold(child: Homepage());
//             });
//         }
//       },
//     );
//   }
// }

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final pages = [
    StreamBuilder<Object>(
        stream: null,
        builder: (context, snapshot) {
          return Homepage();
        }),
    StreamBuilder<Object>(
        stream: null,
        builder: (context, snapshot) {
          return StreamBuilder<User?>(
              stream: FirebaseAuth.instance.authStateChanges(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text('Something went wrong!'));
                }
                if (snapshot.hasData) {
                  return ProfilePage();
                } else {
                  return Authpage();
                }
              });
        })
  ];

  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
          index: currentIndex,
          children: pages,
        ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.grey.withOpacity(0.1),
            onTap: onTap,
            currentIndex: currentIndex,
            selectedItemColor: Colors.pink.shade400,
            unselectedItemColor: Colors.black.withOpacity(0.5),
            showSelectedLabels: true,
            showUnselectedLabels: false,
            elevation: 0,
            items: [
              BottomNavigationBarItem(label: ("home"), icon: Icon(Icons.apps)),
              BottomNavigationBarItem(
                  label: ("profil"), icon: Icon(Icons.person))
            ]));
  }
}
