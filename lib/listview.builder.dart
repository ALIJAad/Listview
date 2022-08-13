import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class myTODO extends StatefulWidget {
  const myTODO({Key? key}) : super(key: key);

  @override
  State<myTODO> createState() => _myTODOState();
}

class _myTODOState extends State<myTODO> {
  TextEditingController todotext = TextEditingController();
  TextEditingController dialogcontroller = TextEditingController();
  List<String> todo = [];

//'\\ //'\\

  addTodo() {
    setState(() {
      todo.add(todotext.text);
      todotext.clear();
    });
    setState(() {
      if (todotext.text == null) {
        Text("Empty TODO");
      }
    });
    print(todo);
  }

  removetodo() {
    setState(() {
      todo.remove(todo.last);
    });
  }

  updatetodo(index) {
    setState(() {
      todo[index] = dialogcontroller.text;
      dialogcontroller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: todotext,
            ),
            IconButton(
              onPressed: () {
                addTodo();
              },
              icon: Icon(Icons.add),
            ),
            IconButton(
              onPressed: () {
                removetodo();
              },
              icon: Icon(Icons.remove),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: todo.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Row(children: [
                        Text(todo[index]),
                        Spacer(),
                        IconButton(
                          onPressed: () {
                            removetodo();
                          },
                          icon: const Icon(
                            Icons.delete,
                            color: Colors.blue,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                        title: Text("Edit"),
                                        content: TextField(
                                          controller: dialogcontroller,
                                        ),
                                        actions: [
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Text("Yes"),
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Text("No"),
                                          ),
                                        ],
                                      ));
                            });
                          },
                          icon: const Icon(
                            Icons.edit,
                            color: Colors.blue,
                          ),
                        ),
                      ]),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
