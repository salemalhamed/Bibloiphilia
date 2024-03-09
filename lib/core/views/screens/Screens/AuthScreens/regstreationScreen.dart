import 'package:biblophila2/core/viewmodels/authvm.dart';
import 'package:biblophila2/core/views/screens/Screens/AuthScreens/loginScreen.dart';
import 'package:biblophila2/core/views/screens/Screens/UserScreen.dart/contryfilter.dart';
import 'package:flutter/material.dart';

class RegstrationScreen extends StatelessWidget {
  GlobalKey<FormState> frm = new GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmpasswordController = TextEditingController();
  authVM avm = authVM();

  checkusername() {
    var chekdata = frm.currentState;
    if (chekdata!.validate()) {
      return "valid";
    } else {
      return "not valid";
    }
  }

  _showBottomSheet4(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return FilterConteyScreen();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                    colors: [
                  Color.fromARGB(255, 255, 255, 255).withOpacity(0.8),
                  Color.fromARGB(255, 255, 255, 255).withOpacity(0.8),
                ])),
            child: Form(
                key: frm,
                child: ListView(
                  children: [
                    SizedBox(
                      height: 70,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "إنشاء حساب جديد",
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              labelText: 'الأسم',
                            ),
                            controller: _nameController,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              labelText: 'البريد الإلكتروني',
                            ),
                            controller: _emailController,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: TextFormField(
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              labelText: 'كلمة المرور',
                            ),
                            controller: _passwordController,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: TextFormField(
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              labelText: 'تأكيد كلمة المرور',
                            ),
                            controller: _confirmpasswordController,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: () {
                            _showBottomSheet4(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: Row(
                              children: [
                                Text(
                                  'تحديد المنطقة',
                                ),
                                Icon(Icons.arrow_drop_down)
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 47,
                            ),
                            Icon(
                              Icons.check_box,
                              color: const Color.fromARGB(255, 105, 105, 105),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "الموافقة على",
                                  style: TextStyle(fontSize: 17),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'الشروط والأحكام',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF9327D5)),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: () async {
                            bool result = await avm.register(
                                email: _emailController.text,
                                password: _passwordController.text,
                                name: _nameController.text);
                            if (result)
                              Navigator.pushReplacementNamed(
                                  context, "/proudct");
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child: Container(
                              child: Center(
                                  child: Text(
                                "انشئ الحساب",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                              )),
                              height: 50,
                              width: 350,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Color(0xFF9327D5)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "تمتلك حساب؟",
                              style: TextStyle(fontSize: 17),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, "/log");
                              },
                              child: Text(
                                'تسجيل الدخول',
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF9327D5)),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(
                                height: 2,
                                width: 120,
                                color: Color.fromARGB(95, 0, 0, 0),
                              ),
                            ),
                            Text(
                              "أو",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800,
                                  color: const Color.fromARGB(255, 0, 0, 0)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Container(
                                height: 2,
                                width: 120,
                                color: Color.fromARGB(95, 0, 0, 0),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              clipBehavior: Clip.hardEdge,
                              height: 50,
                              width: 50,
                              child: Image.asset("assets/images/2.png"),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  gradient: LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      colors: [
                                        Color(0xFF5295EE).withOpacity(0.4),
                                        Color(0xFF2AD1D8).withOpacity(0.4),
                                      ])),
                            ),
                            Container(
                              clipBehavior: Clip.hardEdge,
                              height: 50,
                              width: 50,
                              child: Image.asset("assets/images/3.png"),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  gradient: LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      colors: [
                                        Color(0xFFFF4452).withOpacity(0.1),
                                        Color(0xFFFF4452).withOpacity(0.1),
                                      ])),
                            ),
                            Container(
                              clipBehavior: Clip.hardEdge,
                              height: 50,
                              width: 50,
                              child: Image.asset("assets/images/4.png"),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  gradient: LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      colors: [
                                        Color(0xFF1B63C8).withOpacity(0.1),
                                        Color(0xFF1855B2).withOpacity(0.1),
                                      ])),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                )),
          ),
        ));
  }
}
