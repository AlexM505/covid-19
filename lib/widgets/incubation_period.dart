import 'package:flutter/material.dart';

class IncubationPeriod extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
        children: <Widget>[
          InkWell(
            child:const ListTile(
              leading: Image(image:AssetImage("assets/images/calendar.png"),width: 64, height: 50,),
              title: Text("Incubation Period",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xff505050))),
              subtitle: Text("2-14 Days",style: TextStyle(fontSize:16.0,color: Colors.redAccent)),
            ),
            onTap: (){
              showDialog(
                  context: context,
                  builder: (BuildContext context){
                    return AlertDialog(
                      shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.circular(15.0)),
                      title: Text("COVID-19 Incubation Period"),
                      content: Text("""The incubation period (time from exposure to the development of symptoms) of the virus is estimated to be between 2 and 14 days based on the following sources:

                      *The World Health Organization (WHO) reported an incubation period for COVID-19 between 2 and 10 days.
                      *China’s National Health Commission (NHC) had initially estimated an incubation period from 10 to 14 days.
                      *The United States' CDC estimates the incubation period for COVID-19 to be between 2 and 14 days.
                      *DXY.cn, a leading Chinese online community for physicians and health care professionals, is reporting an incubation period of "3 to 7 days, up to 14 days"."""
                      ),
                      actions: <Widget>[
                        FlatButton(
                          child: Text("Close"),
                          onPressed: (){
                            Navigator.of(context).pop();
                          },
                        )
                      ],
                    );
                  }
              );
            },
          ),
        ],
      ),
    );
  }
}