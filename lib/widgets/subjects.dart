import 'package:flutter/material.dart';

import '../model/subject.dart';

class Subjects extends StatelessWidget {
  const Subjects({Key? key}) : super(key: key);
  String _formatHour(int hours){
    return hours<2?'$hours hour':'$hours hours';
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        children: [
          TableRow(
            first: 'Subject',
            second: 'Subject hours',
            color: Colors.amber,
          ),
          ListView.builder(
            shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: Subject.subjects.length,
              itemBuilder: (_,index)=>TableRow(first: Subject.subjects[index].name, second: _formatHour(Subject.subjects[index].hours),),)
        ],
      ),
    );
  }
}

class Cell extends StatelessWidget {
  Cell({Key? key, required this.data, this.color = Colors.grey})
      : super(key: key);
  Color? color;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            width: 150,
            color: color,
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.all(4),
            child: Center(child: Text(data,)),
          ),
        ),
      ],
    );
  }
}

class TableRow extends StatelessWidget {
  Color? color;
  final String first;
  final String second;

  TableRow(
      {Key? key,
      this.color = Colors.grey,
      required this.first,
      required this.second})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Cell(
            data: first,
            color: color,
          ),
          const SizedBox(
            width: 10,
          ),
          Cell(
            data: second,
            color: color,
          )
        ],
      ),
    );
  }
}
