// my_bookings.dart
import 'package:flutter/material.dart';
import '../styles/my_bookings_style.dart';
import '../components/bottom_navigation.dart'; // Import the bottom navigation widget

class MyBookingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Bookings', style: kAppBarTitleStyle),
        backgroundColor: kAppBarColor,
      ),
      body: ListView(
        children: [
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
      bottomNavigationBar: BottomNavigation(
          selectedIndex: 1), // Set the index for the My Bookings tab
    );
  }
}

class BookingCard extends StatelessWidget {
  final String date;
  final String event;
  final String time;

  const BookingCard({
    required this.date,
    required this.event,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: ListTile(
        leading: Icon(Icons.event, color: kIconColor),
        title: Text(event, style: kBookingTitleStyle),
        subtitle: Text('$date at $time', style: kBookingSubtitleStyle),
      ),
    );
  }
}
