import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _phoneNumberController = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override
  void dispose() {
    _phoneNumberController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void onSignin() {}

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
                'Votre numéro de téléphone :',
                style: body1Text,
              ),
            ),
            SizedBox(height: 8.0),
            Form(
              child: TextFormField(
                focusNode: _focusNode,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Vous devez entrer votre numéro de téléphone';
                  }
                },
                controller: _phoneNumberController,
                decoration: InputDecoration(
                    hintText: "(+243) xxx xxx xxx", fillColor: Colors.black54),
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text('SE CONNECTER'),
                  color: Colors.tealAccent,
                  onPressed: () async {
                    if (_phoneNumberController.text.isEmpty || _phoneNumberController.text.length < 10) return;
                    await Navigator.of(context).pushNamed('/home-screen');
                    _phoneNumberController.clear();
                  },
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                )
              ],
            ),
            SizedBox(
              height: 180.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Vous n\'avez pas un compte?', style: body1Text),
                FlatButton(
                  padding: EdgeInsets.all(8.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  onPressed: () async{
                    await Navigator.pushNamed(context, '/signup-screen');
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text('S\'INSCRIRE', style: body1Text),
                      SizedBox(width: 4.0),
                      Icon(Icons.arrow_forward, size: 14.0,)
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
