import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Uanqo', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blueGrey[700],
        iconTheme: IconThemeData(
            color: Colors.white), // Mengubah warna tombol back menjadi putih
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Uanqo - Your Finance Manager',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Uanqo is a powerful finance management app designed to help you keep track of your financial activities with ease. '
              'Whether it\'s tracking your daily expenses, recording income, or viewing currency exchange rates, Uanqo has you covered.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Key Features:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              '• Record and manage all types of transactions, including both income and expenses.\n'
              '• View detailed summaries of your financial activities.\n'
              '• Stay updated with the latest currency exchange rates.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'With Uanqo, managing your finances has never been easier. Start organizing your financial life today!',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
