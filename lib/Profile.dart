import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(CupertinoIcons.back),
        elevation: 0,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.share)),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.of(context).pushNamed("/settings");
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                child: FlutterLogo(),
                radius: 50,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text("YOUR NAME", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(
                height: 10.0,
              ),
              Text("@username"),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Text(
                    "10 followers",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 25.0,
                  ),
                  Text(
                    "10 following",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Add a bio",
                style: TextStyle(color: Colors.lightBlue),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Text(
                    "Add Twitter",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.lightBlue),
                  ),
                  SizedBox(
                    width: 25.0,
                  ),
                  Text(
                    "Add Instagram",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.lightBlue),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  CircleAvatar(
                    child: FlutterLogo(),
                  ),
                  SizedBox(
                    width: 25.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Joined on Jan 1, 1997"),
                      Text("Nominated by XYZ"),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Text("Member of"),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  CircleAvatar(
                    child: FlutterLogo(),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  CircleAvatar(
                    child: FlutterLogo(),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  CircleAvatar(
                    child: FlutterLogo(),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  CircleAvatar(
                    child: Icon(Icons.add, color: Colors.black),
                    backgroundColor: Colors.grey,
                  ),
                ],
              )
            ]),
      ),
    );
  }
}
