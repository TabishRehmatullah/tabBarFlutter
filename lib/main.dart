import 'package:flutter/material.dart';

void main() {
  runApp(const TabBarDemo());

}


class TabBarDemo extends StatefulWidget {
  const TabBarDemo({super.key});

  @override
  State<TabBarDemo> createState() => _TabBarDemoState();
}

class _TabBarDemoState extends State<TabBarDemo> {

bool newStudent= false;
bool oldStudent= false;
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      home: Scaffold(
        body:DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(child: Text("Home Page")),
                Tab(child: Text("Verify")),
                Tab(child: Text("Submit")),
              ],
            ),
            title: const Text('Tabs Demo'),
          ),
          body:  TabBarView(
            children:  [
              
              Column(
                children: [
                 Icon(Icons.folder, size: 60, color: Colors.grey,),
                  Text("Assignment"),
                  SizedBox(height: 20,),
                  Icon(Icons.folder, size: 60, color: Colors.grey,),
                  Text("Results"),
                  SizedBox(height: 20,),
                  Icon(Icons.list_alt_sharp, size: 60, color: Colors.grey,),
                  Text("Attendance"),
                  SizedBox(height: 20,)
                ],
              ),
              Column(
                children: [
                  const Text(" Select anyone:"),
                  SizedBox(
                    width: 20,
                  ),
                  Text("New Student"),
                  Checkbox(
                      value: newStudent,
                      onChanged: (bool? value) {
                        setState(() {
                          newStudent = value!;
                          if (oldStudent == true) {
                            oldStudent = false;
                          }
                        });
                      }),
                  SizedBox(height: 20),
                  Text("Old Student"),
                  Checkbox(
                      value: oldStudent,
                      onChanged: (bool? value) {
                        setState(() {
                          oldStudent = value!;
                          if (newStudent == true) {
                            newStudent = false;
                          }
                        });
                      }),
                ],
              ),
              Center(child: Text("Thank you for your submission"))


            ],

          ),
        ),
      ),
      )
    );
  }
}