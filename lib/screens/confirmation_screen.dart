import 'package:flutter/material.dart';

class ConfirmationScreen extends StatefulWidget {
  @override
  _ConfirmationScreenState createState() => _ConfirmationScreenState();
}

class _ConfirmationScreenState extends State<ConfirmationScreen> {
  final TextEditingController _confirmationController = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  void onSignup() {}

  @override
  void dispose() {
    _confirmationController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var body1Text = Theme.of(context).textTheme.body1;

    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                // Image.asset('assets/diamond.png'),
                SizedBox(height: 16.0),
                Text('YAYO • Pari Sportif',
                    style: Theme
                        .of(context)
                        .textTheme
                        .headline)
              ],
            ),
            SizedBox(height: 120.0),
            Container(
              child: Text(
                'Code de confirmation :',
                style: body1Text,
              ),
            ),
            SizedBox(height: 8.0),
            Form(
              child: TextFormField(
                focusNode: _focusNode,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Vous devez entrer le code de confirmation';
                  }
                },
                controller: _confirmationController,
                decoration: InputDecoration(
                    hintText: "xxx xxx", fillColor: Colors.black54),
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text("CONTINUER"),
                  color: Colors.tealAccent,
                  onPressed: () async {
                    if (_confirmationController.text.isEmpty || _confirmationController.text.length < 6) return;
                    await Navigator.of(context).pushNamed('/home-screen');
                    _confirmationController.clear();
                  },
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}