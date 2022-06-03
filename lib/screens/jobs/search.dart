// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';


class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override

  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      title: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
          decoration: const BoxDecoration(
            color: Color.fromARGB(50, 255, 255, 255),
            borderRadius: BorderRadius.all(Radius.circular(22.0)),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: TextFormField(
                  autofocus: true,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search Here",
//                    hintStyle: TextStyle(color: Colors.white),
                    icon: Icon(Icons.search, color: Colors.grey),
                  ),
                ),
              ),
              Expanded(
                  flex: 0,
                  child: Row(children: <Widget>[
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.mic, color: Colors.white),
                    ),
                  ]))
            ],
          )),
      leading: const 
           Icon(
            Icons.arrow_back,
            color: Colors.grey,
          ),
    
          ),
    );
  }
}