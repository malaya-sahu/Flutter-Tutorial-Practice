import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flight Booking App"),
        ),
        body: Container(
            alignment: Alignment.center,
            color: Colors.white,
            padding: EdgeInsets.only(
                top: 35.0, left: 15.0, right: 15.0, bottom: 15.0),
            //width: 200.0,
            //height: 100.0,
            // margin: EdgeInsets.only(left:35.0,top:50.0),
            //padding: EdgeInsets.only(left:15.0,top: 35.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      "Spice Jet",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 35.0,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700,
                        //fontStyle: FontStyle.italic,
                        color: Colors.teal,
                      ),
                    )),
                    Expanded(
                        child: Text(
                      "From Delhi to Mumbai",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 20.0,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700,
                        //fontStyle: FontStyle.italic,
                        color: Colors.teal,
                      ),
                    )),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      "Air India",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 35.0,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700,
                        //fontStyle: FontStyle.italic,
                        color: Colors.teal,
                      ),
                    )),
                    Expanded(
                        child: Text(
                      "From Delhi to Kolkata",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 20.0,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700,
                        //fontStyle: FontStyle.italic,
                        color: Colors.teal,
                      ),
                    )),
                  ],
                ),
                FlightImageAsset(),
                FlightBookButton()
              ],
            )));
  }
}

class FlightImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/flight.jpg');
    Image image = Image(image: assetImage);
    return Container(
      child: image,
    );
  }
}

class FlightBookButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      width: 250.0,
      height: 50.0,
      child: RaisedButton(
          color: Colors.deepOrange,
          child: Text(
            "Book Your Flight",
            style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w700),
          ),
          elevation: 10.0,
          onPressed: () => bookFlight(context)),
    );
  }

  void bookFlight(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text("Flight Booked Successfully"),
      content: Text("Have a Pleasant Flight"),
    );
    showDialog(
        context: context, builder: (BuildContext context) => alertDialog);
  }
}
