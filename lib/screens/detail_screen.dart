import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  DetailScreen({Key key, @required this.match, @required this.saved})
      : super(key: key);
  final match;
  final Set saved;

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  Widget getBody() {
    bool _alreadySaved1 = false;
    bool _alreadySaved2 = false;
    bool _alreadySaved3 = false;

    if (widget.saved.contains(widget.match["cotes"]["cote1"])) {
      setState(() {
        _alreadySaved1 = true;
      });
    } else if (widget.saved.contains(widget.match["cotes"]["cote2"])) {
      setState(() {
        _alreadySaved2 = true;
      });
    } else if (widget.saved.contains(widget.match["cotes"]["cote3"])) {
      setState(() {
        _alreadySaved3 = true;
      });
    } else {
      setState(() {
        _alreadySaved1 = false;
        _alreadySaved2 = false;
        _alreadySaved3 = false;
      });
    }

    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
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
                  child: Text(widget.match["classement"]["team1"],
                      style: Theme.of(context).textTheme.caption.copyWith(
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
                  widget.match["teams"]["team1"],
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
                  widget.match["teams"]["team2"],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 6.0,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(widget.match["classement"]["team2"],
                      style: Theme.of(context).textTheme.caption.copyWith(
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
          height: 12.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              widget.match["time"],
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(widget.match["championship"]),
            Text('05 Août'),
          ],
        ),
        SizedBox(
          height: 12.0,
        ),
        Card(
            elevation: 1.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            child: Padding(
                padding: EdgeInsets.zero,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 12.0),
                            color: Colors.cyan,
                            child: Text(
                              'Normal',
                              style: Theme.of(context).textTheme.subhead,
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Expanded(
                                child: GestureDetector(
                              child: Container(
                                padding: _alreadySaved1
                                    ? EdgeInsets.symmetric(
                                        horizontal: 6.0, vertical: 2.0)
                                    : EdgeInsets.fromLTRB(10.0, 6.0, 6.0, 6.0),
                                margin: EdgeInsets.only(right: 2.0),
                                decoration: BoxDecoration(
                                    color: _alreadySaved1
                                        ? Colors.blueAccent
                                        : Colors.black38,
                                    borderRadius: const BorderRadius.all(
                                        const Radius.circular(16.0))),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    _alreadySaved1
                                        ? Icon(Icons.done)
                                        : Text('1',
                                            style: Theme
                                                .of(context)
                                                .textTheme
                                                .subhead),
                                    Text(widget.match["cotes"]["cote1"],
                                        style: Theme
                                            .of(context)
                                            .textTheme
                                            .subhead),
                                  ],
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  widget.saved
                                      .remove(widget.match["cotes"]["cote2"]);
                                  widget.saved
                                      .remove(widget.match["cotes"]["cote3"]);
                                  if (_alreadySaved1) {
                                    widget.saved
                                        .remove(widget.match["cotes"]["cote1"]);
                                  } else {
                                    widget.saved
                                        .add(widget.match["cotes"]["cote1"]);
                                  }
                                });
                              },
                            )),
                            Expanded(
                                child: GestureDetector(
                              child: Container(
                                padding: _alreadySaved3
                                    ? EdgeInsets.symmetric(
                                        horizontal: 6.0, vertical: 2.0)
                                    : EdgeInsets.fromLTRB(10.0, 6.0, 6.0, 6.0),
                                margin: EdgeInsets.symmetric(horizontal: 2.0),
                                decoration: BoxDecoration(
                                    color: _alreadySaved3
                                        ? Colors.blueAccent
                                        : Colors.black38,
                                    borderRadius: const BorderRadius.all(
                                        const Radius.circular(16.0))),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    _alreadySaved3
                                        ? Icon(Icons.done)
                                        : Text('X',
                                            style: Theme
                                                .of(context)
                                                .textTheme
                                                .subhead),
                                    Text(widget.match["cotes"]["cote3"],
                                        style: Theme
                                            .of(context)
                                            .textTheme
                                            .subhead),
                                  ],
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  widget.saved
                                      .remove(widget.match["cotes"]["cote1"]);
                                  widget.saved
                                      .remove(widget.match["cotes"]["cote2"]);
                                  if (_alreadySaved3) {
                                    widget.saved
                                        .remove(widget.match["cotes"]["cote3"]);
                                  } else {
                                    widget.saved
                                        .add(widget.match["cotes"]["cote3"]);
                                  }
                                });
                              },
                            )),
                            Expanded(
                                child: GestureDetector(
                              child: Container(
                                padding: _alreadySaved2
                                    ? EdgeInsets.symmetric(
                                        horizontal: 6.0, vertical: 2.0)
                                    : EdgeInsets.fromLTRB(10.0, 6.0, 6.0, 6.0),
                                margin: EdgeInsets.only(left: 2.0),
                                decoration: BoxDecoration(
                                    color: _alreadySaved2
                                        ? Colors.blueAccent
                                        : Colors.black38,
                                    borderRadius: const BorderRadius.all(
                                        const Radius.circular(16.0))),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    _alreadySaved2
                                        ? Icon(Icons.done)
                                        : Text('2',
                                            style: Theme
                                                .of(context)
                                                .textTheme
                                                .subhead),
                                    Text(widget.match["cotes"]["cote2"],
                                        style:
                                            Theme.of(context).textTheme.subhead)
                                  ],
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  widget.saved
                                      .remove(widget.match["cotes"]["cote1"]);
                                  widget.saved
                                      .remove(widget.match["cotes"]["cote3"]);
                                  if (_alreadySaved2) {
                                    widget.saved
                                        .remove(widget.match["cotes"]["cote2"]);
                                  } else {
                                    widget.saved
                                        .add(widget.match["cotes"]["cote2"]);
                                  }
                                });
                              },
                            )),
                          ],
                        ))
                  ],
                ))),
                SizedBox(
          height: 12.0,
        ),
        Card(
            elevation: 1.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            child: Padding(
                padding: EdgeInsets.zero,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 12.0),
                            color: Colors.green,
                            child: Text(
                              'Handicap 1:0',
                              style: Theme.of(context).textTheme.subhead,
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Expanded(
                                child: GestureDetector(
                              child: Container(
                                padding: _alreadySaved1
                                    ? EdgeInsets.symmetric(
                                        horizontal: 6.0, vertical: 2.0)
                                    : EdgeInsets.fromLTRB(10.0, 6.0, 6.0, 6.0),
                                margin: EdgeInsets.only(right: 2.0),
                                decoration: BoxDecoration(
                                    color: _alreadySaved1
                                        ? Colors.blueAccent
                                        : Colors.black38,
                                    borderRadius: const BorderRadius.all(
                                        const Radius.circular(16.0))),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    _alreadySaved1
                                        ? Icon(Icons.done)
                                        : Text('1',
                                            style: Theme
                                                .of(context)
                                                .textTheme
                                                .subhead),
                                    Text(widget.match["cotes"]["cote1"],
                                        style: Theme
                                            .of(context)
                                            .textTheme
                                            .subhead),
                                  ],
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  widget.saved
                                      .remove(widget.match["cotes"]["cote2"]);
                                  widget.saved
                                      .remove(widget.match["cotes"]["cote3"]);
                                  if (_alreadySaved1) {
                                    widget.saved
                                        .remove(widget.match["cotes"]["cote1"]);
                                  } else {
                                    widget.saved
                                        .add(widget.match["cotes"]["cote1"]);
                                  }
                                });
                              },
                            )),
                            Expanded(
                                child: GestureDetector(
                              child: Container(
                                padding: _alreadySaved3
                                    ? EdgeInsets.symmetric(
                                        horizontal: 6.0, vertical: 2.0)
                                    : EdgeInsets.fromLTRB(10.0, 6.0, 6.0, 6.0),
                                margin: EdgeInsets.symmetric(horizontal: 2.0),
                                decoration: BoxDecoration(
                                    color: _alreadySaved3
                                        ? Colors.blueAccent
                                        : Colors.black38,
                                    borderRadius: const BorderRadius.all(
                                        const Radius.circular(16.0))),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    _alreadySaved3
                                        ? Icon(Icons.done)
                                        : Text('X',
                                            style: Theme
                                                .of(context)
                                                .textTheme
                                                .subhead),
                                    Text(widget.match["cotes"]["cote3"],
                                        style: Theme
                                            .of(context)
                                            .textTheme
                                            .subhead),
                                  ],
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  widget.saved
                                      .remove(widget.match["cotes"]["cote1"]);
                                  widget.saved
                                      .remove(widget.match["cotes"]["cote2"]);
                                  if (_alreadySaved3) {
                                    widget.saved
                                        .remove(widget.match["cotes"]["cote3"]);
                                  } else {
                                    widget.saved
                                        .add(widget.match["cotes"]["cote3"]);
                                  }
                                });
                              },
                            )),
                            Expanded(
                                child: GestureDetector(
                              child: Container(
                                padding: _alreadySaved2
                                    ? EdgeInsets.symmetric(
                                        horizontal: 6.0, vertical: 2.0)
                                    : EdgeInsets.fromLTRB(10.0, 6.0, 6.0, 6.0),
                                margin: EdgeInsets.only(left: 2.0),
                                decoration: BoxDecoration(
                                    color: _alreadySaved2
                                        ? Colors.blueAccent
                                        : Colors.black38,
                                    borderRadius: const BorderRadius.all(
                                        const Radius.circular(16.0))),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    _alreadySaved2
                                        ? Icon(Icons.done)
                                        : Text('2',
                                            style: Theme
                                                .of(context)
                                                .textTheme
                                                .subhead),
                                    Text(widget.match["cotes"]["cote2"],
                                        style:
                                            Theme.of(context).textTheme.subhead)
                                  ],
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  widget.saved
                                      .remove(widget.match["cotes"]["cote1"]);
                                  widget.saved
                                      .remove(widget.match["cotes"]["cote3"]);
                                  if (_alreadySaved2) {
                                    widget.saved
                                        .remove(widget.match["cotes"]["cote2"]);
                                  } else {
                                    widget.saved
                                        .add(widget.match["cotes"]["cote2"]);
                                  }
                                });
                              },
                            )),
                          ],
                        ))
                  ],
                ))),
                SizedBox(
          height: 12.0,
        ),
        Card(
            elevation: 1.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            child: Padding(
                padding: EdgeInsets.zero,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 12.0),
                            color: Colors.pink[800],
                            child: Text(
                              'Normal 2:0',
                              style: Theme.of(context).textTheme.subhead,
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Expanded(
                                child: GestureDetector(
                              child: Container(
                                padding: _alreadySaved1
                                    ? EdgeInsets.symmetric(
                                        horizontal: 6.0, vertical: 2.0)
                                    : EdgeInsets.fromLTRB(10.0, 6.0, 6.0, 6.0),
                                margin: EdgeInsets.only(right: 2.0),
                                decoration: BoxDecoration(
                                    color: _alreadySaved1
                                        ? Colors.blueAccent
                                        : Colors.black38,
                                    borderRadius: const BorderRadius.all(
                                        const Radius.circular(16.0))),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    _alreadySaved1
                                        ? Icon(Icons.done)
                                        : Text('1',
                                            style: Theme
                                                .of(context)
                                                .textTheme
                                                .subhead),
                                    Text(widget.match["cotes"]["cote1"],
                                        style: Theme
                                            .of(context)
                                            .textTheme
                                            .subhead),
                                  ],
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  widget.saved
                                      .remove(widget.match["cotes"]["cote2"]);
                                  widget.saved
                                      .remove(widget.match["cotes"]["cote3"]);
                                  if (_alreadySaved1) {
                                    widget.saved
                                        .remove(widget.match["cotes"]["cote1"]);
                                  } else {
                                    widget.saved
                                        .add(widget.match["cotes"]["cote1"]);
                                  }
                                });
                              },
                            )),
                            Expanded(
                                child: GestureDetector(
                              child: Container(
                                padding: _alreadySaved3
                                    ? EdgeInsets.symmetric(
                                        horizontal: 6.0, vertical: 2.0)
                                    : EdgeInsets.fromLTRB(10.0, 6.0, 6.0, 6.0),
                                margin: EdgeInsets.symmetric(horizontal: 2.0),
                                decoration: BoxDecoration(
                                    color: _alreadySaved3
                                        ? Colors.blueAccent
                                        : Colors.black38,
                                    borderRadius: const BorderRadius.all(
                                        const Radius.circular(16.0))),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    _alreadySaved3
                                        ? Icon(Icons.done)
                                        : Text('X',
                                            style: Theme
                                                .of(context)
                                                .textTheme
                                                .subhead),
                                    Text(widget.match["cotes"]["cote3"],
                                        style: Theme
                                            .of(context)
                                            .textTheme
                                            .subhead),
                                  ],
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  widget.saved
                                      .remove(widget.match["cotes"]["cote1"]);
                                  widget.saved
                                      .remove(widget.match["cotes"]["cote2"]);
                                  if (_alreadySaved3) {
                                    widget.saved
                                        .remove(widget.match["cotes"]["cote3"]);
                                  } else {
                                    widget.saved
                                        .add(widget.match["cotes"]["cote3"]);
                                  }
                                });
                              },
                            )),
                            Expanded(
                                child: GestureDetector(
                              child: Container(
                                padding: _alreadySaved2
                                    ? EdgeInsets.symmetric(
                                        horizontal: 6.0, vertical: 2.0)
                                    : EdgeInsets.fromLTRB(10.0, 6.0, 6.0, 6.0),
                                margin: EdgeInsets.only(left: 2.0),
                                decoration: BoxDecoration(
                                    color: _alreadySaved2
                                        ? Colors.blueAccent
                                        : Colors.black38,
                                    borderRadius: const BorderRadius.all(
                                        const Radius.circular(16.0))),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    _alreadySaved2
                                        ? Icon(Icons.done)
                                        : Text('2',
                                            style: Theme
                                                .of(context)
                                                .textTheme
                                                .subhead),
                                    Text(widget.match["cotes"]["cote2"],
                                        style:
                                            Theme.of(context).textTheme.subhead)
                                  ],
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  widget.saved
                                      .remove(widget.match["cotes"]["cote1"]);
                                  widget.saved
                                      .remove(widget.match["cotes"]["cote3"]);
                                  if (_alreadySaved2) {
                                    widget.saved
                                        .remove(widget.match["cotes"]["cote2"]);
                                  } else {
                                    widget.saved
                                        .add(widget.match["cotes"]["cote2"]);
                                  }
                                });
                              },
                            )),
                          ],
                        ))
                  ],
                ))),
                SizedBox(
          height: 12.0,
        ),
        Card(
            elevation: 1.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            child: Padding(
                padding: EdgeInsets.zero,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 12.0),
                            color: Colors.purple[900],
                            child: Text(
                              'Première Mi-Temps',
                              style: Theme.of(context).textTheme.subhead,
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Expanded(
                                child: GestureDetector(
                              child: Container(
                                padding: _alreadySaved1
                                    ? EdgeInsets.symmetric(
                                        horizontal: 6.0, vertical: 2.0)
                                    : EdgeInsets.fromLTRB(10.0, 6.0, 6.0, 6.0),
                                margin: EdgeInsets.only(right: 2.0),
                                decoration: BoxDecoration(
                                    color: _alreadySaved1
                                        ? Colors.blueAccent
                                        : Colors.black38,
                                    borderRadius: const BorderRadius.all(
                                        const Radius.circular(16.0))),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    _alreadySaved1
                                        ? Icon(Icons.done)
                                        : Text('1',
                                            style: Theme
                                                .of(context)
                                                .textTheme
                                                .subhead),
                                    Text(widget.match["cotes"]["cote1"],
                                        style: Theme
                                            .of(context)
                                            .textTheme
                                            .subhead),
                                  ],
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  widget.saved
                                      .remove(widget.match["cotes"]["cote2"]);
                                  widget.saved
                                      .remove(widget.match["cotes"]["cote3"]);
                                  if (_alreadySaved1) {
                                    widget.saved
                                        .remove(widget.match["cotes"]["cote1"]);
                                  } else {
                                    widget.saved
                                        .add(widget.match["cotes"]["cote1"]);
                                  }
                                });
                              },
                            )),
                            Expanded(
                                child: GestureDetector(
                              child: Container(
                                padding: _alreadySaved3
                                    ? EdgeInsets.symmetric(
                                        horizontal: 6.0, vertical: 2.0)
                                    : EdgeInsets.fromLTRB(10.0, 6.0, 6.0, 6.0),
                                margin: EdgeInsets.symmetric(horizontal: 2.0),
                                decoration: BoxDecoration(
                                    color: _alreadySaved3
                                        ? Colors.blueAccent
                                        : Colors.black38,
                                    borderRadius: const BorderRadius.all(
                                        const Radius.circular(16.0))),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    _alreadySaved3
                                        ? Icon(Icons.done)
                                        : Text('X',
                                            style: Theme
                                                .of(context)
                                                .textTheme
                                                .subhead),
                                    Text(widget.match["cotes"]["cote3"],
                                        style: Theme
                                            .of(context)
                                            .textTheme
                                            .subhead),
                                  ],
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  widget.saved
                                      .remove(widget.match["cotes"]["cote1"]);
                                  widget.saved
                                      .remove(widget.match["cotes"]["cote2"]);
                                  if (_alreadySaved3) {
                                    widget.saved
                                        .remove(widget.match["cotes"]["cote3"]);
                                  } else {
                                    widget.saved
                                        .add(widget.match["cotes"]["cote3"]);
                                  }
                                });
                              },
                            )),
                            Expanded(
                                child: GestureDetector(
                              child: Container(
                                padding: _alreadySaved2
                                    ? EdgeInsets.symmetric(
                                        horizontal: 6.0, vertical: 2.0)
                                    : EdgeInsets.fromLTRB(10.0, 6.0, 6.0, 6.0),
                                margin: EdgeInsets.only(left: 2.0),
                                decoration: BoxDecoration(
                                    color: _alreadySaved2
                                        ? Colors.blueAccent
                                        : Colors.black38,
                                    borderRadius: const BorderRadius.all(
                                        const Radius.circular(16.0))),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    _alreadySaved2
                                        ? Icon(Icons.done)
                                        : Text('2',
                                            style: Theme
                                                .of(context)
                                                .textTheme
                                                .subhead),
                                    Text(widget.match["cotes"]["cote2"],
                                        style:
                                            Theme.of(context).textTheme.subhead)
                                  ],
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  widget.saved
                                      .remove(widget.match["cotes"]["cote1"]);
                                  widget.saved
                                      .remove(widget.match["cotes"]["cote3"]);
                                  if (_alreadySaved2) {
                                    widget.saved
                                        .remove(widget.match["cotes"]["cote2"]);
                                  } else {
                                    widget.saved
                                        .add(widget.match["cotes"]["cote2"]);
                                  }
                                });
                              },
                            )),
                          ],
                        ))
                  ],
                ))),
                SizedBox(
          height: 12.0,
        ),
        Card(
            elevation: 1.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            child: Padding(
                padding: EdgeInsets.zero,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 12.0),
                            color: Colors.indigoAccent,
                            child: Text(
                              'Deuxième Mi-Temps',
                              style: Theme.of(context).textTheme.subhead,
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Expanded(
                                child: GestureDetector(
                              child: Container(
                                padding: _alreadySaved1
                                    ? EdgeInsets.symmetric(
                                        horizontal: 6.0, vertical: 2.0)
                                    : EdgeInsets.fromLTRB(10.0, 6.0, 6.0, 6.0),
                                margin: EdgeInsets.only(right: 2.0),
                                decoration: BoxDecoration(
                                    color: _alreadySaved1
                                        ? Colors.blueAccent
                                        : Colors.black38,
                                    borderRadius: const BorderRadius.all(
                                        const Radius.circular(16.0))),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    _alreadySaved1
                                        ? Icon(Icons.done)
                                        : Text('1',
                                            style: Theme
                                                .of(context)
                                                .textTheme
                                                .subhead),
                                    Text(widget.match["cotes"]["cote1"],
                                        style: Theme
                                            .of(context)
                                            .textTheme
                                            .subhead),
                                  ],
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  widget.saved
                                      .remove(widget.match["cotes"]["cote2"]);
                                  widget.saved
                                      .remove(widget.match["cotes"]["cote3"]);
                                  if (_alreadySaved1) {
                                    widget.saved
                                        .remove(widget.match["cotes"]["cote1"]);
                                  } else {
                                    widget.saved
                                        .add(widget.match["cotes"]["cote1"]);
                                  }
                                });
                              },
                            )),
                            Expanded(
                                child: GestureDetector(
                              child: Container(
                                padding: _alreadySaved3
                                    ? EdgeInsets.symmetric(
                                        horizontal: 6.0, vertical: 2.0)
                                    : EdgeInsets.fromLTRB(10.0, 6.0, 6.0, 6.0),
                                margin: EdgeInsets.symmetric(horizontal: 2.0),
                                decoration: BoxDecoration(
                                    color: _alreadySaved3
                                        ? Colors.blueAccent
                                        : Colors.black38,
                                    borderRadius: const BorderRadius.all(
                                        const Radius.circular(16.0))),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    _alreadySaved3
                                        ? Icon(Icons.done)
                                        : Text('X',
                                            style: Theme
                                                .of(context)
                                                .textTheme
                                                .subhead),
                                    Text(widget.match["cotes"]["cote3"],
                                        style: Theme
                                            .of(context)
                                            .textTheme
                                            .subhead),
                                  ],
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  widget.saved
                                      .remove(widget.match["cotes"]["cote1"]);
                                  widget.saved
                                      .remove(widget.match["cotes"]["cote2"]);
                                  if (_alreadySaved3) {
                                    widget.saved
                                        .remove(widget.match["cotes"]["cote3"]);
                                  } else {
                                    widget.saved
                                        .add(widget.match["cotes"]["cote3"]);
                                  }
                                });
                              },
                            )),
                            Expanded(
                                child: GestureDetector(
                              child: Container(
                                padding: _alreadySaved2
                                    ? EdgeInsets.symmetric(
                                        horizontal: 6.0, vertical: 2.0)
                                    : EdgeInsets.fromLTRB(10.0, 6.0, 6.0, 6.0),
                                margin: EdgeInsets.only(left: 2.0),
                                decoration: BoxDecoration(
                                    color: _alreadySaved2
                                        ? Colors.blueAccent
                                        : Colors.black38,
                                    borderRadius: const BorderRadius.all(
                                        const Radius.circular(16.0))),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    _alreadySaved2
                                        ? Icon(Icons.done)
                                        : Text('2',
                                            style: Theme
                                                .of(context)
                                                .textTheme
                                                .subhead),
                                    Text(widget.match["cotes"]["cote2"],
                                        style:
                                            Theme.of(context).textTheme.subhead)
                                  ],
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  widget.saved
                                      .remove(widget.match["cotes"]["cote1"]);
                                  widget.saved
                                      .remove(widget.match["cotes"]["cote3"]);
                                  if (_alreadySaved2) {
                                    widget.saved
                                        .remove(widget.match["cotes"]["cote2"]);
                                  } else {
                                    widget.saved
                                        .add(widget.match["cotes"]["cote2"]);
                                  }
                                });
                              },
                            )),
                          ],
                        ))
                  ],
                ))),
                SizedBox(
          height: 12.0,
        ),
        Card(
            elevation: 1.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            child: Padding(
                padding: EdgeInsets.zero,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 12.0),
                            color: Colors.tealAccent,
                            child: Text(
                              'Paire ou Impaire',
                              style: Theme.of(context).textTheme.subhead,
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Expanded(
                                child: GestureDetector(
                              child: Container(
                                padding: _alreadySaved1
                                    ? EdgeInsets.symmetric(
                                        horizontal: 6.0, vertical: 2.0)
                                    : EdgeInsets.fromLTRB(10.0, 6.0, 6.0, 6.0),
                                margin: EdgeInsets.only(right: 2.0),
                                decoration: BoxDecoration(
                                    color: _alreadySaved1
                                        ? Colors.blueAccent
                                        : Colors.black38,
                                    borderRadius: const BorderRadius.all(
                                        const Radius.circular(16.0))),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    _alreadySaved1
                                        ? Icon(Icons.done)
                                        : Text('1',
                                            style: Theme
                                                .of(context)
                                                .textTheme
                                                .subhead),
                                    Text(widget.match["cotes"]["cote1"],
                                        style: Theme
                                            .of(context)
                                            .textTheme
                                            .subhead),
                                  ],
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  widget.saved
                                      .remove(widget.match["cotes"]["cote2"]);
                                  widget.saved
                                      .remove(widget.match["cotes"]["cote3"]);
                                  if (_alreadySaved1) {
                                    widget.saved
                                        .remove(widget.match["cotes"]["cote1"]);
                                  } else {
                                    widget.saved
                                        .add(widget.match["cotes"]["cote1"]);
                                  }
                                });
                              },
                            )),
                            Expanded(
                                child: GestureDetector(
                              child: Container(
                                padding: _alreadySaved3
                                    ? EdgeInsets.symmetric(
                                        horizontal: 6.0, vertical: 2.0)
                                    : EdgeInsets.fromLTRB(10.0, 6.0, 6.0, 6.0),
                                margin: EdgeInsets.symmetric(horizontal: 2.0),
                                decoration: BoxDecoration(
                                    color: _alreadySaved3
                                        ? Colors.blueAccent
                                        : Colors.black38,
                                    borderRadius: const BorderRadius.all(
                                        const Radius.circular(16.0))),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    _alreadySaved3
                                        ? Icon(Icons.done)
                                        : Text('X',
                                            style: Theme
                                                .of(context)
                                                .textTheme
                                                .subhead),
                                    Text(widget.match["cotes"]["cote3"],
                                        style: Theme
                                            .of(context)
                                            .textTheme
                                            .subhead),
                                  ],
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  widget.saved
                                      .remove(widget.match["cotes"]["cote1"]);
                                  widget.saved
                                      .remove(widget.match["cotes"]["cote2"]);
                                  if (_alreadySaved3) {
                                    widget.saved
                                        .remove(widget.match["cotes"]["cote3"]);
                                  } else {
                                    widget.saved
                                        .add(widget.match["cotes"]["cote3"]);
                                  }
                                });
                              },
                            )),
                            Expanded(
                                child: GestureDetector(
                              child: Container(
                                padding: _alreadySaved2
                                    ? EdgeInsets.symmetric(
                                        horizontal: 6.0, vertical: 2.0)
                                    : EdgeInsets.fromLTRB(10.0, 6.0, 6.0, 6.0),
                                margin: EdgeInsets.only(left: 2.0),
                                decoration: BoxDecoration(
                                    color: _alreadySaved2
                                        ? Colors.blueAccent
                                        : Colors.black38,
                                    borderRadius: const BorderRadius.all(
                                        const Radius.circular(16.0))),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    _alreadySaved2
                                        ? Icon(Icons.done)
                                        : Text('2',
                                            style: Theme
                                                .of(context)
                                                .textTheme
                                                .subhead),
                                    Text(widget.match["cotes"]["cote2"],
                                        style:
                                            Theme.of(context).textTheme.subhead)
                                  ],
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  widget.saved
                                      .remove(widget.match["cotes"]["cote1"]);
                                  widget.saved
                                      .remove(widget.match["cotes"]["cote3"]);
                                  if (_alreadySaved2) {
                                    widget.saved
                                        .remove(widget.match["cotes"]["cote2"]);
                                  } else {
                                    widget.saved
                                        .add(widget.match["cotes"]["cote2"]);
                                  }
                                });
                              },
                            )),
                          ],
                        ))
                  ],
                )))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Retour'),
          elevation: 0.0,
        ),
        body: getBody());
  }
}
