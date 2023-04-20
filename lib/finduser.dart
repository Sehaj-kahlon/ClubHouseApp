import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FindUser extends StatefulWidget {
  const FindUser({Key? key}) : super(key: key);

  @override
  _FindUserState createState() => _FindUserState();
}

class _FindUserState extends State<FindUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(CupertinoIcons.back),
          elevation: 0,
          title: Text('Explore'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(),
            SizedBox(
              height: 10,
            ),
            Text("PEOPLE TO FOLLOW"),
            Expanded(
                child: ListView.builder(
                    itemCount: 100,
                    itemBuilder: (BuildContext context, int index) {
                      return explorePeople(context);
                    }))
          ],
        ));
  }

  Widget explorePeople(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          CircleAvatar(
            child: FlutterLogo(),
          ),
          Text("ABCD"),
          ElevatedButton(
              onPressed: () {},
              child: Text("Follow"),
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.blue)))))
        ]));
  }
}
