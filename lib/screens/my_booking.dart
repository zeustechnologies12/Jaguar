import 'package:flutter/material.dart';

import '../components/bottom_navigation.dart'; // Import the bottom navigation widget
import '../styles/my_bookings_style.dart';

class MyBookingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Bookings', style: kAppBarTitleStyle),
        backgroundColor: kAppBarColor,
      ),
      body: ListView(
        children: const [
          BookingCard(
            date: '15 Sep 2024',
            event: 'Concert at Arena 1',
            time: '7:00 PM',
          ),
          BookingCard(
            date: '22 Sep 2024',
            event: 'Sports Event at Stadium X',
            time: '4:00 PM',
          ),
          BookingCard(
            date: '1 Oct 2024',
            event: 'Theatre Show at Drama Hall',
            time: '8:00 PM',
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavigation(
          selectedIndex: 1), // Set the index for the My Bookings tab
    );
  }
}

class BookingCard extends StatelessWidget {
  final String date;
  final String event;
  final String time;

  const BookingCard({
    super.key,
    required this.date,
    required this.event,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: ListTile(
        leading: const Icon(Icons.event, color: kIconColor),
        title: Text(event, style: kBookingTitleStyle),
        subtitle: Text('$date at $time', style: kBookingSubtitleStyle),
      ),
    );
  }
}
