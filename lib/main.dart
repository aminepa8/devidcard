import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: MlyCard(),
));

class MlyCard extends StatefulWidget {
  @override
  _MlyCardState createState() => _MlyCardState();
}

class _MlyCardState extends State<MlyCard> {
  int DevLevel = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Dev Card'),
        centerTitle: true,
        backgroundColor:Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            DevLevel++;

          });
        },
        child:Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body:Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child :Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/developer.jpeg'),
                radius: 70.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Moulay Amine',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'Dev Level',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '$DevLevel',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color:Colors.grey[400],
                ),
                SizedBox(width: 10.0),
                Text(
                  'med@dummyemail.com',
                  style:TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),

                ),

              ],
            ),

            SizedBox(height: 60.0),
            Center(
              child: Column(
                  children: <Widget>[
                    Text(
                      ' Welcome to the dart side ',
                      style: TextStyle(
                        color: Colors.grey,
                        letterSpacing: 2.0,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Icon(
                      Icons.offline_bolt,
                      color:Colors.amberAccent[200],
                    ),
                    ],
              ),
            ),

          ],
        )
      ),
    );
  }
}

