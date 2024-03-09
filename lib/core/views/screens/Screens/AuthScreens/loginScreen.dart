import 'package:biblophila2/core/viewmodels/authvm.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  GlobalKey<FormState> frm = new GlobalKey<FormState>();
  TextEditingController emailcontroler = TextEditingController();
  TextEditingController passwordcontoler = TextEditingController();
  authVM autvm = authVM();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          body: Center(
            child: SingleChildScrollView(
              child: Form(
                key: frm,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 170,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 100),
                      child: Text(
                        'تسجيل الدخول',
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'البريد الإلكتروني',
                        ),
                        controller: emailcontroler,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'كلمة المرور',
                        ),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: passwordcontoler,
                      ),
                    ),
                    TextButton(
                        onPressed: () {}, child: Text('نسيت كلمة المرور؟')),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: InkWell(
                        onTap: () async {
                          Map<String, dynamic> result = await autvm.login(
                              loginType: authTyps.emailandpassword,
                              email: emailcontroler.text,
                              password: passwordcontoler.text);
                          if (result["status"]) {
                            Navigator.pushReplacementNamed(context, "/home");
                          }
                        },
                        child: Container(
                          child: Center(
                              child: Text(
                            "تسجيل الدخول",
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
                          "لاتمتلك حساب بعد؟",
                          style: TextStyle(fontSize: 17),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/reg");
                          },
                          child: Text(
                            'إنشاء حساب',
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
              ),
            ),
          ),
        ),
      ),
    );
  }
}
