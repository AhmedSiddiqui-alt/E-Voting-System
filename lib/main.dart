import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './screens/voterauthscreen.dart';
import './screens/voterdetailscreen.dart';
import './screens/otpFirebase.dart';
import './providers/voterprovider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider.value(value: VoterProvider()),
        ],
        child: MaterialApp(
          routes: {
            VoterAuthScreen.routeName: (ctx) => VoterAuthScreen(),
            VoterDetailScreen.routeName: (ctx) => VoterDetailScreen(),
            OtpFirebaseScreen.routeName: (ctx) => OtpFirebaseScreen()
          },
          home: VoterAuthScreen(),
        ));
  }
}
