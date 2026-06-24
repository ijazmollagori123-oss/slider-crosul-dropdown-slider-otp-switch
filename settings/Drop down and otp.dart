import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class dropdown extends StatefulWidget {
  const dropdown({super.key});

  @override
  State<dropdown> createState() => _dropdownState();
}

class _dropdownState extends State<dropdown> {
  List<String> SelctedList=[
'Ijaz','sheraz','Rahat','Ajmal','Riaz','Haris'
  ];
  String?SelectedUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text('Drop Down'),
        centerTitle: true,
        backgroundColor: Colors.tealAccent,
        foregroundColor: Colors.black,
        actions: [Icon(Icons.watch_later_outlined),
        Icon(Icons.notifications_none)],

      ),
      body:
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text('OTP',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 33),),
                SizedBox(height: 10,),
                Pinput(
                  length: 5,
                  showCursor: true,
                  onCompleted: (value){
                    print(value);
                  },
                  defaultPinTheme: PinTheme(
                    height: 50,width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                      border: BoxBorder.all(color: Colors.grey),
                    ),
                    textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w900,color: Colors.white)
                  ),
                ),
                SizedBox(height: 100,),


              Text('Users',style: TextStyle(fontSize: 33,fontWeight: FontWeight.bold),),
              DropdownButton(
                hint: Text('Select User'),
                  menuWidth: 200,


                  items:SelctedList.map((user){
                    return DropdownMenuItem(

                        value: user,
                        child: Text(user.toString()));

                  }).toList(),

                  onChanged: (val){
                    setState(() {
                      SelectedUser=val;
                    });
                  }

              )
            ],),
          ),
        ),

    );
  }
}
