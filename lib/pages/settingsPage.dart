import 'package:bulkmailer/pages/homePage.dart';
import 'package:bulkmailer/widgets/customButton.dart';
import 'package:bulkmailer/widgets/textInputField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// class SettingPages extends StatelessWidget {
//
//   TextEditingController emailValue = TextEditingController();
//   TextEditingController passwordValue = TextEditingController();
//   String senderEmail='';
//   String senderPassword='';
//
//   Widget alertBox(){
//     return AlertDialog(
//       title: Text('Hey'),  // To display the title it is optional
//       content: Text('Please enter your credential carefully !'),   // Message which will be pop up on the screen
//       // Action widget which will provide the user to acknowledge the choice
//     );
//   }
//
//   @override
//
//
//
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromARGB(200, 41, 39, 39),
//       appBar: AppBar(
//         title: Text("Settings"),
//         centerTitle: true,
//         leading: IconButton(
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             icon: Icon(
//               Icons.arrow_back_rounded,
//               size: 22,
//             )),
//         backgroundColor: Color.fromARGB(150, 55, 79, 128),
//       ),
//       body: Center(
//           child: ListView(
//         children: [
//           Center(
//             child: Container(
//                 height: 150,
//                 child: Center(
//                   child: Text(
//                     "Login to your account",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                 )),
//           ),
//           Container(
//             child: TextInputField(
//               validatorText: "Enter your Email",
//               controller: emailValue,
//               disabledBorderColor: Colors.green,
//               disabledBorderWidth: 1,
//               enabledBorderColor: Colors.grey,
//               enabledBorderWidth: 0.5,
//               focusedBorderColor: Colors.white,
//               focusedBorderWidth: 1.5,
//               labelText: "Email",
//               labelTextColor: Colors.grey,
//               labelTextSize: 18,
//               keyBoardType: TextInputType.emailAddress,
//             ),
//           ),
//           SizedBox(
//             height: 30,
//           ),
//           Container(
//             child: TextInputField(
//               validatorText: "Enter your password",
//               controller: passwordValue,
//               disabledBorderColor: Colors.green,
//               disabledBorderWidth: 1,
//               enabledBorderColor: Colors.grey,
//               enabledBorderWidth: 0.5,
//               focusedBorderColor: Colors.white,
//               focusedBorderWidth: 1.5,
//               labelText: "Password",
//               labelTextColor: Colors.grey,
//               labelTextSize: 18,
//               keyBoardType: TextInputType.visiblePassword,
//             ),
//           ),
//
//           SizedBox(height: 20,),
//
//           Container(
//             child: CustomButton(
//               onPressed: (){
//                 print(emailValue.text);
//                 print(passwordValue.text);
//                 senderEmail=emailValue.text ;
//                 senderPassword=passwordValue.text;
//                 if(senderEmail.isNotEmpty && senderPassword.isNotEmpty){
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => HomePage()),
//                   );
//                 }else{
//                   alertBox();
//                 }
//
//               },
//               buttonColor: Colors.blue,
//               buttonTextColor: Colors.white,
//               buttonText: "Login",
//               fontSize: 20,
//               padding: EdgeInsets.all(0),
//             ),
//
//           )
//         ],
//       )),
//     );
//   }
// }

class SettingPages extends StatefulWidget {
  const SettingPages({Key? key}) : super(key: key);

  @override
  _SettingPagesState createState() => _SettingPagesState();
}

class _SettingPagesState extends State<SettingPages> {

  TextEditingController emailValue = TextEditingController();
  TextEditingController passwordValue = TextEditingController();
  String senderEmail='';
  String senderPassword='';

  Widget alertBox(){
    return AlertDialog(
      title: Text('Hey'),  // To display the title it is optional
      content: Text('Please enter your credential carefully !'),   // Message which will be pop up on the screen
      // Action widget which will provide the user to acknowledge the choice
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(200, 41, 39, 39),
      appBar: AppBar(
        title: Text("Settings"),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_rounded,
              size: 22,
            )),
        backgroundColor: Color.fromARGB(150, 55, 79, 128),
      ),
      body: Center(
          child: ListView(
            children: [
              Center(
                child: Container(
                    height: 150,
                    child: Center(
                      child: Text(
                        "Login to your account",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )),
              ),
              Container(
                child: TextInputField(
                  validatorText: "Enter your Email",
                  controller: emailValue,
                  disabledBorderColor: Colors.green,
                  disabledBorderWidth: 1,
                  enabledBorderColor: Colors.grey,
                  enabledBorderWidth: 0.5,
                  focusedBorderColor: Colors.white,
                  focusedBorderWidth: 1.5,
                  labelText: "Email",
                  labelTextColor: Colors.grey,
                  labelTextSize: 18,
                  keyBoardType: TextInputType.emailAddress,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: TextInputField(
                  validatorText: "Enter your password",
                  controller: passwordValue,
                  disabledBorderColor: Colors.green,
                  disabledBorderWidth: 1,
                  enabledBorderColor: Colors.grey,
                  enabledBorderWidth: 0.5,
                  focusedBorderColor: Colors.white,
                  focusedBorderWidth: 1.5,
                  labelText: "Password",
                  labelTextColor: Colors.grey,
                  labelTextSize: 18,
                  keyBoardType: TextInputType.visiblePassword,
                ),
              ),

              SizedBox(height: 20,),

              Container(
                child: CustomButton(
                  onPressed: (){
                    print(emailValue.text);
                    print(passwordValue.text);
                    senderEmail=emailValue.text ;
                    senderPassword=passwordValue.text;
                    if(senderEmail.isNotEmpty && senderPassword.isNotEmpty){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomePage()),
                      );
                    }

                  },
                  buttonColor: Colors.blue,
                  buttonTextColor: Colors.white,
                  buttonText: "Login",
                  fontSize: 20,
                  padding: EdgeInsets.all(0),
                ),

              )
            ],
          )),
    );
  }
}
