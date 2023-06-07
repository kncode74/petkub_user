import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget {
  FirstTab({super.key});
  final List<Widget> dogData = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 50, right: 50, top: 10),
      child: Column(
        children: [dataDog()],
      ),
    );
  }

  Widget dataDog() => Column(
        children: [
          Row(
            children: const [
              Text(
                'วันเกิด :',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: const [
              Text(
                'ปัจจุบันอายุ :',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: const [
              Text(
                'น้ำหนัก :',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: const [
              Text(
                'ส่วนสูง :',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: const [
              Text(
                'พ่อพันธุ์ :',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: const [
              Text(
                'แม่พันธุ์ :',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: const [
              Text(
                'สี :',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: const [
              Text(
                'วัคซีน :',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      );
}
