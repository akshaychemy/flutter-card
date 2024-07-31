import 'package:flutter/material.dart';

/// Flutter code sample for [Card].

void main() => runApp(const CardExampleApp());

class CardExampleApp extends StatelessWidget {
  const CardExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Card Sample',
            style: TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
          ),
        ),
        body: const CardExample(),
      ),
    );
  }
}

class CardExample extends StatelessWidget {
  const CardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 0, 10, 0),
        child: Card(
          color: Colors.blue[50], // Light blue color
          shadowColor: Colors.black, // Shadow color
          surfaceTintColor: Color.fromARGB(255, 216, 238, 163), // Surface tint color
          elevation: 10, // Elevation
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15), // Rounded corners
            side: BorderSide(color: Colors.blueAccent, width: 2), // Border color and width
          ),
          borderOnForeground: true, // Border on foreground
          margin: const EdgeInsets.all(10), // Margin around the card
          clipBehavior: Clip.antiAlias, // Clip behavior
          semanticContainer: true, // Semantic container
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.access_time_filled),
                title: Text('The Enchanted Nightingale'),
                subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextButton(
                    child: const Text('BUY TICKETS'),
                    onPressed: () {/* ... */},
                  ),
                  const SizedBox(width: 40),
                  TextButton(
                    child: const Text('LISTEN'),
                    onPressed: () {print("hello there");},
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
