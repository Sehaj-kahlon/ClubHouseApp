import 'package:flutter/material.dart';

class AvailableToChat extends StatefulWidget {
  const AvailableToChat({Key? key}) : super(key: key);

  @override
  _AvailableToChatState createState() => _AvailableToChatState();
}

class _AvailableToChatState extends State<AvailableToChat> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: () => Navigator.of(context).pop(false),
          ),
          elevation: 0,
          title: Text('Available to chat'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  child: FlutterLogo(),
                  radius: 30,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Hello World',
                    ),
                    Text(
                      'Hello World',
                    )
                  ],
                ),
                MaterialButton(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                )
              ],
            ),
            Row()
          ],
        ),
      ),
    );
  }
}
