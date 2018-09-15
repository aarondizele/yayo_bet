import 'package:flutter/material.dart';

class CartTab extends StatefulWidget {
  @override
  _CartTabState createState() => _CartTabState();
}

class _CartTabState extends State<CartTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.0,
        title: Text('Mon panier'),
        actions: <Widget>[
          FlatButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/bet-screen');
            },
            child: Text('PARIER',
                style: Theme.of(context).textTheme.subhead.copyWith(
                      color: Colors.tealAccent,
                    )),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(50.0))),
          )
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          ListTile(
            title: Text('1. Real Madrid v FC Barcelona'),
            subtitle: Row(
              children: <Widget>[
                SizedBox(
                  width: 12.0,
                ),
                Text('Type: 1x2'),
                SizedBox(
                  width: 50.0,
                ),
                Text('Cote: 4.0')
              ],
            ),
            trailing: IconButton(
              icon: Icon(Icons.cancel),
              onPressed: () {},
            ),
          ),
          ListTile(
            title: Text('2. Juventus v FC Fiorentina'),
            subtitle: Row(
              children: <Widget>[
                SizedBox(
                  width: 12.0,
                ),
                Text('Type: 1x2'),
                SizedBox(
                  width: 50.0,
                ),
                Text('Cote: 3.25')
              ],
            ),
            trailing: IconButton(
              icon: Icon(
                Icons.cancel,
              ),
              onPressed: () {},
            ),
          ),
          ListTile(
            title: Text('3. FC Seville v Manchester United'),
            subtitle: Row(
              children: <Widget>[
                SizedBox(
                  width: 12.0,
                ),
                Text('Type: 1x2'),
                SizedBox(
                  width: 50.0,
                ),
                Text('Cote: 1.08')
              ],
            ),
            trailing: IconButton(
              icon: Icon(Icons.cancel),
              onPressed: () {},
            ),
          ),
          ListTile(
            title: Text('4. AS Monaco v Tottenham'),
            subtitle: Row(
              children: <Widget>[
                SizedBox(
                  width: 12.0,
                ),
                Text('Type: 1x2'),
                SizedBox(
                  width: 50.0,
                ),
                Text('Cote: 1.08')
              ],
            ),
            trailing: IconButton(
              icon: Icon(Icons.cancel),
              onPressed: () {},
            ),
          ),
          ListTile(
            title: Text('5. Bayern Munich v FC Porto'),
            subtitle: Row(
              children: <Widget>[
                SizedBox(
                  width: 12.0,
                ),
                Text('Type: 1x2'),
                SizedBox(
                  width: 50.0,
                ),
                Text('Cote: 1.08')
              ],
            ),
            trailing: IconButton(
              icon: Icon(Icons.cancel),
              onPressed: () {},
            ),
          ),
          ListTile(
            title: Text('3. FC Seville v Manchester United'),
            subtitle: Row(
              children: <Widget>[
                SizedBox(
                  width: 12.0,
                ),
                Text('Type: 1x2'),
                SizedBox(
                  width: 50.0,
                ),
                Text('Cote: 1.08')
              ],
            ),
            trailing: IconButton(
              icon: Icon(Icons.cancel),
              onPressed: () {},
            ),
          ),
          ListTile(
            title: Text('4. AS Monaco v Tottenham'),
            subtitle: Row(
              children: <Widget>[
                SizedBox(
                  width: 12.0,
                ),
                Text('Type: 1x2'),
                SizedBox(
                  width: 50.0,
                ),
                Text('Cote: 1.08')
              ],
            ),
            trailing: IconButton(
              icon: Icon(Icons.cancel),
              onPressed: () {},
            ),
          ),
          ListTile(
            title: Text('5. Bayern Munich v FC Porto'),
            subtitle: Row(
              children: <Widget>[
                SizedBox(
                  width: 12.0,
                ),
                Text('Type: 1x2'),
                SizedBox(
                  width: 50.0,
                ),
                Text('Cote: 1.08')
              ],
            ),
            trailing: IconButton(
              icon: Icon(Icons.cancel),
              onPressed: () {},
            ),
          ),
          // ListTile(
          //   title: Text('Mise :'),
          //   trailing: Container(
          //     width: 50.0,
          //     child: TextField(
          //       decoration: InputDecoration(hintText: 'CDF 0.00', isDense: true),
          //     ),
          //   ),
          // ),
          SizedBox(height: 8.0),
          FlatButton(
            child: Text('VIDER LE PANIER',
                style: Theme
                    .of(context)
                    .textTheme
                    .subhead
                    .copyWith(color: Colors.redAccent)),
            onPressed: () {},
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
          ),
          SizedBox(height: 20.0),
        ],
      ),
    );
  }
}