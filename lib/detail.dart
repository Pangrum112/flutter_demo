import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Detail Screen"),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(16.0), bottom: Radius.circular(10.0)),
                child: Image.asset(
                  width: double.infinity,
                  'assets/images/KFC.png',
                  // Replace with your image URL
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Wing Zabb",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              RatingBarIndicator(
                rating: 5,
                itemBuilder: (context, index) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                itemCount: 5,
                itemSize: 50.0,
                unratedColor: Colors.amber.withAlpha(50),
                direction: Axis.horizontal,
              ),
              Text(
                "Description",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Text(
                " มากันที่อีกหนึ่งเมนูกับสูตรอาหาร ไก่ทอด ไก่วิงแซ่บ ชื่อดัง รสชาติเข้มข้น ทำง่าย อร่อยได้ทั้งครอบครัว! เมนูไก่ทอดชื่อดังที่ได้รสชาติไทยๆ พร้อมข้าวคั่วแสนอร่อย เป็นรสชาติไก่ทอดที่คนไทยคุ้นเคยกันเป็นอย่างดี แต่รู้ไหมว่าจริงๆ แล้วไก่วิงแซ่บนั้นมีวิธีทำง่ายแสนง่าย เอามาเป็นไอเดียเมนูปาร์ตี้ปีใหม่ ที่บอกเลยว่ากินเพลินกันทั้งครอบครัวแน่นอน อยากรู้แล้วใช่ไหมละว่าไก่วิงแซ่บมีวิธีทำยังไง ตามมาดูกันเลย!",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              Text(
                "Nutrition facts",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Container(
                decoration: BoxDecoration(
                 //DecorationImage
                 //  border: Border.all(
                 //    // color: Colors.green,
                 //    width: 8,
                 //  ), //Border.all
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.pink
                ),
                // color: Colors.pink,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 30),
                  child: Column(
                    children: [
                      Text(
                        "cal",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                      Text("320",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w800))
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("go to next page"),
              )
            ],
          ),
        )

        //   Column(
        //     children: [
        // ElevatedButton(onPressed: (){
        // Navigator.pop(context);}
        //     ],
        //   ),
        );
  }
}
