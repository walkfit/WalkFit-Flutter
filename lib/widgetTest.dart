// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:google_sign_in_platform_interface/google_sign_in_platform_interface.dart';

// Future<void> googleLogin() async {
//     var googleLoginHelper = new GoogleLoginHelper();

//     googleLoginHelper.login()
//     .then((accessToken) {
//       log('accessToken: $accessToken');

//       if (accessToken == null) {
//         print('로그인/회원가입에 실패했습니다.');
//         return;
//       }

//       autoLogin(accessToken)
//           .then((value) => afterLogin(value))
//           .then((value) => googleLoginHelper.logout(accessToken));
//     });
//   }

// Future<AuthModel> autoLogin(String token) {
//     return repo.login(code: token);
// }

// class GoogleLoginHelper {
//   final GoogleSignIn googleSignIn = GoogleSignIn();

//   Future<String?> login() async {
//     try {
//       final GoogleSignInAccount? googleSignInAccount = await googleSignIn
//           .signIn();

//       final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount!
//           .authentication;

//       print(googleSignInAuthentication.accessToken);

//       return googleSignInAuthentication.accessToken;
//     } catch (error) {
//       print(error);
//     }
//   }

//   Future<void> logout(String? accessToken) async {
//     await revokeToken(accessToken!);

//     await googleSignIn.signOut();
//     print('User signed out');
//   }

//   Future<void> revokeToken(String token) async {
//     final response = await http.post(
//       Uri.parse('https://oauth2.googleapis.com/revoke'),
//       headers: {'Content-Type': 'application/x-www-form-urlencoded'},
//       body: 'token=$token',
//     );

//     if (response.statusCode == 200) {
//       print('Token revoked successfully');
//     } else {
//       print('Failed to revoke token');
//     }
//   }
// }
