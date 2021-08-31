import 'package:flutter/material.dart';

class AddNotes extends StatefulWidget {
  const AddNotes({Key? key}) : super(key: key);

  @override
  _AddNotesState createState() => _AddNotesState();
}

class _AddNotesState extends State<AddNotes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Notes'),
      ),
      body: Container(
          padding: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                maxLength: 30,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.note),
                  labelText: 'Note',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                minLines: 1,
                maxLines: 3,
                maxLength: 200,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.description),
                  labelText: 'Description',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Add Image'),
                    Icon(Icons.image),
                  ],
                ),
                style: ButtonStyle(),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Submit'),
                style: Theme.of(context).elevatedButtonTheme.style,
              )
            ],
          )),
    );
  }
}
