import 'package:flutter/material.dart';

class bodyweight extends StatelessWidget {
  const bodyweight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
          'Bodyweight',
        )),
        body: Center(
          child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 5.0, top: 35.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text('Woche Eins',
                        style: TextStyle(
                            color: Colors.pink.shade900,
                            fontWeight: FontWeight.bold,
                            fontSize: 27.0))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20.0, top: 35.0, left: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('-Tag 1 Push',
                        style: TextStyle(
                            color: Colors.pink.shade900,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0))
                  ],
                ),
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(columns: [
                    DataColumn(label: Text('Übung')),
                    DataColumn(label: Text('Wiederholungen')),
                    DataColumn(label: Text('Restzeit'))
                  ], rows: [
                    DataRow(cells: [
                      DataCell(Text('Shoulder Taps')),
                      DataCell(Text('3x20s')),
                      DataCell(Text('45s'))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Push Ups')),
                      DataCell(Text('2 versh 10,9,7 ... 1,2,3')),
                      DataCell(Text('60s'))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Diamond incline')),
                      DataCell(Text('4x10')),
                      DataCell(Text('60s'))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Plank')),
                      DataCell(Text('4x60s')),
                      DataCell(Text('60s'))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Crunches')),
                      DataCell(Text('3x25s')),
                      DataCell(Text('30s'))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Russian twists')),
                      DataCell(Text('3x20')),
                      DataCell(Text('20s'))
                    ]),
                  ])),
              Padding(
                padding: EdgeInsets.only(bottom: 20.0, top: 35.0, left: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('-Tag 2 Beine',
                        style: TextStyle(
                            color: Colors.pink.shade900,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0))
                  ],
                ),
              ),
              Expanded(
                  child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(columns: [
                  DataColumn(label: Text('Übung')),
                  DataColumn(label: Text('Wiederholungen')),
                  DataColumn(label: Text('Restzeit'))
                ], rows: [
                  DataRow(cells: [
                    DataCell(Text('Kniehebelauf + anfersen')),
                    DataCell(Text('3x30s')),
                    DataCell(Text('60s'))
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Squats')),
                    DataCell(Text('X100')),
                    DataCell(Text('Soviel wie nötig'))
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Jump Squats')),
                    DataCell(Text('4x10')),
                    DataCell(Text('60s'))
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Ausfallschritte')),
                    DataCell(Text('4x40s')),
                    DataCell(Text('120s'))
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Kickbacks')),
                    DataCell(Text('3x12s')),
                    DataCell(Text('30s'))
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Burpees')),
                    DataCell(Text('4x20')),
                    DataCell(Text('60s'))
                  ]),
                ]),
              )),
              Padding(
                padding: EdgeInsets.only(bottom: 20.0, top: 35.0, left: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('-Tag 3 Pull',
                        style: TextStyle(
                            color: Colors.pink.shade900,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0))
                  ],
                ),
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(dataRowHeight: 75.0, columns: [
                    DataColumn(label: Text('Übung')),
                    DataColumn(label: Text('Wiederholungen')),
                    DataColumn(label: Text('Restzeit'))
                  ], rows: [
                    DataRow(cells: [
                      DataCell(Text('Superman hold')),
                      DataCell(Text('3x12, 3s oben halten')),
                      DataCell(Text('30s'))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Handtuch superman (latziehen)')),
                      DataCell(Text('3x12')),
                      DataCell(Text('45'))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Birddog')),
                      DataCell(Text('3x10')),
                      DataCell(Text('60s'))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Plank row')),
                      DataCell(Text('4x12')),
                      DataCell(Text('60-90s'))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Lying extensions')),
                      DataCell(Text('3x12')),
                      DataCell(Text('60s'))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Seitliche crunches')),
                      DataCell(Text('4x30')),
                      DataCell(Text('30s'))
                    ]),
                  ])),
              Padding(
                padding: EdgeInsets.only(bottom: 20.0, top: 35.0, left: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('-Tag 4 focus core',
                        style: TextStyle(
                            color: Colors.pink.shade900,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0))
                  ],
                ),
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(dataRowHeight: 75.0, columns: [
                    DataColumn(label: Text('Übung')),
                    DataColumn(label: Text('Wiederholungen')),
                    DataColumn(label: Text('Restzeit'))
                  ], rows: [
                    DataRow(cells: [
                      DataCell(Text('Knee-elbow, m.climbers,plank')),
                      DataCell(Text('X20, x20, x30s   3 runden')),
                      DataCell(Text('90s'))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Explosiv pushups')),
                      DataCell(Text('4x12')),
                      DataCell(Text('60'))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Schulterbrücke')),
                      DataCell(Text('5x15')),
                      DataCell(Text('60s'))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Thoracic rotation')),
                      DataCell(Text('3x10')),
                      DataCell(Text('60s'))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Kickbacks')),
                      DataCell(Text('3x12')),
                      DataCell(Text('45s'))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Seitstütz')),
                      DataCell(Text('3x20')),
                      DataCell(Text('20s'))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Reverse plank')),
                      DataCell(Text('3x30')),
                      DataCell(Text('30s'))
                    ]),
                  ])),
              Padding(
                padding: EdgeInsets.only(bottom: 5.0, top: 35.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text('Woche Zwei',
                        style: TextStyle(
                            color: Colors.pink.shade900,
                            fontWeight: FontWeight.bold,
                            fontSize: 27.0))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20.0, top: 35.0, left: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('-Tag Beine (30 min)',
                        style: TextStyle(
                            color: Colors.pink.shade900,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0))
                  ],
                ),
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(columns: [
                    DataColumn(label: Text('Übung')),
                    DataColumn(label: Text('Wiederholungen')),
                    DataColumn(label: Text('Restzeit'))
                  ], rows: [
                    DataRow(cells: [
                      DataCell(Text('Jump Squats')),
                      DataCell(Text('4x20s')),
                      DataCell(Text('1min rest'))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Stiff db deadlifts')),
                      DataCell(Text('4x20s')),
                      DataCell(Text('1min rest'))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('DB Ausfallschritte')),
                      DataCell(Text('4x30s /15s pro seite')),
                      DataCell(Text('45s rest'))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Slide leg curls')),
                      DataCell(Text('3x20s')),
                      DataCell(Text('45s rest'))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Skaters')),
                      DataCell(Text('4x20s')),
                      DataCell(Text('30s rest'))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Plank rotation')),
                      DataCell(Text('3x40s / 20s pro seite')),
                      DataCell(Text('30s rest'))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Plank')),
                      DataCell(Text('3x45s')),
                      DataCell(Text('30s rest'))
                    ])
                  ])),
              Padding(
                padding: EdgeInsets.only(bottom: 35.0, top: 35.0, left: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('-Tag Pause',
                        style: TextStyle(
                            color: Colors.pink.shade900,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20.0, top: 35.0, left: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('-Tag Oberkörper (35 min)',
                        style: TextStyle(
                            color: Colors.pink.shade900,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0))
                  ],
                ),
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(columns: [
                    DataColumn(label: Text('Übung')),
                    DataColumn(label: Text('Wiederholungen')),
                    DataColumn(label: Text('Restzeit'))
                  ], rows: [
                    DataRow(cells: [
                      DataCell(Text('Incline PushUps (Stuhl)')),
                      DataCell(Text('4x20s')),
                      DataCell(Text('1min rest'))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Indian Push Ups')),
                      DataCell(Text('3x15s')),
                      DataCell(Text('45s rest'))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Holzhacken Bauchlage')),
                      DataCell(Text('3x20s')),
                      DataCell(Text('45s rest'))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Lying back extensions')),
                      DataCell(Text('4x20s')),
                      DataCell(Text('45s rest'))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Dips (stuhl)')),
                      DataCell(Text('4x30s')),
                      DataCell(Text('1min rest'))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Hammer curls')),
                      DataCell(Text('4x30s')),
                      DataCell(Text('1min rest'))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Crunches')),
                      DataCell(Text('3x20s')),
                      DataCell(Text('Supersatz Pause 45s'))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Russian twists')),
                      DataCell(Text('3x20s')),
                      DataCell(Text('-'))
                    ])
                  ])),
              Padding(
                padding: EdgeInsets.only(bottom: 35.0, top: 35.0, left: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('-Tag Pause',
                        style: TextStyle(
                            color: Colors.pink.shade900,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20.0, top: 35.0, left: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('-Tag Ganzkörper HIIT (20 min)',
                        style: TextStyle(
                            color: Colors.pink.shade900,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0))
                  ],
                ),
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(columns: [
                    DataColumn(label: Text('Übung')),
                    DataColumn(label: Text('Wiederholungen')),
                    DataColumn(label: Text('Restzeit'))
                  ], rows: [
                    DataRow(cells: [
                      DataCell(Text('Hampelmänner nach vorne')),
                      DataCell(Text('Jede Übung 30s und nach jeder')),
                      DataCell(Text(''))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('In der Hocke Lat dehnen')),
                      DataCell(Text('Übung 20s Pause')),
                      DataCell(Text(''))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Push Ups')),
                      DataCell(Text('Wenn du alle übungen gemacht ')),
                      DataCell(Text(''))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Mountain climbers')),
                      DataCell(Text('hast 2-3min Pause')),
                      DataCell(Text(''))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Cursty lunges (zur seite)')),
                      DataCell(Text('Davon ins gesamt 3 Runden')),
                      DataCell(Text(''))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Sprinter Lunges')),
                      DataCell(Text('-')),
                      DataCell(Text(''))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Diamond Push Ups')),
                      DataCell(Text('-')),
                      DataCell(Text(''))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Half Burpees')),
                      DataCell(Text('-')),
                      DataCell(Text(''))
                    ])
                  ])),
            ],
          ),
        ));
  }
}
