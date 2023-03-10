// import 'dart:io';

import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jiffy/jiffy.dart';
// import 'package:jiffy/jiffy.dart';
import 'package:shop_bd/utls/const.dart';
import 'package:shop_bd/utls/widgets.dart';
// import 'package:shop_bd/utls/widgets.dart';
import 'package:shop_bd/utls/widgets/custom_text_field.dart';
// import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class InputForm extends StatefulWidget {
  const InputForm({super.key});

  @override
  State<InputForm> createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {
  @override
  Widget build(BuildContext context) {
    final fNameController = TextEditingController();
    final phoneController = TextEditingController();
    print(gender);
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Input form'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              // addRepaintBoundaries: true,
              // addAutomaticKeepAlives: true,
              // addSemanticIndexes: true,
              // shrinkWrap: true,
              // itemExtent: double.maxFinite,
              children: [
                /*  ElevatedButton(
                    onPressed: () {
                      //Image Picker Function Implement =================>
                      selectImage();
                      /* if (result != null) {
                        File file = File(result!.files.single.path.toString());
                      } else {
                        // User canceled the picker
                      }*/

                      // if (result != null) {
                      //   File file = File(result.files.single.path);
                      // } else {
                      //   // User canceled the picker
                      // }
                    },
                    child: Text('Sellect Image')), */
                SubtitleText12(Jiffy(DateTime.now()).format("d MMM h:mm a")),
                SizedBox(height: 16),
                GestureDetector(
                  onTap: () {
                    selectImage();
                  },
                  child: CircleAvatar(
                    minRadius: 60,
                    backgroundColor: kMainColor,
                    child: result == null
                        ? Icon(
                            Icons.person,
                            size: 100,
                          )
                        : Container(
                            height: 115,
                            width: 115,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: FileImage(
                                      File(result!.paths[0].toString())),
                                  fit: BoxFit.cover),
                              shape: BoxShape.circle,
                              color: kHoverColor,
                            ),
                          ),
                  ),
                ),

                SizedBox(height: 16),
                IconButton(
                    onPressed: () {
                      _selectTime();
                    },
                    icon: Icon(Icons.watch_later_outlined)),
                Text(_time == null
                    ? TimeOfDay.now().format(context)
                    : _time!.format(context)),
                SizedBox(height: 16),
                CTF(
                    controller: fNameController,
                    hint: 'Enter your Name',
                    icon: Icons.person),
                SizedBox(height: 16),
                CTF(
                    controller: phoneController,
                    hint: 'Enter your phone no',
                    icon: Icons.phone),
                SizedBox(height: 16),
                Row(
                  crossAxisAlignment: selectedDate != null
                      ? CrossAxisAlignment.center
                      : CrossAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () => _selectDate(context),
                      child: Text('Select Date of birth'),
                    ),
                    SizedBox(width: 16),
                    selectedDate == null
                        ? Expanded(
                            child: Container(
                              height: 1,
                              // width: double.infinity,
                              color: kBlack,
                            ),
                          )
                        : SubtitleText14(
                            Jiffy(selectedDate).format("do MMM yyyy"),
                            clr: kBlack,
                          ),
                  ],
                ),
                SizedBox(height: 16),
                Container(
                  // color: kMainColor,
                  // padding: EdgeInsets.only(left: 30),
                  alignment: Alignment.centerLeft,
                  child: SubtitleText14(
                    'Select Gender',
                    clr: Colors.black54,
                  ),
                ),
                SizedBox(height: 16),

                RadioListTile(
                  // subtitle: Text('GOUTOM'),
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
                  groupValue: gender,
                  // ========> Group Value is alaws Same of every Radiobutton  <=========
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
                /*  ElevatedButton(
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
                ), */

                /* SingleChildScrollView(
                  //DropdownButtonFormField code her ..........========================>
                  child: DropdownButtonFormField(
                    items: districtOfBD
                        .map<DropdownMenuItem<String>>((String value) {
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
                ), */
                //DropdownButtonFormField code End her ..........========================>

                //DropDOwn Menu Code here=========================================>
                Row(
                  children: [
                    SubtitleText14(
                      'Select District',
                      clr: Colors.black54,
                    ),
                    SizedBox(width: 16),
                    DropdownButton<String>(
                      // underline: Divider(),
                      // hint: Text('data'),
                      value: dropdownValue,
                      icon: const Icon(Icons.arrow_drop_down),
                      elevation: 16,
                      iconEnabledColor: kMainColor,
                      style: const TextStyle(color: Colors.black),
                      // underline: Container(height: 1, color: kMainColor),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          dropdownValue = value!;
                          print(dropdownValue);
                        });
                      },
                      items: districtOfBD
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ],
                ),
                // SizedBox(height: 100),
                //DropDOwn Menu Code End here=========================================>
                SizedBox(height: 16),
                Container(
                    child: ElevatedButton(
                        onPressed: () {}, child: Text('Submite here')))
              ],
            ),
          ),
        ));
  }

  TimeOfDay? _time;

  void _selectTime() async {
    final TimeOfDay? newTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay(hour: 7, minute: 15),
    );
    if (newTime != null) {
      setState(() {
        _time = newTime;
      });
    }
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

  FilePickerResult? result;

  selectImage() async {
    result = await FilePicker.platform.pickFiles();
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
