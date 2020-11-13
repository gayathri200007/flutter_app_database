import 'package:flutter/material.dart';
class bookdoc extends StatefulWidget {
  @override
  _bookdocState createState() => _bookdocState();
}

class _bookdocState extends State<bookdoc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 80,horizontal: 0.5),
                  child: Container(

                    height: 600,
                    width: double.infinity,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 1,
                      margin: EdgeInsets.all(10),
                      color: Colors.tealAccent,
                      child: Column(
                        children: <Widget>[
                          Container(
                            child:  Center(
                                child:  Column(
                                    children : [
                                      Padding(padding: EdgeInsets.only(top: 30.0)),
                                      Text('Appoinment',
                                        style:
                                        TextStyle(
                                            color:Colors.black,
                                            fontSize: 35.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Padding(padding: EdgeInsets.only(top: 40.0)),
                                      TextFormField(
                                        decoration:  InputDecoration(
                                          labelText: "Doctor Name",
                                          fillColor: Colors.white,
                                          border: OutlineInputBorder(
                                            borderRadius:  BorderRadius.circular(25.0),
                                            borderSide: BorderSide(
                                                color: Colors.white
                                            ),
                                          ),
                                          //fillColor: Colors.green
                                        ),
                                        validator: (val) {
                                          if(val.length==0) {
                                            return "Cannot be empty";
                                          }else{
                                            return null;
                                          }
                                        },
                                        keyboardType: TextInputType.text,
                                        style:
                                        TextStyle(
                                          fontFamily: "Poppins",
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(top: 10.0)),
                                      TextFormField(
                                        decoration:  InputDecoration(
                                          labelText: "Department",
                                          fillColor: Colors.white,
                                          border: OutlineInputBorder(
                                            borderRadius:  BorderRadius.circular(25.0),
                                            borderSide: BorderSide(
                                            ),
                                          ),
                                          //fillColor: Colors.green
                                        ),
                                        validator: (val) {
                                          if(val.length==0) {
                                            return "Cannot be empty";
                                          }else{
                                            return null;
                                          }
                                        },
                                        keyboardType: TextInputType.text,
                                        style:
                                        TextStyle(
                                          fontFamily: "Poppins",
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(top: 10.0)),
                                      TextFormField(
                                        decoration:  InputDecoration(
                                          labelText: "Date",
                                          fillColor: Colors.white,
                                          border: OutlineInputBorder(
                                            borderRadius:  BorderRadius.circular(25.0),
                                            borderSide: BorderSide(
                                            ),
                                          ),
                                          //fillColor: Colors.green
                                        ),
                                        validator: (val) {
                                          if(val.length==0) {
                                            return "Cannot be empty";
                                          }else{
                                            return null;
                                          }
                                        },
                                        keyboardType: TextInputType.text,
                                        style: new TextStyle(
                                          fontFamily: "Poppins",
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(top: 20.0)),
                                      TextFormField(
                                        decoration:  InputDecoration(
                                          labelText: "Time",
                                          fillColor: Colors.white,
                                          border: OutlineInputBorder(
                                            borderRadius:  BorderRadius.circular(25.0),
                                            borderSide: BorderSide(
                                            ),
                                          ),
                                          //fillColor: Colors.green
                                        ),
                                        validator: (val) {
                                          if(val.length==0) {
                                            return "Cannot be empty";
                                          }else{
                                            return null;
                                          }
                                        },
                                        keyboardType: TextInputType.text,
                                        style: new TextStyle(
                                          fontFamily: "Poppins",
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(top: 20.0)),
                                    ]
                                )
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 15.0,
                              right: 50.0,
                            ),

                          ),

                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ButtonTheme(
                              padding: EdgeInsets.only(),
                              buttonColor: Colors.white,
                              height: 50,
                              minWidth: double.infinity,
                              child: RaisedButton(
                                child: Text(
                                  'Book an Appointment',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                onPressed: () {

                                },
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
