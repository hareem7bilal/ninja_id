import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NinjaCard(),
  ));
}

class NinjaCard extends StatefulWidget {
  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int ninjaLevel=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: const Text('Ninja ID Card'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 51, 13, 97),
          elevation: 0.0,
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              ninjaLevel+=1;
            });
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.grey[800]
        ,),

        body: Padding(
            padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/avatar.jpg'),
                    radius: 50.0,
                
                  ),
                ),

                Divider(
                  height: 60.0,
                  color:Color.fromARGB(255, 145, 139, 139),
                ),

                Text('NAME',
                    style: TextStyle(
                        color: Color.fromARGB(255, 77, 70, 70),
                        letterSpacing: 2.0)),

                SizedBox(height: 10.0),

                Text('Kakashi Hatake',
                    style: TextStyle(
                        color: Color.fromARGB(255, 59, 10, 68),
                        letterSpacing: 2.0,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                        )),

                SizedBox(height: 30.0),
                
                Text('CURRENT NINJA LEVEL',
                    style: TextStyle(
                        color: Color.fromARGB(255, 77, 70, 70),
                        letterSpacing: 2.0)),

                SizedBox(height: 10.0),

                Text('$ninjaLevel',
                    style: TextStyle(
                        color: Color.fromARGB(255, 59, 10, 68),
                        letterSpacing: 2.0,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                        )),

                SizedBox(height: 30.0),

                Row(
                  children: [
                    Icon(
                      Icons.email,
                      color: Color.fromARGB(255, 65, 62, 62),
                    ),
                     
                    SizedBox(width: 10.0),

                    Text('@kakashi.hatake',
                    style:TextStyle(
                      color:Color.fromARGB(255, 73, 72, 72),
                      fontSize: 16.0,
                      letterSpacing: 1.0,
                    ))

                ],)

              ],
            )));
  }
}

