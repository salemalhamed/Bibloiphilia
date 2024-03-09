import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

enum authTyps {
  facebook,
  google,
  emailandpassword
} // هي مو داتا تايب زي الثوابت لما اجي اقول للفريق اقولهم اعتمدوا الاينوم

FirebaseAuth fbauth = FirebaseAuth.instance;

class authVM {
  Future<Map<String, dynamic>> login(
      {required loginType, String? email, String? password}) async {
    switch (loginType) {
      case authTyps.google:
        {
          return _loginWithGoogle(); //نسوي لهم انكبسليشن عشان الكلين كود
          break;
        }
      case authTyps.facebook:
        {
          return _loginWithFacbook();
          break;
        }
      default:
        return _loginWithEmailanPassword(email, password);
    }
  }

  _loginWithFacbook() {}

  _loginWithEmailanPassword(String? email, String? password) {
    fbauth.signInWithEmailAndPassword(email: email!, password: password!);
    return {
      "status": true,
      "message": "logged succesful",
    };
  }

  logout() {}
  Future<bool> register({
    required String email,
    required String password,
    required String name,
  }) async {
    fbauth
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((value) {
      value.user!.updateDisplayName(name);
      print("the user rigesred id ${value.user!.uid}");
    });
    return await true;
  }

  Future<Map<String, dynamic>> _loginWithGoogle() async {
    GoogleSignInAccount? googleuser = await GoogleSignIn().signIn();
    GoogleSignInAuthentication googleauth = await googleuser!.authentication;
    OAuthCredential googleCtedntal = GoogleAuthProvider.credential(
      idToken: googleauth.idToken,
      accessToken: googleauth.accessToken,
    );
    UserCredential serCredential =
        await FirebaseAuth.instance.signInWithCredential(googleCtedntal);

    return {
      "status": true,
      "message": "logged succesful",
    };
  }

  bool chackAuth() {
    if (fbauth.currentUser != null) return true;
    return false;
  }
}
