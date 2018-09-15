import 'package:flutter/material.dart';

class AccountTab extends StatefulWidget {
  @override
  _AccountTabState createState() => _AccountTabState();
}

class _AccountTabState extends State<AccountTab> {
  bool editAccount = false;
  String username = 'Aaron Dizele';
  String phoneNumber = '+243819710996';
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _phoneNumberController = TextEditingController();

  @override
  void initState() {
    super.initState();
    setState(() {
      _usernameController.text = username;
      _phoneNumberController.text = phoneNumber;
    });
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        brightness: Brightness.dark,
        elevation: 0.0,
        title: Text('Mon compte'),
      ),
      body: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            onDetailsPressed: () {
              setState(() {
                editAccount = !editAccount;
              });
            },
            decoration: BoxDecoration(color: Colors.black26),
            accountName:
                Text('$username', style: Theme.of(context).textTheme.subhead),
            accountEmail: Text('$phoneNumber'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/profile.jpg'),
            ),
          ),
          editAccount
              ? Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: TextField(
                              controller: _usernameController,
                              decoration:
                                  InputDecoration(hintText: '$username'),
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.edit),
                            onPressed: () {
                              setState(() {
                                username = _usernameController.text;
                              });
                            },
                          )
                        ],
                      ),
                      SizedBox(height: 16.0),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: TextField(
                              controller: _phoneNumberController,
                              decoration:
                                  InputDecoration(hintText: '$phoneNumber'),
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.edit),
                            onPressed: () {
                              setState(() {
                                phoneNumber = _phoneNumberController.text;
                              });
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                )
              : Column(
                  children: <Widget>[
                    ListTile(
                        onTap: () {},
                        title: Text('Mon solde'),
                        leading: Icon(Icons.payment)),
                    ListTile(
                        onTap: () {},
                        title: Text('À propos'),
                        leading: Icon(Icons.info)),
                    ListTile(
                      onTap: () {
                        Navigator.of(context).pushNamed('/login-screen');
                      },
                      title: Text('Se déconnecter'),
                      leading: Icon(Icons.exit_to_app),
                    ),
                  ],
                )
        ],
      ),
    );
  }
}
