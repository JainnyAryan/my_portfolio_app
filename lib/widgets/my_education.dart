import 'package:flutter/material.dart';

class MyEducationList extends StatelessWidget {
  MyEducationList({super.key});

  final List<Map<String, String>> details = [
    {
      "type": "Under Graduate",
      "institute": "Vellore Institute of Technology",
      "Year": "2021 - 2025",
    },
    {
      "type": "Senior Secondary",
      "institute": "ABC XYZ School",
      "Year": "2021",
    },
    {
      "type": "High School",
      "institute": "ABC 123 School",
      "Year": "2019",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 7,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: const LinearGradient(
            end: Alignment.topLeft,
            begin: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 253, 189, 189),
              Color.fromARGB(255, 250, 212, 212),
            ],
            stops: [0.6, 0.6],
          ),
        ),
        child: ListView.builder(
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) => ListTile(
            leading: const CircleAvatar(
              child: Icon(Icons.school),
            ),
            title: Text(details[index]["institute"] as String),
            subtitle:
                Text("${details[index]["Year"]} (${details[index]["type"]})"),
          ),
          itemCount: details.length,
        ),
      ),
    );
  }
}
