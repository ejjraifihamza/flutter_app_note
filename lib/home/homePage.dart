import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List notes = [
    {
      'note':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s',
      'image': 'favicon.png'
    },
    {
      'note':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s',
      'image': 'favicon.png'
    },
    {
      'note':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s',
      'image': 'favicon.png'
    },
    {
      'note':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s',
      'image': 'favicon.png'
    },
    {
      'note':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s',
      'image': 'favicon.png'
    },
    {
      'note':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s',
      'image': 'favicon.png'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).pushNamed('addNotePage');
        },
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Container(
        child: ListView.builder(
          itemCount: notes.length,
          itemBuilder: (context, index) {
            return Dismissible(
                key: Key('$index'),
                child: ListNotes(
                  a: notes[index],
                ));
          },
        ),
      ),
    );
  }
}

class ListNotes extends StatelessWidget {
  final a;
  ListNotes({this.a});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Image.asset('assets/favicon.png'),
          ),
          Expanded(
            flex: 3,
            child: ListTile(
              title: Text('Title'),
              subtitle: Text('${a['note']}'),
              trailing: Column(
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
