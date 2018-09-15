import 'package:flutter/material.dart';

class HistoricalTab extends StatefulWidget {
  @override
  _HistoricalTabState createState() => _HistoricalTabState();
}

class _HistoricalTabState extends State<HistoricalTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        brightness: Brightness.dark,
        elevation: 0.0,
        title: Text('Historique'),
      ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          ListTile(
            onTap: () {},
            title: Text('Mardi 07 Août 2018 à 12:30\''),
            subtitle: Text('Evénements: 3'),
            trailing: Text(
              'GAGNÉ', 
              style: TextStyle(color: Colors.tealAccent)
            ),
          ),
          ListTile(
            onTap: () {},
            title: Text('Mercredi 08 Août 2018 à 12:30\''),
            subtitle: Text('Evénements: 5'),
            trailing: Text(
              'GAGNÉ', 
              style: TextStyle(color: Colors.tealAccent)              
            ),
          ),
          ListTile(
            onTap: () {},
            title: Text('Mercredi 08 Août 2018 à 12:30\''),
            subtitle: Text('Evénements: 2'),
            trailing: Text(
              'PERDU', 
              style: TextStyle(color: Colors.redAccent)              
            ),
          ),
        ],
      ),
    );
  }
}
