import 'package:bulkmailer/pages/settingsPage.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override

  Widget iconButton({       //for settings button with icon
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


  //for button with and without
  withOrWithoutButton({buttonColor, buttonTextColor, buttonText}) {
    return Container(
      width: 250,
      height: 80,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          buttonText,
          style: TextStyle(
            color: buttonTextColor,
            fontSize: 30,
          ),
        ),
      ),
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
              withOrWithoutButton(
                buttonTextColor: Colors.white,
                buttonText: "WITH",
                buttonColor: Color.fromARGB(1, 168, 225, 255),
              ),
              withOrWithoutButton(
                buttonTextColor: Colors.white,
                buttonText: "WITHOUT",
                buttonColor: Color.fromARGB(1, 168, 225, 255),
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
                          MaterialPageRoute(builder: (context) => SettingPages()),
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
