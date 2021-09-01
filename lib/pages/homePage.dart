import 'package:bulkmailer/pages/settingsPage.dart';
import 'package:bulkmailer/widgets/customButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget iconButton({
    //for settings button with icon
    required void Function() buttonAction,
    required IconData buttonIcon,
    required Color buttonColor,
    required Color buttonIconColor,
    required Color buttonTextColor,
    required String buttonText,
  }) {
    return ElevatedButton.icon(
      icon: Icon(
        buttonIcon,
        color: buttonIconColor,
      ),
      label: Text(
        buttonText,
        style: TextStyle(
          color: buttonTextColor,
        ),
      ),
      onPressed: buttonAction,
    );
  }

  //----------------------------------------------------------

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(200, 41, 39, 39),
      appBar: AppBar(
        title: Text("mailer"),
        centerTitle: true,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        backgroundColor: Color.fromARGB(150, 55, 79, 128),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                ),
                child: Text(
                  "Attachments",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              CustomButton(
                onPressed: (){},
                buttonColor: Colors.blue,
                buttonText: "WITH",
                buttonTextColor: Colors.white,
                fontSize: 30,
                padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
              ),
              CustomButton(
                onPressed: (){},
                buttonColor: Colors.blue,
                buttonTextColor: Colors.white,
                buttonText: "WITHOUT",
                fontSize: 30,
                padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
              ),
              SizedBox(
                width: 50,
              ),
              Container(
                  alignment: Alignment.bottomCenter,
                  child: iconButton(
                      buttonAction: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SettingPages()),
                        );
                      },
                      buttonIcon: Icons.settings,
                      buttonColor: Colors.green,
                      buttonIconColor: Colors.white,
                      buttonTextColor: Colors.white,
                      buttonText: "Settings")),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
