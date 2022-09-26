import 'package:flutter/material.dart';
import 'package:test_list_view/scroll_animator.dart';

class VerticalList extends StatelessWidget {
  const VerticalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: new IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: new Icon(Icons.arrow_back_ios, color: Colors.black),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: AnimatedListView(
              // scrollDirection: Axis.horizontal,
              duration: 100,
              children: List.generate(
                  21,
                  (index) => Card(
                        elevation: 50,
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        shadowColor: Colors.black,
                        color: Color.fromARGB(255, 255, 0, 0),
                        child: SizedBox(
                          height: 300,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor:
                                      Color.fromARGB(255, 255, 255, 255),
                                  radius: 60,
                                  child: const CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://dafunda.com/wp-content/uploads/2021/10/Nexus_personal_1.jpg"),
                                    //NetworkImage
                                    radius: 50,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Ultraman Nexus',
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.blue[900],
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'Episode 11 Sub Indo',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ))),
        ));
  }
}
