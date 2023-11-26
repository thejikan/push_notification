import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class NotificationView extends StatelessWidget{
  const NotificationView({Key? key}): super(key: key);
  static const route = '/notification';

  @override
  Widget build(BuildContext context){
    final message = ModalRoute.of(context)!.settings.arguments as RemoteMessage;

    return Scaffold(
      appBar: AppBar(
        title: Text('Notification'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${message.notification?.title}', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),),
            Text('${message.notification?.body}', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),),
            Text('${message.data}', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),),
          ],
        ),
      ),
    );
  }
}