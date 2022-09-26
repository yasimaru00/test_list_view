import 'package:flutter/material.dart';
import 'package:test_list_view/scroll_animator.dart';
import 'package:test_list_view/widgets/vertical_list.dart';
import 'package:test_list_view/widgets/gridview_list.dart';
import 'package:test_list_view/widgets/horizontal_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo', theme: ThemeData.light(), home: const Body());
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // new Positioned(
            //   top: 0.0,
            //   left: 0.0,
            //   right: 0.0,
            //   child: AppBar(
            //     title: Text(''),
            //     leading: new IconButton(
            //       onPressed: () => Navigator.of(context).pop(),
            //       icon: new Icon(Icons.arrow_back_ios, color: Colors.grey),
            //     ),
            //   ),
            // ),
            // // Padding(
            //   padding: EdgeInsets.only(bottom: 200),
            // ),
            btn1(context, "Menampilkan Grid", () {
              buildBottomBody(context);
            }),
            btn1(context, "Menampilakn List View Vertikal", () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const VerticalList();
              }));
            }),
            btn1(context, "Menampilkan Grid View Vertikal", () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const GridList();
              }));
            }),
            btn1(context, "Menampilkan List View Horizontal", () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const HorizontalList();
              }));
            }),
          ],
        ),
      ),
    );
  }

  Widget btn1(BuildContext context, String text, Function() click) {
    return MaterialButton(
      color: Color.fromARGB(255, 136, 255, 0),
      minWidth: 300,
      onPressed: click,
      child: Text(text),
    );
  }

  void buildBottomBody(BuildContext context) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (BuildContext innerContext) {
          return Container(
            height: MediaQuery.of(innerContext).size.height,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: <Widget>[
                buildHeader(),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 3,
                    // shrinkWrap: true,
                    children: List.generate(9, (i) => buildImage()).toList(),
                  ),
                )
              ],
            ),
          );
        });
  }
}

Widget buildImage() {
  return GridAnimatorWidget(
    child: Padding(
      padding: const EdgeInsets.all(4),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        child: Container(
          color: Color.fromARGB(255, 255, 0, 0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://dafunda.com/wp-content/uploads/2021/10/Nexus_personal_1.jpg"),
          ),
        ),
      ),
    ),
  );
}

Widget buildHeader() {
  return Padding(
    padding: const EdgeInsets.all(4),
    child: ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      child: Container(
        width: double.infinity,
        height: 150,
        color: Color.fromARGB(255, 255, 0, 0),
        child: const Center(
            child: Text(
          "Grid Animasi",
          style: TextStyle(fontSize: 30, color: Colors.white),
        )),
      ),
    ),
  );
}
