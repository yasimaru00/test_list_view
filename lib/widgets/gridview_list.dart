import 'package:flutter/material.dart';
import 'package:test_list_view/scroll_animator.dart';

class GridList extends StatelessWidget {
  const GridList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // title: Text("Kembali"),
          leading: new IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: new Icon(Icons.arrow_back_ios, color: Colors.black),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: AnimatedGridView(
            duration: 100,
            crossAxisCount: 2,
            mainAxisExtent: 256,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            children: List.generate(
              21,
              (index) => Card(
                elevation: 50,
                shadowColor: Color.fromARGB(255, 0, 0, 0),
                color: Color.fromARGB(255, 255, 0, 0),
                child: SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: const [
                        CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 255, 255, 255),
                          radius: 60,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://dafunda.com/wp-content/uploads/2021/10/Nexus_personal_1.jpg"),
                            //NetworkImage
                            radius: 50,
                          ),
                        ),
                        Text(
                          "Ultraman\nNexus",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "Japan",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text("Action,Comedy")
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
