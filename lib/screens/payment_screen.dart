import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Paiement'),
        elevation: 0.0,
        actions: <Widget>[
          FlatButton(
            onPressed: () {},
            child: Text('CONFIRMER',
                style: Theme.of(context).textTheme.subhead.copyWith(
                      color: Colors.tealAccent,
                    )),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(50.0))),
          )
        ],
      ),
      
    );
  }
}
