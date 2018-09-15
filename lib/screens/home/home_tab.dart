import 'package:flutter/material.dart';
import '../detail_screen.dart';

class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  final Set _saved = new Set();

  var _matchs = List()
    ..add({
      'id': 1,
      'teams': {'team1': 'FC Barcelona', 'team2': 'Real Madrid'},
      'time': '1 - 0',
      'cotes': {'cote1': '2.03', 'cote2': '3.26', 'cote3': '1.98'},
      'championship': 'LaLiga',
      'classement': {'team1': '2', 'team2': '1'}
    })
    ..add({
      'id': 1,
      'teams': {'team1': 'FC Seville', 'team2': 'Paris Saint Germain'},
      'time': '19:30',
      'cotes': {'cote1': '4.09', 'cote2': '1.08', 'cote3': '5.46'},
      'championship': 'UEFA Champions League',
      'classement': {'team1': '13', 'team2': '4'}
    })
    ..add({
      'id': 1,
      'teams': {'team1': 'Bayern Munich', 'team2': 'FC Porto'},
      'time': '19:30',
      'cotes': {'cote1': '1.02', 'cote2': '4.99', 'cote3': '11.15'},
      'championship': 'Match Amical',
      'classement': {'team1': '0', 'team2': '0'}
    })
    ..add({
      'id': 1,
      'teams': {'team1': 'AS Monaco', 'team2': 'Tottenham'},
      'time': '19:45',
      'cotes': {'cote1': '5.40', 'cote2': '1.24', 'cote3': '1.95'},
      'championship': 'UEFA Champions League',
      'classement': {'team1': '1', 'team2': '3'}
    })
    ..add({
      'id': 1,
      'teams': {'team1': 'Juventus', 'team2': 'Fiorentina'},
      'time': '20:30',
      'cotes': {'cote1': '3.90', 'cote2': '2.38', 'cote3': '1.25'},
      'championship': 'Serie A',
      'classement': {'team1': '10', 'team2': '3'}
    })
    ..add({
      'id': 1,
      'teams': {'team1': 'FC Barcelona', 'team2': 'Real Madrid'},
      'time': '1 - 0',
      'cotes': {'cote1': '2.39', 'cote2': '1.48', 'cote3': '3.23'},
      'championship': 'LaLiga',
      'classement': {'team1': '1', 'team2': '3'}
    })
    ..add({
      'id': 1,
      'teams': {'team1': 'Liverpool', 'team2': 'AC Milan'},
      'time': '1 - 3',
      'cotes': {'cote1': '2.99', 'cote2': '1.38', 'cote3': '3.37'},
      'championship': 'UEFA Champions League',
      'classement': {'team1': '2', 'team2': '4'}
    })
    ..add({
      'id': 1,
      'teams': {'team1': 'FC Barcelona', 'team2': 'Real Madrid'},
      'time': '1 - 0',
      'cotes': {'cote1': '2.03', 'cote2': '3.26', 'cote3': '1.98'},
      'championship': 'LaLiga',
      'classement': {'team1': '1', 'team2': '3'}
    })
    ..add({
      'id': 1,
      'teams': {'team1': 'FC Seville', 'team2': 'Paris Saint Germain'},
      'time': '19:30',
      'cotes': {'cote1': '4.09', 'cote2': '1.08', 'cote3': '5.46'},
      'championship': 'UEFA Champions League',
      'classement': {'team1': '1', 'team2': '3'}
    })
    ..add({
      'id': 1,
      'teams': {'team1': 'Bayern Munich', 'team2': 'FC Porto'},
      'time': '19:30',
      'cotes': {'cote1': '1.02', 'cote2': '4.99', 'cote3': '11.15'},
      'championship': 'UEFA Champions League',
      'classement': {'team1': '1', 'team2': '3'}
    })
    ..add({
      'id': 1,
      'teams': {'team1': 'AS Monaco', 'team2': 'Tottenham'},
      'time': '19:45',
      'cotes': {'cote1': '5.40', 'cote2': '1.24', 'cote3': '1.95'},
      'championship': 'UEFA Champions League',
      'classement': {'team1': '1', 'team2': '3'}
    })
    ..add({
      'id': 1,
      'teams': {'team1': 'Juventus', 'team2': 'Fiorentina'},
      'time': '20:30',
      'cotes': {'cote1': '3.90', 'cote2': '2.38', 'cote3': '1.25'},
      'championship': 'Serie A',
      'classement': {'team1': '10', 'team2': '3'}
    })
    ..add({
      'id': 1,
      'teams': {'team1': 'FC Barcelona', 'team2': 'Real Madrid'},
      'time': '1 - 0',
      'cotes': {'cote1': '2.39', 'cote2': '1.48', 'cote3': '3.23'},
      'championship': 'LaLiga',
      'classement': {'team1': '1', 'team2': '3'}
    })
    ..add({
      'id': 1,
      'teams': {'team1': 'Liverpool', 'team2': 'AC Milan'},
      'time': '1 - 3',
      'cotes': {'cote1': '2.99', 'cote2': '1.38', 'cote3': '3.37'},
      'championship': 'UEFA Champions League',
      'classement': {'team1': '2', 'team2': '4'}
    })
    ..add({
      'id': 1,
      'teams': {'team1': 'FC Barcelona', 'team2': 'Real Madrid'},
      'time': '1 - 0',
      'cotes': {'cote1': '2.03', 'cote2': '3.26', 'cote3': '1.98'},
      'championship': 'LaLiga',
      'classement': {'team1': '1', 'team2': '3'}
    })
    ..add({
      'id': 1,
      'teams': {'team1': 'FC Seville', 'team2': 'Paris Saint Germain'},
      'time': '19:30',
      'cotes': {'cote1': '4.09', 'cote2': '1.08', 'cote3': '5.46'},
      'championship': 'UEFA Champions League',
      'classement': {'team1': '1', 'team2': '3'}
    })
    ..add({
      'id': 1,
      'teams': {'team1': 'Bayern Munich', 'team2': 'FC Porto'},
      'time': '19:30',
      'cotes': {'cote1': '1.02', 'cote2': '4.99', 'cote3': '11.15'},
      'championship': 'UEFA Champions League',
      'classement': {'team1': '1', 'team2': '3'}
    })
    ..add({
      'id': 1,
      'teams': {'team1': 'AS Monaco', 'team2': 'Tottenham'},
      'time': '19:45',
      'cotes': {'cote1': '5.40', 'cote2': '1.24', 'cote3': '1.95'},
      'championship': 'UEFA Champions League',
      'classement': {'team1': '1', 'team2': '3'}
    })
    ..add({
      'id': 1,
      'teams': {'team1': 'Juventus', 'team2': 'Fiorentina'},
      'time': '20:30',
      'cotes': {'cote1': '3.90', 'cote2': '2.38', 'cote3': '1.25'},
      'championship': 'Serie A',
      'classement': {'team1': '10', 'team2': '3'}
    })
    ..add({
      'id': 1,
      'teams': {'team1': 'FC Barcelona', 'team2': 'Real Madrid'},
      'time': '1 - 0',
      'cotes': {'cote1': '2.39', 'cote2': '1.48', 'cote3': '3.23'},
      'championship': 'LaLiga',
      'classement': {'team1': '1', 'team2': '3'}
    })
    ..add({
      'id': 1,
      'teams': {'team1': 'Liverpool', 'team2': 'AC Milan'},
      'time': '1 - 3',
      'cotes': {'cote1': '2.99', 'cote2': '1.38', 'cote3': '3.37'},
      'championship': 'UEFA Champions League',
      'classement': {'team1': '2', 'team2': '4'}
    });

  bool showLoadingDialog() {
    return false;
  }

  getBody() {
    if (showLoadingDialog()) {
      return getProgressDialog();
    } else {
      return getListView();
    }
  }

  getProgressDialog() {
    return Center(
        child: CircularProgressIndicator(backgroundColor: Colors.tealAccent));
  }

  ListView getListView() => ListView.builder(
      padding: EdgeInsets.only(top: 8.0, bottom: 16.0),
      itemCount: _matchs.length,
      itemBuilder: (BuildContext context, int index) {
        final match = _matchs[index];
        return matchBox(match);
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          brightness: Brightness.dark,
          title: new Text('YAYO',
              style: TextStyle(fontFamily: 'Rubik', fontSize: 24.0)),
          elevation: 0.0,
          centerTitle: true,
          leading: IconButton(
            tooltip: 'En direct',
            icon: Icon(Icons.timer),
            onPressed: () {
              Navigator.of(context).pushNamed('/cart-screen');
            },
          ),
          actions: <Widget>[
            IconButton(
              tooltip: 'Catégories',
              icon: Icon(Icons.tune),
              onPressed: () {
                Navigator.of(context).pushNamed('/category-screen');
              },
            )
          ],
        ),
        body: getBody());
  }

  Widget matchBox(match) {
    bool _alreadySaved1 = false;
    bool _alreadySaved2 = false;
    bool _alreadySaved3 = false;
    if (_saved.contains(match["cotes"]["cote1"])) {
      _alreadySaved1 = true;
    } else if (_saved.contains(match["cotes"]["cote2"])) {
      _alreadySaved2 = true;
    } else if (_saved.contains(match["cotes"]["cote3"])) {
      _alreadySaved3 = true;
    } else {
      _alreadySaved1 = false;
      _alreadySaved2 = false;
      _alreadySaved3 = false;
    }

    return Card(
        elevation: 1.0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              ///
              FlatButton(
                textTheme: ButtonTextTheme.normal,
                onPressed: () async {
                  await Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailScreen(
                                match: match,
                                saved: _saved,
                              )));
                },
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              alignment: Alignment.center,
                              child: Text(match["classement"]["team1"],
                                  style: Theme
                                      .of(context)
                                      .textTheme
                                      .caption
                                      .copyWith(
                                        color: Colors.white,
                                      )),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50.0),
                                  color: Colors.greenAccent),
                              width: 16.0,
                              height: 16.0,
                            ),
                            SizedBox(
                              width: 6.0,
                            ),
                            Text(
                              match["teams"]["team1"],
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 4.0),
                          child: Text(
                            'v',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              match["teams"]["team2"],
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 6.0,
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: Text(match["classement"]["team2"],
                                  style: Theme
                                      .of(context)
                                      .textTheme
                                      .caption
                                      .copyWith(
                                        color: Colors.white,
                                      )),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50.0),
                                  color: Colors.redAccent),
                              width: 16.0,
                              height: 16.0,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          match["time"],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(match["championship"],
                            style: Theme.of(context).textTheme.body1),
                        Text('05 Août',
                            style: Theme.of(context).textTheme.body1),
                      ],
                    )
                  ],
                ),
              ),

              ///
              SizedBox(
                height: 8.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                      child: GestureDetector(
                    child: Container(
                      padding: _alreadySaved1
                          ? EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.0)
                          : EdgeInsets.fromLTRB(10.0, 6.0, 6.0, 6.0),
                      margin: EdgeInsets.only(right: 2.0),
                      decoration: BoxDecoration(
                          color: _alreadySaved1
                              ? Colors.blueAccent
                              : Colors.black38,
                          borderRadius: const BorderRadius.all(
                              const Radius.circular(16.0))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          _alreadySaved1
                              ? Icon(Icons.done)
                              : Text('1',
                                  style: Theme.of(context).textTheme.subhead),
                          Text(match["cotes"]["cote1"],
                              style: Theme.of(context).textTheme.subhead),
                        ],
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        _saved.remove(match["cotes"]["cote2"]);
                        _saved.remove(match["cotes"]["cote3"]);
                        if (_alreadySaved1) {
                          _saved.remove(match["cotes"]["cote1"]);
                        } else {
                          _saved.add(match["cotes"]["cote1"]);
                        }
                      });
                    },
                  )),
                  Expanded(
                      child: GestureDetector(
                    child: Container(
                      padding: _alreadySaved3
                          ? EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.0)
                          : EdgeInsets.fromLTRB(10.0, 6.0, 6.0, 6.0),
                      margin: EdgeInsets.symmetric(horizontal: 2.0),
                      decoration: BoxDecoration(
                          color: _alreadySaved3
                              ? Colors.blueAccent
                              : Colors.black38,
                          borderRadius: const BorderRadius.all(
                              const Radius.circular(16.0))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          _alreadySaved3
                              ? Icon(Icons.done)
                              : Text('X',
                                  style: Theme.of(context).textTheme.subhead),
                          Text(match["cotes"]["cote3"],
                              style: Theme.of(context).textTheme.subhead),
                        ],
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        _saved.remove(match["cotes"]["cote1"]);
                        _saved.remove(match["cotes"]["cote2"]);
                        if (_alreadySaved3) {
                          _saved.remove(match["cotes"]["cote3"]);
                        } else {
                          _saved.add(match["cotes"]["cote3"]);
                        }
                      });
                    },
                  )),
                  Expanded(
                      child: GestureDetector(
                    child: Container(
                      padding: _alreadySaved2
                          ? EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.0)
                          : EdgeInsets.fromLTRB(10.0, 6.0, 6.0, 6.0),
                      margin: EdgeInsets.only(left: 2.0),
                      decoration: BoxDecoration(
                          color: _alreadySaved2
                              ? Colors.blueAccent
                              : Colors.black38,
                          borderRadius: const BorderRadius.all(
                              const Radius.circular(16.0))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          _alreadySaved2
                              ? Icon(Icons.done)
                              : Text('2',
                                  style: Theme.of(context).textTheme.subhead),
                          Text(match["cotes"]["cote2"],
                              style: Theme.of(context).textTheme.subhead)
                        ],
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        _saved.remove(match["cotes"]["cote1"]);
                        _saved.remove(match["cotes"]["cote3"]);
                        if (_alreadySaved2) {
                          _saved.remove(match["cotes"]["cote2"]);
                        } else {
                          _saved.add(match["cotes"]["cote2"]);
                        }
                      });
                    },
                  )),
                ],
              )
            ],
          ),
        ));
  }
}
