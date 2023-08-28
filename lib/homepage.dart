import 'package:drink_tracker/assets/constants.dart';
import 'package:flutter/material.dart';

import 'package:syncfusion_flutter_calendar/calendar.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Text(monthAndYear,style: TextStyle(fontSize: 14),),
        backgroundColor: backColor,
        actions: [
          IconButton(
            onPressed: null,
            icon: const Icon(
              Icons.settings,
              color: primaryColor,
              size: appBarIconSize,
            ),
          ),
          IconButton(
            onPressed: null,
            icon: const Icon(
              Icons.settings,
              color: primaryColor,
              size: appBarIconSize,
            ),
          ),
          IconButton(
            onPressed: null,
            icon: const Icon(
              Icons.settings,
              color: primaryColor,
              size: appBarIconSize,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SfCalendar(
          view: CalendarView.week,
        ),
      ),
    );
  }
}
