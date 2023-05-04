import 'package:flutter/material.dart';

class Mainapp extends StatelessWidget {
  const Mainapp({super.key});
  final double profileHeight = 144;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(top: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [buildProfileImage()],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'ขวัญนภา  ไทยจันทึก',
                  style: TextStyle(
                      color: Color.fromRGBO(70, 147, 137, 1),
                      fontSize: 21,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Text(
              '@Babykwanisgrewup',
              style: TextStyle(
                  color: Color.fromRGBO(99, 96, 96, 1),
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'บันทึกไว้ 4 ตัว',
              style: TextStyle(
                  color: Color.fromRGBO(55, 54, 55, 1),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            //2box
            Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 80),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 3, color: Color.fromRGBO(70, 147, 137, 1)),
                        borderRadius: BorderRadius.circular(10)),
                    child: Material(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          child: Text(
                            'บันทึกไว้',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    color: Color.fromRGBO(83, 167, 144, 1),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        child: Text(
                          'แก้ไขโปรไฟล์',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //กล่องค้นหา
            //Padding(
            // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 7),
            //child: Container(
            // margin: EdgeInsets.only(top: 0.5, bottom: 0.5),
            // decoration: BoxDecoration(
            //  border: Border.all(width: 1, color: Colors.grey),
            //  color: Colors.white,
            // borderRadius: BorderRadius.circular(12),
            // boxShadow: [BoxShadow()]),
            //child: TextField(
            //  decoration: InputDecoration(
            //      prefixIcon: Icon(Icons.search),
            //     border: InputBorder.none,
            //     hintText: 'ค้นหา'),
            //),
            // ),
            //),

            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  getExpanded(
                      'me', '3', 'เพศผู้ สีวูฟ ตัวเล็ก \nขนสองสี ขนสวย ทรงสวย'),
                  getExpanded(
                      'me', '3', 'เพศผู้ สีวูฟ ตัวเล็ก \nขนสองสี ขนสวย ทรงสวย')
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  getExpanded('me', 'อายุ 3เดือน',
                      'เพศผู้ สีวูฟ ตัวเล็ก \nขนสองสี ขนสวย ทรงสวย'),
                  getExpanded('me', 'อายุ 3เดือน',
                      'เพศผู้ สีวูฟ ตัวเล็ก \nขนสองสี ขนสวย ทรงสวย')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

//เมธอดจัดการข้อมูลสุนัข
  getExpanded(String image, String age, String sub) {
    return Expanded(
        child: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('images/$image.jpg'),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            age,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            sub,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 11,
            ),
          )
        ],
      ),
      margin: EdgeInsets.only(left: 17, right: 11, bottom: 5, top: 11),
      decoration: BoxDecoration(
        color: Color.fromRGBO(253, 255, 145, 0.989),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(5),
          topRight: Radius.circular(5),
          bottomLeft: Radius.circular(5),
          bottomRight: Radius.circular(5),
        ),
        boxShadow: [
          BoxShadow(),
        ],
      ),
    ));
  }

  Widget buildProfileImage() => CircleAvatar(
        radius: 50,
        backgroundColor: Color.fromRGBO(70, 147, 137, 1),
        child: CircleAvatar(
          radius: 45,
          backgroundImage: AssetImage('images/me.jpg'),
        ),
      );

  Widget nameUser() => Column(
        children: const [
          Text("ขวัญนภา ไทยจันทึก", style: TextStyle(fontSize: 18)),
          Text('@Babykwanisgrewup')
        ],
      );
}
