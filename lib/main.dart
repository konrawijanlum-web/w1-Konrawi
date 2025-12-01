import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),

      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/second': (context) => const SecondPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.green[500]),
              child: Column(
                children: [
                  Text(
                    "ข้อมูลส่วนตัว",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: ClipOval(
                      child: Image.network(
                        "https://i.pinimg.com/736x/b8/5f/3a/b85f3a28fd572685b0dab45537113294.jpg",
                        width: 200,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  SizedBox(height: 10),
                  Text("Konrawi Janlum"),
                  SizedBox(height: 10),
                  Text("Konrawi.Janlum@e-tech.ac.th"),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(23),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("ข้อมูลส่วนตัว"),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.green[100],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Icon(Icons.phone, color: Colors.green),
                      ),
                      SizedBox(width: 18),
                      Column(
                        children: [Text("เบอร์โทรศัพท์"), Text("085-396-5356")],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.pinkAccent[100],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Icon(Icons.cake, color: Colors.pinkAccent),
                      ),
                      SizedBox(width: 18),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text("วันเกิด"), Text("28 เมษายน 2548")],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.orangeAccent[100],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Icon(Icons.pin_drop, color: Colors.orangeAccent),
                      ),
                      SizedBox(width: 18),
                      Column(children: [Text("ที่อยู่"), Text("ชลบุรี")]),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.purple[100],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Icon(Icons.school, color: Colors.purple),
                      ),
                      SizedBox(width: 18),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(" การศึกษา"),
                          Text("วิทยาลัยเทคโนโลยีภาคตะวันออก(อี.เทค)"),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/second'),
                    child: Text("Go to Second"),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(2000, 50),
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        child: ClipOval(
                          child: Image.network(
                            "https://preview.redd.it/day-4-of-recreating-memes-as-ben-10-aliens-v0-rg48lnp4849c1.jpg?width=640&crop=smart&auto=webp&s=fc953dba4dac0e4aea3f928b7f4df037627f6f12",
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        height: 40,
                        child: Row(
                          children: [
                            Column(children: [Text("5"), Text("กำลังติดตาม")]),
                            SizedBox(width: 15),
                            VerticalDivider(
                              thickness: 1,
                              color: Colors.grey[400],
                              width: 1,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 15),
                      Container(
                        height: 40,
                        child: Row(
                          children: [
                            Column(children: [Text("31"), Text("ผู้ติดตาม")]),
                            SizedBox(width: 15),
                            VerticalDivider(
                              thickness: 1,
                              color: Colors.grey[400],
                              width: 1,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 15),
                      Column(children: [Text("300"), Text("ถูกใจและบันทึก")]),
                    ],
                  ),
                  SizedBox(width: 20, height: 20),
                  Container(
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Konrawi_IV",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: 10,),
                        Icon(Icons.verified, color: Colors.blue),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.tiktok,color: Colors.grey[500],size: 20,),
                        Text(
                          "Konrawi_IV",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[500],
                          ),
                        ),
                        Icon(Icons.arrow_drop_down_outlined,color: Colors.grey[500],size: 20,),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () => Navigator.pushNamed(context, '/second'),
                          child: Text("ติดตาม",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(300, 40),
                            backgroundColor: Colors.yellow,
                            foregroundColor: Colors.black,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              SizedBox(width: 50,height: 13,),
                              Icon(Icons.share,color: Colors.black,)
                            ],
                          ),
                        )

                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 0,bottom: 10,left: 12),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 10,),
                        Image.network(
                          "https://i.pinimg.com/736x/2e/76/68/2e7668e6184303452bf84f7054aec206.jpg"
                        ,
                        width: 165,
                        height: 300,
                        ),
                        SizedBox(width: 10,),
                        Image.network(
                          "https://i.pinimg.com/736x/91/4a/6e/914a6e43fd57b954fd33571a4399077f.jpg"
                          ,
                          width: 180,
                          height: 300,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
