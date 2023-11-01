import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pertemuan4/model/notes_model.dart';
import 'package:pertemuan4/widget/button_widget.dart';

List<NotesModel> catList = [];

class HomeScreenLat extends StatefulWidget {
  const HomeScreenLat({super.key});

  @override
  State<HomeScreenLat> createState() => _HomeScreenLatState();
}

class _HomeScreenLatState extends State<HomeScreenLat> {
  DateTime dueDate = DateTime.now();
  final currentDate = DateTime.now();
  final judulController = TextEditingController();
  final descController = TextEditingController();

  void dispose() {
    judulController.dispose();
    descController.dispose();
    super.dispose();
  }

  void addList() {
    catList.add(
        NotesModel(title: judulController.text, desc: descController.text));
    reset();
    setState(() {});
  }

  void reset() {
    judulController.clear();
    descController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 70, 30, 30),
          child: Column(
            children: [
              const Text("Pertemuan 1"),
              const SizedBox(
                height: 30,
              ),
              const Text("Pertemuan 2"),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                  ),
                  onPressed: () {},
                  child: const Text("Login"))
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Date"),
                    TextButton(
                        onPressed: () async {
                          final selectDate = await showDatePicker(
                              context: context,
                              initialDate: currentDate,
                              firstDate: DateTime(2000),
                              lastDate: DateTime(currentDate.year + 5));
                          setState(() {
                            if (selectDate != null) {
                              dueDate = selectDate;
                            }
                          });
                        },
                        child: Text("Select"))
                  ],
                ),
                Text(DateFormat('dd.MM.yy').format(dueDate)),
              ],
            ),
          ),
          Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.lightBlue.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  TextFormField(
                    controller: judulController,
                    decoration: const InputDecoration(
                        label: Text("Judul"), hintText: "Masukkan judul"),
                  ),
                  TextFormField(
                    controller: descController,
                    maxLines: 5,
                    decoration: const InputDecoration(
                        label: Text("Deskripsi"),
                        hintText: "Masukkan deskripsi"),
                  ),
                  ButtonWidget(
                      title: "Save",
                      onPressed: () {
                        addList();
                      })
                ],
              )),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            child: ListView.builder(
                itemCount: catList.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.amber.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Judul: "),
                            Text(catList[index].title),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Isi Catatan: "),
                            Text(catList[index].desc ?? ""),
                          ],
                        )
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
