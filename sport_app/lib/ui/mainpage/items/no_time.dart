import 'package:flutter/material.dart';

class noTime extends StatelessWidget {
  const noTime({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
          'No time Workout',
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
                padding: EdgeInsets.only(
                    bottom: 20.0, top: 35.0, left: 15.0, right: 15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                        '''Workout für Unternehmer bzw Menschen, die wenig Zeit haben und trotzdem Erfolge im Sport erzielen wollen. Sei es Muskelaufbau oder Fettverbrennen, dieses Workout ist sehr effizient und bietet dir die best möglichen Ergebnisse in kurzer Trainings-Zeit.
Die Übungen mit den Hanteln können alternativ auch mit Rucksack oder ganz ohne ausgeführt werden.''',
                        style: TextStyle(
                            color: Colors.pink.shade900,
                            fontWeight: FontWeight.normal,
                            fontSize: 12.0))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20.0, top: 35.0, left: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('-Tag Beine/Po/Bauch (30 min)',
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
                      DataCell(Text('DB Front Squats')),
                      DataCell(Text('4x40s')),
                      DataCell(Text('45s rest'))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Donkey kicks')),
                      DataCell(Text('3x40s – 20s pro Seite')),
                      DataCell(Text('30s rest'))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Bulgarian Split Squats')),
                      DataCell(Text('3x40s – 20s pro Seite')),
                      DataCell(Text('60s rest'))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Db Glute Bridge')),
                      DataCell(Text('4x30s')),
                      DataCell(Text('45s rest bis hier hin ~ 19min'))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Mountain climber')),
                      DataCell(Text('4x25s')),
                      DataCell(Text('30s rest'))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Bicycle Crunch')),
                      DataCell(Text('4x25s')),
                      DataCell(Text('30s rest 720'))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Plank')),
                      DataCell(Text('4x30s')),
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
                    Text('-Tag Oberkörper (40 min)',
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
                child: DataTable(dataRowHeight: 100.0, columns: [
                  DataColumn(label: Text('Übung')),
                  DataColumn(label: Text('Wiederholungen')),
                  DataColumn(label: Text('Restzeit'))
                ], rows: [
                  DataRow(cells: [
                    DataCell(Text('Push ups')),
                    DataCell(Text('4x20s')),
                    DataCell(Text('45s rest'))
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Superman + hold')),
                    DataCell(Text('4x30s')),
                    DataCell(Text('45s rest'))
                  ]),
                  DataRow(cells: [
                    DataCell(Text('DB floor press')),
                    DataCell(Text('4x30s')),
                    DataCell(Text('Super Set – 1 min Pause'))
                  ]),
                  DataRow(cells: [
                    DataCell(Text('DB rows')),
                    DataCell(Text('4x30s')),
                    DataCell(Text('-'))
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Biceps curls')),
                    DataCell(Text('3x25s')),
                    DataCell(Text('-'))
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Triceps Extensions')),
                    DataCell(Text('3x30s')),
                    DataCell(Text('-'))
                  ]),
                  DataRow(cells: [
                    DataCell(Text('''Lateral Raise Complex 
Frontheben
Seitliches heben
vorgebeugtes seitenheben''')),
                    DataCell(Text('3x10x10x10')),
                    DataCell(Text('1 min Rest (bis hierhin ~30min)'))
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Bird dog')),
                    DataCell(Text('3x20 /10pro Seite')),
                    DataCell(Text('30s rest'))
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Plank')),
                    DataCell(Text('3x45s')),
                    DataCell(Text('30s rest'))
                  ])
                ]),
              )),
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
                    Text('-Tag Ganzörper (35 min)',
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
                      DataCell(Text('Hampelmänner')),
                      DataCell(Text('3x20s')),
                      DataCell(Text('''Warm-Up Zirkel
alles hinter einander, 30s Pause'''))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Schulterklopfers')),
                      DataCell(Text('3x20s')),
                      DataCell(Text('-'))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Knie-zum-Ellenbogen')),
                      DataCell(Text('3x20s')),
                      DataCell(Text('-'))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Push-Ups')),
                      DataCell(Text('120')),
                      DataCell(Text('''Zirkel von jeder Übung 20 Wdh,
dann 2 min Pause = 6 Runden'''))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Superman latziehen')),
                      DataCell(Text('120')),
                      DataCell(Text('-'))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Squats ')),
                      DataCell(Text('120')),
                      DataCell(Text('-'))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Crunches')),
                      DataCell(Text('120')),
                      DataCell(Text('-'))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Burpees')),
                      DataCell(Text('4x20s')),
                      DataCell(Text('20s rest'))
                    ])
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

// class NoTime extends StatefulWidget {
// const NoTime({Key? key}) : super(key: key);

// @override
// State<NoTime> createState() => _NoTimeState();
// }

// class _NoTimeState extends State<NoTime> {
// @override
// String dropdownValue = 'No time Workout';

// @override
// Widget build(BuildContext context) {
//   return DropdownButton<String>(
//     value: dropdownValue,
//     icon: const Icon(Icons.arrow_downward),
//     elevation: 16,
//     style: const TextStyle(
//       color: Colors.pink,
//     ),
//     underline: Container(
//       height: 1,
//       color: Colors.pink.shade800,
//     ),
//     onChanged: (String? newValue) {
//       setState(() {
//         dropdownValue = newValue!;
//       });
//     },
//     items: <String>['1 Woche', '2 Woche', '3 Woche', '4 Woche']
//         .map<DropdownMenuItem<String>>((String value) {
//       return DropdownMenuItem<String>(
//         value: value,
//         child: Text(value),
//       );
//     }).toList(),
//   );
// }
// }
