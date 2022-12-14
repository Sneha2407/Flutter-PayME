// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui1/PaymentPage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required String title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> _items = [
    'India',
    'UK',
    'USA',
    'France',
    'China',
    'Japan',
    'Russia',
    'Canada'
  ];
  String dropdownvalue = 'India';
  final List<String> _lang = ['Hindi', 'English', 'Bengali'];
  String dropdownvalue1 = 'English';
  DateTime _dateTime = DateTime.now();
  void _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    ).then((value) {
      setState(() {
        _dateTime = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.h),
          child: AppBar(
              backgroundColor: Color(0xff341f74),
              //centerTitle: false,
              titleSpacing: -15,
              title: Text(
                "Personal Settings",
                style: TextStyle(fontFamily: "Poppins"),
              ),
              leading: Icon(Icons.arrow_back_ios),
              actions: [
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
              ]),
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 30.w, right: 20.w, top: 20.h),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50.h),
                Center(
                  child: CircleAvatar(
                    radius: 56,
                    backgroundColor: Colors.red,
                    child: Padding(
                      padding: const EdgeInsets.all(8), // Border radius
                      child: ClipOval(
                          child: Image.network(
                              'https://www.vectorstock.com/royalty-free-vector/female-avatar-profile-icon-round-woman-face-vector-18307304')),
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                Text("Name*"),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your name',
                  ),
                ),
                SizedBox(height: 20.h),
                Text("Email*"),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'abc@gmail.com',
                  ),
                ),
                SizedBox(height: 20.h),
                Text("Date of Birth*"),
                // TextField(
                //   decoration: InputDecoration(
                //     border: OutlineInputBorder(),
                //     hintText: 'dd/mm/yyyy',
                //   ),
                // ),
                // Text(_dateTime.day.toString()),
                // MaterialButton(
                //     onPressed: _showDatePicker, child: (Text("Choose Date"))),
                // SizedBox(height: 20.h),
                // Text("Country of Residence*"),
                // DropdownButton<String>(
                //   isExpanded: true,
                //   value: dropdownvalue,
                //   items: _items.map((String value) {
                //     return DropdownMenuItem<String>(
                //       value: value,
                //       child: Text(value),
                //     );
                //   }).toList(),
                //   onChanged: (String? newValue) {
                //     setState(() {
                //       dropdownvalue = newValue!;
                //     });
                //   },

                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xff8E8E8E),
                    ),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  margin: EdgeInsets.only(top: 10),
                  child: DateTimePicker(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                    dateMask: 'dd/MM/yyyy',
                    initialValue: DateTime.now().toString(),
                    type: DateTimePickerType.date,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16.h,
                      fontFamily: 'Poppins',
                      color: Color(0xff362477),
                    ),
                    firstDate: DateTime(1800),
                    lastDate: DateTime(2050),
                    // This will add one year from current date
                    validator: (value) {
                      return null;
                    },
                    onChanged: (value) {
                      if (value.isNotEmpty) {
                        setState(() {
                          // _selectedDate = value;
                        });
                      }
                    },
                    onSaved: (value) {
                      if (value!.isNotEmpty) {
                        // _selectedDate = value;
                      }
                    },
                  ),
                ),

                SizedBox(height: 20.h),
                Text("Preferred Language*"),
                DropdownButton<String>(
                  isExpanded: true,
                  value: dropdownvalue1,
                  items: _lang.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue1 = newValue!;
                    });
                  },
                ),
                SizedBox(height: 20.h),
                Text("Phone Number*"),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: '+91 ',
                  ),
                ),
                SizedBox(height: 20.h),

                Padding(
                    padding:
                        const EdgeInsets.only(left: 18.0, right: 18, top: 17),
                    child: SizedBox(
                      height: 50.h,
                      width: 340.w,
                      child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xffE5E5E5),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: TextButton(
                            onPressed: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => ChangePassword()));
                            },
                            child: Text(
                              "CHANGE PASSWORD",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 16,
                                  color: Colors.black,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.w500),
                            ),
                          )),
                    )),

                // ElevatedButton(
                //   onPressed: () {},
                //   style: ElevatedButton.styleFrom(
                //     foregroundColor: Colors.white,
                //     backgroundColor: Colors.blue,
                //     disabledForegroundColor: Colors.grey.withOpacity(0.38),
                //     maximumSize:
                //         Size.fromWidth(100.w), // Set width to 100% of parent
                //   ),
                //   child: Text("Save"),
                // ),
                SizedBox(height: 5.h),
                Padding(
                    padding:
                        const EdgeInsets.only(left: 18.0, right: 18, top: 17),
                    child: SizedBox(
                      height: 50.h,
                      width: 340.w,
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color(0XFF362477),
                                  // Color(0XFF362477),
                                  Color(0XFFB130AA),
                                ]),
                          ),
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PaymentPage()));
                            },
                            child: Text(
                              "SAVE",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 16,
                                  color: Colors.white,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.w500),
                            ),
                          )),
                    )),

                // TextButton(
                //   onPressed: () {},
                //   style: TextButton.styleFrom(
                //     foregroundColor: Colors.white,
                //     backgroundColor: Colors.blue,
                //     disabledForegroundColor: Colors.grey.withOpacity(0.38),
                //   ),
                //   child: Text("Change Password"),
                // ),
                SizedBox(height: 30.h),
              ],
            ),
          ),
        ));
  }
}
