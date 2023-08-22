import 'package:flutter/material.dart';
import 'package:myself/screens/projects_screen.dart';
import 'package:myself/widgets/my_education.dart';
import 'package:url_launcher/url_launcher.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Portfolio"),
      ),
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        margin: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 70,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.network(
                        "https://media.licdn.com/dms/image/D5603AQFNwZVJZVdOeg/profile-displayphoto-shrink_400_400/0/1687049003005?e=1697673600&v=beta&t=phyuhSLEVem37xLkyCqNY5nPhlj0XkrmxOe25cl-jLI",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text(
                          "ARYAN JAIN",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Flutter Developer",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                width: double.maxFinite,
                padding: const EdgeInsets.only(top: 40, bottom: 10),
                child: const Text(
                  "My Education",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              MyEducationList(),
              Container(
                width: double.maxFinite,
                padding: const EdgeInsets.only(top: 30, bottom: 10),
                child: const Text(
                  "More",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ProjectsScreen(),
                  ));
                },
                icon: const Icon(Icons.note),
                label: const Text("My Projects"),
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(
                    const Size.fromWidth(double.maxFinite),
                  ),
                ),
              ),
              ElevatedButton.icon(
                onPressed: () async {
                  await launchUrl(
                    Uri.parse(
                      "https://www.linkedin.com/in/aryan-jain-254185220/",
                    ),
                  );
                },
                icon: const Icon(Icons.web),
                label: const Text("My LinkedIn"),
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(
                    const Size.fromWidth(double.maxFinite),
                  ),
                ),
              ),
              ElevatedButton.icon(
                onPressed: () async {
                  await launchUrl(
                    Uri.parse(
                      "https://github.com/JainnyAryan/",
                    ),
                  );
                },
                icon: const Icon(Icons.pages),
                label: const Text("My Github"),
                style: ButtonStyle(
                  splashFactory: NoSplash.splashFactory,
                  fixedSize: MaterialStateProperty.all(
                    const Size.fromWidth(double.maxFinite),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
