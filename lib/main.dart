import 'package:flutter/material.dart';
import 'package:nikkah_plus3/screens/swipe_right.dart';
import '/screens/splash_screen.dart';
import '/screens/get_started.dart';
import '/screens/welcome_screen.dart';
import '/screens/sign_in.dart';
import '/screens/sign_up.dart';
import '/screens/signacc_in.dart';
import '/screens/signupnew_screen.dart';
import '/screens/signinnew_screen.dart';
import '/screens/welcomeApp_screen.dart';
import '/screens/profilesetup_screen.dart';
import '/screens/userdetails_screen.dart';
import '/screens/userdetailsfilled_screen.dart';
import '/screens/birthdate_screen.dart';
import '/screens/uploadphotos_screens.dart';
import '/screens/religiousbackground_screen.dart';
import '/screens/educationcareer_screen.dart';
import '/screens/marriagefamily_screen.dart';
import '/screens/interestspersonality_screen.dart';
import '/screens/voicevideointropage_screen.dart';
import '/screens/videointro_screen.dart';
import '/screens/biopage_screen.dart';
import '/screens/biowithtextpage_screen.dart';
import '/screens/interestpersonalitypage_screen.dart';
import '/screens/nika7home_screen.dart';
import '/screens/membership_screen.dart';
import '/screens/discovermatch_screen.dart';
import '/screens/quick_view.dart';
import '/screens/swipe_right.dart';
import '/screens/match_screen.dart';

void main() {
  runApp(const NikkahPlus3App());
}

class NikkahPlus3App extends StatelessWidget {
  const NikkahPlus3App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nikkah Plus3',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins', primarySwatch: Colors.brown),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/get_started': (context) => const GetStarted(),
        '/welcome_screen': (context) => const WelcomeScreen(),
        '/sign_in': (context) => const SignInScreen(),
        '/sign_up': (context) => const SignUpScreen(),
        '/signacc_in': (context) => const SignaccInScreen(),
        '/signupnew_screen': (context) => const SignUpNewScreen(),
        '/signinnew_screen': (context) => const SignInNewScreen(),
        '/welcomeApp_screen': (context) => const WelcomeAppScreen(),
        '/profilesetup_screen': (context) => const ProfileSetupScreen(),
        '/userdetails_screens': (context) => const UserDetailsScreen(),
        '/userdetailsfilled_screen': (context) =>
            const UserDetailsFilledScreen(),
        '/birthdate_screen': (context) => BirthdateScreen(),
        '/uploadphotos_screens': (context) => const UploadPhotosScreen(),
        '/religiousbackground_screen': (context) => ReligiousBackgroundScreen(),
        '/educationcareer_screen': (context) => EducationCareerScreen(),
        '/marriagefamily_screen': (contect) => MarriageFamilyScreen(),
        '/interestpersonality_screen': (context) =>
            InterestsPersonalityScreen(),
        '/voicevideointropage_screen': (context) => VoiceVideoIntroPage(),
        '/videointro_screen': (context) => VideoIntroPage(),
        '/biopage_screen': (context) => BioPage(),
        '/biowithtextpage_screen': (context) => BioWithTextPage(),
        '/interestpersonalitypage_screen': (context) =>
            InterestsPersonalityPage(),
        '/home_screen': (context) => Nika7HomeScreen(),
        '/membership_screen': (context) => MembershipScreen(),
        '/discovermatch_screen': (context) => DiscoverMatchApp(),
        '/quick_view': (context) => QuickViewScreen(),
        '/swipe_right': (context) => SwipeRightScreen(),
        '/match_screen': (context) => const MatchScreen(),
      },
    );
  }
}
