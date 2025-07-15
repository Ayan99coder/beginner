import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext  context){
    return MaterialApp(
      home : Scaffold(
        backgroundColor:Colors.purple,
        body : Center(
          child : Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor:Colors.white,
                backgroundImage: AssetImage("images/ayan.png"),
              radius:100.0,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text (
                  "Ayan Javed",
                 style : TextStyle(
                color : Colors.black,
              fontWeight : FontWeight.bold,
                   fontSize:30.0,
            ),
            ),
           SizedBox(
             height: 10.0,
           ),
            Text (
              "F l u t t e r  D e v e l o p e r",
              style : TextStyle(
                color : Colors.black,
                fontWeight : FontWeight.bold,
                fontSize:20.0,
              ),
            ),
            SizedBox(
              width: 400,
              height: 30.0,
              child: Divider(
                color: Colors.white,
                thickness: 2.0,
              ),
            ),
            Card(
              color : Colors.white,
              margin: EdgeInsets.symmetric(vertical : 20.0,horizontal: 250.0),
              child :ListTile(
                leading:   Icon(
                   Icons.phone,
                    color : Colors.teal,
                    size: 20.0,
                  ),

                 title : Text("03032870653",
                      style :TextStyle(
                    fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                  )
                  )
              )
            ),
            Card(
                color : Colors.white,
                margin: EdgeInsets.symmetric(vertical : 20.0,horizontal: 250.0),
                child :ListTile(
                    leading:   Icon(
                      Icons.message,
                      color : Colors.teal,
                      size: 20.0,
                    ),
                    title : Text("Ayanjaved@gmail.com",
                        style :TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        )
                    )
                )
            ),
          ],
          )
        ),
      )
    );
  }
}
