import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FormPayment(),
  ));
}

class FormPayment extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final name = Padding(
      padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
      child: TextFormField(
        decoration: InputDecoration(
          icon: Icon(Icons.person),
          labelText: 'Card Name',
          filled: true,
          fillColor: Colors.grey[200],
          border: UnderlineInputBorder(),
        ),
      ),
    );
    final bankAccount = Padding(
      padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
      child: TextFormField(
        decoration: InputDecoration(
          icon: Image(
            image: AssetImage('images/verve_logo2.png'),
            width: 24,
          ),
          labelText: 'Number',
          filled: true,
          fillColor: Colors.grey[200],
          border: UnderlineInputBorder(),
        ),
      ),
    );
    final cvvNumber = Padding(
      padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
      child: TextFormField(
        decoration: InputDecoration(
          icon: Icon(Icons.payment),
          labelText: 'CVV',
          filled: true,
          fillColor: Colors.grey[200],
          border: UnderlineInputBorder(),
        ),
      ),
    );
    final expiredDate = Padding(
      padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
      child: TextFormField(
        decoration: InputDecoration(
          icon: Icon(Icons.date_range),
          labelText: 'Expiry Date',
          filled: true,
          fillColor: Colors.grey[200],
          border: UnderlineInputBorder(),
        ),
      ),
    );
    final payButton = Padding(
      padding: EdgeInsets.only(top: 15),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          padding: EdgeInsets.all(12.0),
          margin: EdgeInsets.fromLTRB(100.0, 10, 100.0, 0),
          child: Center(
            child: Text(
              'Pay',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Payment Card Demo')),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.all(10),
        children: <Widget>[
          name,
          bankAccount,
          cvvNumber,
          expiredDate,
          payButton,
        ],
      ),
    );
  }
}
