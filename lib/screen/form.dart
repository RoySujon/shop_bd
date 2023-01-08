// import 'dart:io';

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jiffy/jiffy.dart';
import 'package:shop_bd/utls/const.dart';
// import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class InputForm extends StatefulWidget {
  const InputForm({super.key});

  @override
  State<InputForm> createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {
  @override
  Widget build(BuildContext context) {
    print(gender);
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            RadioListTile(
              title: Text("Male"),
              value: "male",
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value.toString();
                });
              },
            ),

            //=======Radio Button===========> Start------>
            RadioListTile(
              title: Text("Female"),
              value: "female",
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value.toString();
                });
              },
            ),
            RadioListTile(
              title: Text("Other"),
              value: "other",
              groupValue:
                  gender, // ========> Group Value is alaws Same of every Radiobutton  <=========
              onChanged: (value) {
                setState(() {
                  gender = value.toString();
                });
              },
            ),
            //=======Radio Button===========> End------>
            //---------------------------------------------------------------------------------------
            //=======CheckBox Button===========> Strar------>
            CheckboxListTile(
              value: this.values,
              title: Text('DATA'),
              onChanged: (value) {
                setState(() {
                  this.values = value!;
                  // print(values);
                });
              },
            ),

            CheckboxListTile(
              value: this.valuess,
              title: Text(val == true ? 'True' : 'False'),
              onChanged: (value) {
                this.valuess = value!;
                val = value;
                print(valuess);
                setState(() {});
              },
            ),
            //=======CheckBox Button code ende ..........===========> End------>
//---------------------------------------------------------------------------------------
            //=======Select Date Button Code here......===========> Start------>
            ElevatedButton(
                onPressed: () => _selectDate(context),
                child: Text(selectedDate == null
                    ? 'Select Date'
                    : Jiffy(selectedDate).format("MMMM do yyyy"))),
            //=======Select Date Button===========> End------>

            //=======Select Image Button Start=================>

            ElevatedButton(
                onPressed: () {
                  //Image Picker Function Implement =================>
                  _selectImage();
                },
                child: Text('Sellect Image')),
            CircleAvatar(
              minRadius: 60,
              backgroundColor: kMainColor,
              child: profilePic == null
                  ? Icon(
                      Icons.person,
                      size: 100,
                    )
                  : Container(
                      height: 115,
                      width: 115,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: FileImage(File(profilePic!.path)),
                            fit: BoxFit.cover),
                        shape: BoxShape.circle,
                        color: kHoverColor,
                      ),
                    ),
            ),

            SingleChildScrollView(
              //DropdownButtonFormField code her ..........========================>
              child: DropdownButtonFormField(
                items:
                    districtOfBD.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(fontSize: 20),
                    ),
                  );
                }).toList(),
                onChanged: (value) {
                  print(value);
                },
              ),
            ),
            //DropdownButtonFormField code End her ..........========================>

            //DropDOwn Menu Code here=========================================>
            DropdownButton<String>(
              value: dropdownValue,
              icon: const Icon(Icons.arrow_drop_down),
              elevation: 16,
              style: const TextStyle(color: Colors.deepPurple),
              // underline: Container(height: 1, color: kMainColor),
              onChanged: (String? value) {
                // This is called when the user selects an item.
                setState(() {
                  dropdownValue = value!;
                  print(dropdownValue);
                });
              },
              items: districtOfBD.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            //DropDOwn Menu Code End here=========================================>
          ],
        ));
  }

//================> Radio Button Group variable Diclared <==================
  String? gender;
//================> Radio Button Group variable Diclared <==================
//---------------------------------------------------------------------------------------
//Checkbox Variable Decleared ======================>
  bool values = false;
  bool valuess = false;
  bool? val;
  //Checkbox Variable End==========================>
//---------------------------------------------------------------------------------------

//<===========Date Picker variable ----- selectedDate===========>
  DateTime? selectedDate;
  //=======Select Date Function===========> Start------>
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(

        // keyboardType: TextInputType.datetime,
        // fieldHintText: 'dkdkdkk',
        initialDatePickerMode: DatePickerMode.day,
        context: context,
        initialDate: DateTime(2022, 11, 11),
        firstDate: DateTime(1900, 1, 1),
        lastDate: DateTime.now());
    // if (picked != null && picked != selectedDate) {
    setState(() {
      selectedDate = picked;
      // datePic = picked;
    });
    // }
  }

//=======Select Date Function===========> End----->
  //ImagePicker Function================>Start============>
  final ImagePicker picker = ImagePicker();
  XFile? profilePic;
  _selectImage() async {
    profilePic = await picker.pickImage(source: ImageSource.gallery);
    setState(() {});
  }
  //ImagePicker Function================>End==============>

  //Dropdown value Decleart ===========================>
  String dropdownValue = districtOfBD.first;
}

//Dropdown List ===========================>
List<String> districtOfBD = <String>[
  'Dhaka',
  'Mymensingh',
  'Chittagong',
  'Rajshahi',
  'Rangpur',
  'Khulna',
  'Barisal',
  'Sylhet'
];
