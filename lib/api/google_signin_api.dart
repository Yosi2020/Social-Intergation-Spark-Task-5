import 'package:google_sign_in/google_sign_in.dart';


class GoogleSignInApi {
  static final _googleSignIN = GoogleSignIn();

  static Future<GoogleSignInAccount> login() => _googleSignIN.signIn();

  static Future logout() => _googleSignIN.disconnect();
}
