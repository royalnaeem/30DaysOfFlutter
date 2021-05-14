import 'dart:ui';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Naeem";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('30 days course Catalog app'),
      ),
      body: Material(
        child: Center(
          child: Container(
            child: Text(
              'my $days days first app by $name',
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.grey[700],
              ),
            ),
          ),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
