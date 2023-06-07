import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back_sharp,
                color: Colors.black,
              )),
        ),
        body: Center(
          child: Column(
            children: [
              //ส่วนบน
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [buildProfileImage()],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('อัพโหลดรูปภาพ',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(70, 147, 137, 1)))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              //ส่วนกลาง
              Column(
                children: [
                  getEditProfile('ขวัญนภา ไทยจันทึก'),
                  getEditProfile('@Babykwanisgrewup'),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 36,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromRGBO(83, 167, 144, 1)),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'บันทึก',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  getEditProfile(String name) {
    return Column(
      children: [
        const Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 59, top: 10, bottom: 5),
              child: Text(
                'Name',
                style: TextStyle(
                    fontSize: 16, color: Color.fromRGBO(72, 71, 71, 1)),
              ),
            )
          ],
        ),
        Container(
          height: 49,
          width: 298,
          decoration: BoxDecoration(
            border: Border.all(
                width: 3, color: const Color.fromRGBO(215, 215, 215, 1)),
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.only(left: 15),
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                    decoration: InputDecoration(
                        hintText: name, border: InputBorder.none)),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget buildProfileImage() => const CircleAvatar(
        radius: 60,
        backgroundColor: Color.fromRGBO(139, 204, 178, 1),
        child: CircleAvatar(
          radius: 56,
          backgroundImage: AssetImage('images/me.jpg'),
        ),
      );
}
