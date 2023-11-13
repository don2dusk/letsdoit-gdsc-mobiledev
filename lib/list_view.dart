import 'package:flutter/material.dart';

class Preview extends StatefulWidget {
  final List list;
  const Preview({super.key, required this.list});

  @override
  State<Preview> createState() => _PreviewState();
}

class _PreviewState extends State<Preview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
      ),
      body: ListView.builder(
          itemCount: widget.list.length,
          itemBuilder: (context, index) => Container(
                width: MediaQuery.of(context).size.width,
                height: 30,
                child: Text(widget.list[index]['item']),
              )),
    );
  }
}
