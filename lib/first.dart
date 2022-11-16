import 'package:check_box1/modal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {



  model c = Get.put(model());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("checkbox",style: TextStyle(fontSize: 20),)),
        body: Column(
          children: [
            Obx(() => CheckboxListTile( title: Text("KEYBORD=250/-",style: TextStyle(fontSize: 25)),value:c.t1.value,onChanged: (value) {

              c.t1.value=value!;
              if(c.t1==true)
              {
                c.ans=c.ans+250;
                c.sp.value.write("250");
              }
              else
              {
                c.ans=c.ans-250;
                c.sp.value.clear();
              }


            },),),
           Obx(() =>  CheckboxListTile( title: Text("MOUCE=500/-",style: TextStyle(fontSize: 25)),value:c.t2.value,onChanged: (value) {

             c.t2.value=value!;
             if(c.t2==true)
             {
               c.ans=c.ans+500;
               c.sp1.value.write("500");
             }
             else
             {
               c.ans=c.ans-500;
               c.sp1.value.clear();
             }

           },),),
            Obx(() =>   CheckboxListTile( title: Text("MONITOR=1000/-",style: TextStyle(fontSize: 25)),value:c.t3.value,onChanged: (value) {

              c.t3.value=value!;
              if(c.t3==true)
              {
                c.ans=c.ans+1000;
                c.sp2.value.write("1000");
              }
              else
              {
                c.ans=c.ans-1000;
                c.sp2.value.clear();
              }

            },),),
            ElevatedButton(onPressed: () {

                c.khali.value=c.ans.toString();

            }, child: Text("sublit",style: TextStyle(fontSize: 20),)),
           Obx(() => Container(
               height: 100,
               width: 100,
               child: Text("${c.khali}")
           ), ),

            Obx(() =>  Container(
                height: 100,
                width: 150,
                child: Text("${c.sp.toString()} ${c.sp1.toString()}  ${c.sp2.toString()}")
            ),)


          ],
        ),
    );
  }

}
