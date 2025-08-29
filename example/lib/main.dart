import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_moments/flutter_moments.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        child: Center(
          child: Builder(
            builder: (context) {
              return ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    CupertinoPageRoute(
                      builder: (context) => const MomentsPage(),
                    ),
                  );
                },
                child: const Text("Watch Moments 🎉"),
              );
            },
          ),
        ),
      ),
    );
  }
}

class MomentsPage extends StatelessWidget {
  const MomentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      child: Moments(),
    );
  }
}
