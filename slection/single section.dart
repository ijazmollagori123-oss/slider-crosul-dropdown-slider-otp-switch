import 'package:taskrow/slection/models/models for single sectio and multi.dart';
import 'package:flutter/material.dart';
class Single_secton extends StatefulWidget {
  const Single_secton({super.key});

  @override
  State<Single_secton> createState() => _Single_sectonState();
}

class _Single_sectonState extends State<Single_secton> {
  List<Models_section> languageList=[
    Models_section(name: "Pashto"),
    Models_section(name: 'Arabic'),
    Models_section(name: 'English'),
    Models_section(name: 'urdu'),
    Models_section(name: 'Hindku'),
    Models_section(name: 'Farsi'),

  ];
  int selectedIndex=-1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Single section'),
        centerTitle: true,
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: languageList.length,
        itemBuilder:(BuildContext context,int index){
          return ListTile(
            onTap: (){
              setState(() {
                selectedIndex = index;
              });
            },
            selected: selectedIndex == index,
            selectedColor: Colors.white,
            selectedTileColor: Colors.blue,
            leading: Icon(
                selectedIndex == index
                    ? Icons.check_circle_rounded
                    : Icons.language),
            title: Text("${languageList[index].name.toString()},$selectedIndex"),
            subtitle: Text("$index"),
            trailing: Icon(
                selectedIndex == index
                    ? Icons.radio_button_checked
                    : Icons.radio_button_unchecked),
          );
        },

      ),
          );
        
  }
}
