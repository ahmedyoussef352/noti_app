// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:notiapp/core/notifivation_services.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  NotificationServices notificationServices = NotificationServices();

  @override
  void initState() {
    super.initState();
    notificationServices.firebaseInit(
      context,
    );
    notificationServices.setupInteractMessage(context);
    notificationServices.requestNotificationPermision();
    notificationServices.getDeviceToken().then((value) {
      print('device token');
      print(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent.shade400,
        title: const Text(
          'Notification App',
        ),
        centerTitle: true,
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            notificationServices.getDeviceToken().then((value) async {
              var data = {
                "to": value.toString(),
                "priority": "high",
                "notification": {
                  "title": "ahmed",
                  "body": "from visiual studio"
                },
                "data": {"type": "msj", "id": "1111111"}
              };
              await http.post(Uri.parse("https://fcm.googleapis.com/fcm/send"),
                  body: jsonEncode(data),
                  headers: {
                    "Content-Type": "application/json; charset=UTF-8",
                    "Authorization":
                        "key=AAAAT683HtA:APA91bEC7dRBx0L7AK9cDUJElq-zeFdSqCUcbR3UNNMRuxsY4l4ZIwUxquGntCnfrGV-t8BS248MKTJal-xqgtdWnRkd9E5OdCFjuc-YfpeRvtdaRVmBS5sSMmqe3olDXkgpBG83QBJN",
                  });
            });
          },
          child: const Text(
            'Send Notification',
            style: TextStyle(color: Colors.blue, fontSize: 25),
          ),
        ),
      ),
    );
  }
}
