import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class curpationoswitch extends StatefulWidget {
  const curpationoswitch({super.key});

  @override
  State<curpationoswitch> createState() => _curpationoswitchState();
}

class _curpationoswitchState extends State<curpationoswitch> {
  bool IsSwitch=false;
  bool Bswitch=false;
  bool Nswitch=false;
  bool Dseitch=false;
  double Currentnum=20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      leading: Icon(Icons.arrow_back),
      title: Text('Cupertino Switch'),
      backgroundColor: CupertinoColors.systemBlue,
      foregroundColor: Colors.white,
      actions: [Icon(Icons.watch_later_outlined),
      Icon(Icons.notifications_none),],
      centerTitle: true,
    ),
body: 
      Column(
        children: [
          Text('Settings',style: TextStyle(fontSize: 33,fontWeight: FontWeight.bold,),),
          Card(
         //   color: IsSwitch ? Colors.green.withOpacity(0.5) : Colors.red.withOpacity(0.5),
            child: ListTile(
              leading: Icon(IsSwitch?Icons.wifi:Icons.wifi_1_bar),
              title: Text('Wifi',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              subtitle: Text(IsSwitch?'ON':"OFF"),
              trailing: CupertinoSwitch(
                activeColor: Colors.deepPurpleAccent,
                  inactiveTrackColor: Colors.white12,
                trackOutlineColor: WidgetStatePropertyAll(Colors.grey),
                  thumbColor: Colors.white,
                  inactiveThumbColor: Colors.grey,
            
            
            
                  value: IsSwitch,
                  onChanged: (val){
                  setState(() {
                    IsSwitch=val;
            
                  });
                  },
            ),
            ),
          ),
          Card(
            //   color: IsSwitch ? Colors.green.withOpacity(0.5) : Colors.red.withOpacity(0.5),
            child: ListTile(
              leading: Icon(Bswitch?Icons.bluetooth_connected:Icons.bluetooth_disabled),
              title: Text('Bluetooth',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              subtitle: Text(Bswitch?'ON':"OFF"),
              trailing: CupertinoSwitch(
                activeColor: Colors.deepPurpleAccent,
                inactiveTrackColor: Colors.white12,
                trackOutlineColor: WidgetStatePropertyAll(Colors.grey),
                thumbColor: Colors.white,
                inactiveThumbColor: Colors.grey,



                value: Bswitch,
                onChanged: (val){
                  setState(() {
                    Bswitch=val;

                  });
                },
              ),
            ),
          ),
          Card(
            //   color: IsSwitch ? Colors.green.withOpacity(0.5) : Colors.red.withOpacity(0.5),
            child: ListTile(
              leading: Icon(Nswitch?Icons.notifications_on:Icons.notifications_none),
              title: Text('Nontification',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              subtitle: Text(Nswitch?'ON':"OFF"),
              trailing: CupertinoSwitch(
                activeColor: Colors.deepPurpleAccent,
                inactiveTrackColor: Colors.white12,
                trackOutlineColor: WidgetStatePropertyAll(Colors.grey),
                thumbColor: Colors.white,
                inactiveThumbColor: Colors.grey,



                value: Nswitch,
                onChanged: (val){
                  setState(() {
                    Nswitch=val;

                  });
                },
              ),
            ),
          ),
          Card(
            //   color: IsSwitch ? Colors.green.withOpacity(0.5) : Colors.red.withOpacity(0.5),
            child: ListTile(
              leading: Icon(Dseitch?Icons.light_mode:Icons.light_mode_outlined),
              title: Text('Dark Mode',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              subtitle: Text(Dseitch?'ON':"OFF"),
              trailing: CupertinoSwitch(
                activeColor: Colors.deepPurpleAccent,
                inactiveTrackColor: Colors.white12,
                trackOutlineColor: WidgetStatePropertyAll(Colors.grey),
                thumbColor: Colors.white,
                inactiveThumbColor: Colors.grey,



                value: Dseitch,
                onChanged: (val){
                  setState(() {
                    Dseitch=val;

                  });
                },
              ),
            ),
          ),
          Slider(
              min: 0,
              max: 100,
              divisions: 10,
              label: Currentnum.round().toString(),
              thumbColor: Colors.white,
              showValueIndicator:ShowValueIndicator.always,
              value: Currentnum,
              onChanged: (val){
            setState(() {
              Currentnum=val;
            });
              }
          )
        ],
      ),
    );
  }
}
