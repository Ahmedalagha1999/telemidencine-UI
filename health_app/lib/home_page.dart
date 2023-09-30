import 'package:flutter/material.dart';
import 'package:health_app/widgets/card_info.dart';
import 'package:health_app/widgets/health.dart';
import 'package:health_app/widgets/nearby.dart';

import 'package:ionicons/ionicons.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi, Jane",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            Text(
              "How are you feeling today?",
              style: Theme.of(context).textTheme.bodySmall,
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Ionicons.notifications_outline)),
          IconButton(
              onPressed: () {}, icon: const Icon(Ionicons.search_outline)),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          UpcomingCard(),
          SizedBox(height: 15),
          Text(
            "Health Needs",
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15),
          Health(),
          SizedBox(height: 40),
          Text(
            "Nearby Doctors",
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15),
          NearByDoctors(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {}, icon: const Icon(Ionicons.home_outline)),
              label: "Home"),
          BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Ionicons.calendar_outline)),
              label: "calendar"),
          BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Ionicons.chatbubble_ellipses_outline)),
              label: "chat"),
          BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {}, icon: const Icon(Ionicons.person_outline)),
              label: "Person"),
        ],
      ),
    );
  }
}
