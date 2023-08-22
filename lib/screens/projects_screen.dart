import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ProjectsScreen extends StatelessWidget {
  ProjectsScreen({super.key});

  final List<Map<String, String>> projects = [
    {
      "name": "My Portfolio",
      "desc": "It shows my portfolio!",
      "stack": "Flutter SDK"
    },
    {
      "name": "Super App",
      "desc": "It makes me superman!",
      "stack": "HTML, CSS"
    },
    {
      "name": "Magic App",
      "desc": "It makes me magic! 1..2..3..boom!",
      "stack": "Kotlin"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Projects"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          children: [
            Lottie.asset(
              "assets/proj_lottie.json",
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: false,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => Container(
                  margin: const EdgeInsets.all(5),
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
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    title: Text(
                      projects[index]["name"]!,
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Description : ${projects[index]["desc"]}",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Stack : ${projects[index]["stack"]}",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    trailing: const CircleAvatar(
                      child: LikeButton(),
                    ),
                  ),
                ),
                itemCount: projects.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LikeButton extends StatefulWidget {
  const LikeButton({
    super.key,
  });

  @override
  State<LikeButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          isLiked = !isLiked;
        });
      },
      icon: Icon(Icons.thumb_up_sharp,
          color: isLiked ? Colors.yellow : Colors.white),
    );
  }
}
