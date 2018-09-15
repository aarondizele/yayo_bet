import 'package:flutter/material.dart';

class BetScreen extends StatefulWidget {
  @override
  _BetScreenState createState() => _BetScreenState();
}

class _BetScreenState extends State<BetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        elevation: 0.0,
        centerTitle: true,
        title: Text('Parier'),
        actions: <Widget>[
          FlatButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/payment-screen');
            },
            child: Text('PAYER',
                style: Theme.of(context).textTheme.subhead.copyWith(
                      color: Colors.tealAccent,
                    )),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(50.0))),
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 16.0),
        children: <Widget>[
          ListTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Entrer votre mise en Franc Congolais :'),
                TextField(decoration: InputDecoration(hintText: 'CDF  0.00')),
              ],
            ),
          ),
          ListTile(
            title: Text('Cotes :'),
            trailing: Text('7.83'),
          ),
          ListTile(
            title: Text('A gagné :'.toUpperCase()),
            trailing: Text(
              'CDF  0.00',
              style: Theme.of(context).textTheme.body2.copyWith(fontSize: 16.0),
            ),
          ),
        ],
      ),
    );
  }
}
