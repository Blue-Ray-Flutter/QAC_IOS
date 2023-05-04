import 'package:adobe/shared/components/button/button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends GetWidget
{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Button(onPressed: () {  }, text: 'come on',),
          bottomNavigationBar: ListView.separated(

            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            
            itemBuilder: (BuildContext context, int index) { return
                Padding(
                  padding: const EdgeInsets.only(bottom: 20,left: 8),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(30),
              ),
              child: IconButton(onPressed: (){}, icon: const Icon(Icons.add),),


            ),
                  ),
                ); },

            separatorBuilder: (BuildContext context, int index) {  return const SizedBox(width: 10,); },
            itemCount: 5,



          ),
        ),
    );
  }

}

