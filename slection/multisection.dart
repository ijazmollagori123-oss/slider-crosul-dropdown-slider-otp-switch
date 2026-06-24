import 'package:flutter/material.dart';
import 'package:taskrow/slection/models/models%20for%20single%20sectio%20and%20multi.dart';


class Multisection_ extends StatefulWidget {
  const Multisection_({super.key});

  @override
  State<Multisection_> createState() => _Multisection_State();
}

class _Multisection_State extends State<Multisection_> {
  List<Models_section>hobbies=[
    Models_section(name: 'Foot Ball '),
    Models_section(name: 'Cricket'),
    Models_section(name: 'Tennis '),
    Models_section(name: 'Kabbadi'),
    Models_section(name: 'Hockey'),
  ];
  List<int> selectedIndex =[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Multi section'),
        centerTitle: true,
        backgroundColor: Colors.tealAccent,
        foregroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: hobbies.length,
          itemBuilder:(BuildContext context,int index){
            return ListTile(
              onTap: () {
                setState(() {
                  if (selectedIndex.contains(index)) {
                    selectedIndex.remove(index);
                  } else {
                    selectedIndex.add(index);
                  }
                });
              },
              tileColor: selectedIndex.contains(index)?Colors.lightBlue:Colors.white,
              textColor: selectedIndex.contains(index)?Colors.white:Colors.black,
              iconColor: selectedIndex.contains(index)?Colors.white:Colors.black,
leading: Icon(selectedIndex.contains(index)?Icons.sports_bar_outlined:Icons.check_circle_outline_rounded),
              title: Text(hobbies[index].name.toString()),
              trailing: Icon(selectedIndex.contains(index)?Icons.radio_button_checked:Icons.check_circle_rounded),

            );
          }
      ),
    );
  }
}
