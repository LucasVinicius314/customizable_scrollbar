import 'package:customizable_scrollbar/customizable_scrollbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Example(),
    );
  }
}

class Example extends StatelessWidget {
  Example({super.key});

  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomizableScrollbar(
        controller: _scrollController,
        alwaysVisible: true,
        scrollThumbBuilder: (info) {
          return Container(
            width: 50,
            height: info.thumbMainAxisSize,
            decoration: const BoxDecoration(color: Colors.black),
          );
        },
        child: ListView(
          controller: _scrollController,
          children: List.generate(
            30,
            (index) {
              return ListTile(title: Text(index.toStringAsFixed(0)));
            },
          ),
        ),
      ),
    );
  }
}
