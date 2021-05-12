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
            color: Colors.amber,
            child: Text('my $days days first app by $name'),
          ),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
