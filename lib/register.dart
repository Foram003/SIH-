import 'package:flutter/material.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);

  @override
  _MyRegisterState createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  String dropdownValue = 'Option 1'; // Initial dropdown value

  double fieldWidth = 300.0; // Set the width of text fields and dropdown
  double fieldHeight = 60.0; // Set the height of text fields and dropdown

  OutlineInputBorder inputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(color: Colors.black),
  );

  TextStyle fieldTextStyle = TextStyle(
    color: Colors.black, // Customize text color
    fontSize: 16, // Customize text size
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/register.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 5, top: 30),
              child: Text(
                'Create New Account..',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.22,
                  right: 35,
                  left: 35,
                ),
                child: Column(
                  children: [
                    Container(
                      width: fieldWidth,
                      height: fieldHeight, // Set the height
                      child: TextField(
                        decoration: InputDecoration(
                          focusedBorder: inputBorder,
                          enabledBorder: inputBorder,
                          hintStyle: fieldTextStyle,
                          hintText: 'Full Name',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: fieldWidth,
                      height: fieldHeight, // Set the height
                      child: TextField(
                        decoration: InputDecoration(
                          focusedBorder: inputBorder,
                          enabledBorder: inputBorder,
                          hintStyle: fieldTextStyle,
                          hintText: 'Email',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: fieldWidth,
                      height: fieldHeight, // Set the height
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black),
                      ),
                      child: DropdownButton<String>(
                        isDense: true,
                        value: dropdownValue,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        iconSize: 24,
                        elevation: 16,
                        style: fieldTextStyle,
                        underline: Container(
                          height: 0,
                          color: Colors.transparent,
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        },
                        items: <String>['Option 1', 'Option 2', 'Option 3', 'Option 4']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                value,
                                style: fieldTextStyle,
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: fieldWidth,
                      height: fieldHeight, // Set the height
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          focusedBorder: inputBorder,
                          enabledBorder: inputBorder,
                          hintText: 'Password',
                          hintStyle: fieldTextStyle,
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Register',
                          style: TextStyle(
                            color: Color(0xff4c505b),
                            fontSize: 27,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xff4c505b),
                          child: IconButton(
                            color: Colors.white,
                            onPressed: () {},
                            icon: Icon(Icons.arrow_forward),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'New User?',
                          style: TextStyle(
                            color: Color(0xff4c505b),
                            fontSize: 18,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'login');
                          },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 18,
                              color: Color(0xff4c505b),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
