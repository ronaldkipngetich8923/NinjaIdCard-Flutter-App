import 'package:flutter/material.dart';

class NinjaCard extends StatefulWidget {
  const NinjaCard({super.key});

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int counterlevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dart Ninja ID Card',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),),
        backgroundColor: Colors.amberAccent,
        centerTitle: true,
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            counterlevel +=1;
          });
        },
        child: Icon(
          Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(28.0,40.0,30.0,0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/ninja.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(height: 80.0,
            color: Colors.grey[800],),
            Text('Name',
            style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2.0,
              ),
             ),
            SizedBox(height: 10.0,),
            Text('Ronnie Dart Ninja',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight:FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0,),
            Text('Current Ninja Level',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text('$counterlevel',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight:FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0,),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0,),
                Text('ronniedart@devmail.com',
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 18.0,
                  letterSpacing: 1.0,
                ),),
              ],
            ),
            Divider(height: 90.0,
              color: Colors.grey[800],),
          ],
        ),
      ),
    );
  }
}
