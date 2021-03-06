import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TextEditor extends StatefulWidget {
  @override
  _TextEditorState createState() => _TextEditorState();
}

class _TextEditorState extends State<TextEditor> {
  TextEditingController name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        backgroundColor: Colors.white,
        actions: <Widget>[
          new IconButton(
              icon: Icon(FontAwesomeIcons.alignLeft), onPressed: () {}),
          new IconButton(
              icon: Icon(FontAwesomeIcons.alignCenter), onPressed: () {}),
          new IconButton(
              icon: Icon(FontAwesomeIcons.alignRight), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            TextField(
              controller: name,
              decoration: InputDecoration(
                hintText: "Insert your message",
                hintStyle: TextStyle(color: Colors.black),
                alignLabelWithHint: true,
              ),
              scrollPadding: EdgeInsets.all(20.0),
              keyboardType: TextInputType.multiline,
              maxLines: null,
              style: TextStyle(
                color: Colors.black,
              ),
              autofocus: true,
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.fromLTRB(0, 50, 0, 50),
              child: new FlatButton(
                onPressed: () {
                  Navigator.pop(context, name.text);
                },
                color: Theme.of(context).primaryColor,
                padding: EdgeInsets.all(15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: new Text(
                  "Add Text",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
