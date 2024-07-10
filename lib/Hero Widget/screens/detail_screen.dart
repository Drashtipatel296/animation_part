import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'box',
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Icon(
                Icons.more_vert,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 40,right: 40,top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.alarm,
                color: Colors.red.shade300,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                '8 Tasks',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Custom',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    width: 250,
                    child: LinearProgressIndicator(
                      value: 0.8,
                      color: Color(0xffE67169),
                    ),
                  ),
                  Text(
                    "80%",
                    style: TextStyle(
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Previous - Thu',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: Colors.red,
                    value: true,
                    onChanged: (value) {},
                  ),
                  Text(
                    '     Meet Clients',
                    style: TextStyle(fontSize: 16),
                  ),
                  Spacer(),
                  Icon(
                    Icons.alarm,
                    color: Colors.grey,
                    size: 28,
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: Colors.red,
                    value: true,
                    onChanged: (value) {},
                  ),
                  Text(
                    '     Design Sprint',
                    style: TextStyle(fontSize: 16),
                  ),
                  Spacer(),
                  Icon(
                    Icons.alarm,
                    color: Colors.grey,
                    size: 28,
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: Colors.red,
                    value: true,
                    onChanged: (value) {},
                  ),
                  Text(
                    '     Icon Set Design For Mobiles',
                    style: TextStyle(fontSize: 16),
                  ),
                  Spacer(),
                  Icon(
                    Icons.alarm,
                    color: Colors.grey,
                    size: 28,
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: Colors.red,
                    value: true,
                    onChanged: (value) {},
                  ),
                  Text(
                    '     HTML/CSS Study',
                    style: TextStyle(fontSize: 16),
                  ),
                  Spacer(),
                  Icon(
                    Icons.alarm,
                    color: Colors.grey,
                    size: 28,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Previous - Fri',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: Colors.red,
                    value: true,
                    onChanged: (value) {},
                  ),
                  Text(
                    '     Meet Clients',
                    style: TextStyle(fontSize: 16),
                  ),
                  Spacer(),
                  Icon(
                    Icons.alarm,
                    color: Colors.grey,
                    size: 28,
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: Colors.red,
                    value: true,
                    onChanged: (value) {},
                  ),
                  Text(
                    '     Design Sprint',
                    style: TextStyle(fontSize: 16),
                  ),
                  Spacer(),
                  Icon(
                    Icons.alarm,
                    color: Colors.grey,
                    size: 28,
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: Colors.red,
                    value: true,
                    onChanged: (value) {},
                  ),
                  Text(
                    '     Icon Set Design For Mobiles',
                    style: TextStyle(fontSize: 16),
                  ),
                  Spacer(),
                  Icon(
                    Icons.alarm,
                    color: Colors.grey,
                    size: 28,
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: Colors.red,
                    value: false,
                    onChanged: (value) {},
                  ),
                  Text(
                    '     HTML/CSS Study',
                    style: TextStyle(fontSize: 16),
                  ),
                  Spacer(),
                  Icon(
                    Icons.alarm,
                    color: Colors.grey,
                    size: 28,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
