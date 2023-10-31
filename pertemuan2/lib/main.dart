import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body:
                // GridView.builder(
                //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                //         crossAxisCount: 2),
                //     itemCount: 5,
                //     itemBuilder: (context, index) {
                //       return Container(
                //         margin: const EdgeInsets.all(10),
                //         height: 100,
                //         width: 100,
                //         color: Colors.amber,
                //         child: const Center(child: Text("INCUBIX")),
                //       );
                //     })

                ListView.builder(
                    itemCount: 15,
                    itemBuilder: (context, index) {
                      return Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.green),
                          child: ListTile(
                            leading: Image.network(
                                "https://pbs.twimg.com/profile_images/1585960216054493185/ZQgjiP6a_400x400.jpg"),
                            title: const Text(
                              "INCUBIX TALENT FEST 2023 TEKNOLOGI",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: const Text("Mobile Development"),
                            trailing: const Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [Icon(Icons.person), Icon(Icons.edit)],
                            ),
                          )

                          // const Row(
                          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //   children: [
                          //     Row(
                          //       children: [
                          //         Icon(Icons.home),
                          //         SizedBox(
                          //           width: 10,
                          //         ),
                          //         Column(
                          //           crossAxisAlignment:
                          //               CrossAxisAlignment.start,
                          //           children: [
                          //             Text(
                          //               "INCUBIX TALENT FEST 2023",
                          //               style: TextStyle(
                          //                   fontWeight: FontWeight.bold),
                          //             ),
                          //             Text("Mobile Development")
                          //           ],
                          //         ),
                          //       ],
                          //     ),
                          //     Icon(Icons.person)
                          //   ],
                          // )
                          );
                    })));
  }
}
