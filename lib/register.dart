import 'package:flutter/material.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);

  @override
  _MyRegisterState createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  String dropdownValue = 'All Ministry'; // Initial dropdown value

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
                      height: fieldHeight,
                      child: TextField(
                        decoration: InputDecoration(
                          focusedBorder: inputBorder,
                          enabledBorder: inputBorder,
                          hintStyle: fieldTextStyle,
                          hintText: 'Full Name',
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      width: fieldWidth,
                      height: fieldHeight,
                      child: TextField(
                        decoration: InputDecoration(
                          focusedBorder: inputBorder,
                          enabledBorder: inputBorder,
                          hintStyle: fieldTextStyle,
                          hintText: 'Email',
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      width: fieldWidth,
                      height: fieldHeight,
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
                        items: <String>[
                          'All Ministry',
                          "President's Secretariat",
                          "Vice President's Secretariat",
                          "Prime Minister's Office",
                          'Cabinet',
                          'Cabinet Committee Decisions',
                          'Cabinet Committee on Economic Affairs (CCEA)',
                          'Cabinet Secretariat',
                          'Cabinet Committee on Infrastructure',
                          'Cabinet Committee on Price',
                          'Cabinet Committee on Investment',
                          'AYUSH',
                          'Other Cabinet Committees',
                          'Department of Space',
                          'Department of Ocean Development',
                          'Department of Atomic Energy',
                          'Election Commission',
                          'Finance Commission',
                          'Ministry of Agriculture & Farmers Welfare',
                          'Ministry of Agro & Rural Industries',
                          'Ministry of Chemicals and Fertilizers',
                          'Ministry of Civil Aviation',
                          'Ministry of Coal',
                          'Ministry of Commerce & Industry',
                          'Ministry of Communications',
                          'Ministry of Company Affairs',
                          'Ministry of Consumer Affairs, Food & Public Distribution',
                          'Ministry of Cooperation',
                          'Ministry of Corporate Affairs',
                          'Ministry of Culture',
                          'Ministry of Defence',
                          'Ministry of Development of North-East Region',
                          'Ministry of Disinvestment',
                          'Ministry of Drinking Water & Sanitation',
                          'Ministry of Earth Sciences',
                          'Ministry of Education',
                          'Ministry of Electronics & IT',
                          'Ministry of Environment, Forest and Climate Change',
                          'Ministry of External Affairs',
                          'Ministry of Finance',
                          'Ministry of Fisheries, Animal Husbandry & Dairying',
                          'Ministry of Food Processing Industries',
                          'Ministry of Health and Family Welfare',
                          'Ministry of Heavy Industries',
                          'Ministry of Home Affairs',
                          'Ministry of Housing & Urban Affairs',
                          'Ministry of Information & Broadcasting',
                          'Ministry of Jal Shakti',
                          'Ministry of Labour & Employment',
                          'Ministry of Law and Justice',
                          'Ministry of Micro, Small & Medium Enterprises',
                          'Ministry of Mines',
                          'Ministry of Minority Affairs',
                          'Ministry of New and Renewable Energy',
                          'Ministry of Overseas Indian Affairs',
                          'Ministry of Panchayati Raj',
                          'Ministry of Parliamentary Affairs',
                          'Ministry of Personnel, Public Grievances & Pensions',
                          'Ministry of Petroleum & Natural Gas',
                          'Ministry of Planning',
                          'Ministry of Power',
                          'Ministry of Railways',
                          'Ministry of Road Transport & Highways',
                          'Ministry of Rural Development',
                          'Ministry of Science & Technology',
                          'Ministry of Ports, Shipping and Waterways',
                          'Ministry of Skill Development and Entrepreneurship',
                          'Ministry of Social Justice & Empowerment',
                          'Ministry of Statistics & Programme Implementation',
                          'Ministry of Steel',
                          'Ministry of Surface Transport',
                          'Ministry of Textiles',
                          'Ministry of Tourism',
                          'Ministry of Tribal Affairs',
                          'Ministry of Urban Development',
                          'Ministry of Water Resources, River Development and Ganga Rejuvenation',
                          'Ministry of Women and Child Development',
                          'Ministry of Youth Affairs and Sports',
                          'NITI Aayog',
                          'PM Speech',
                          'EAC-PM',
                          'UPSC',
                          'Special Service and Features',
                          'PIB Headquarters',
                          'Office of Principal Scientific Advisor to GoI',
                          'National Financial Reporting Authority',
                          'Competition Commission of India',
                          'IFSC Authority',
                          'National Security Council Secretariat',
                        ]
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
                    SizedBox(height: 30),
                    Container(
                      width: fieldWidth,
                      height: fieldHeight,
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
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
