import 'package:flutter/material.dart';
import 'package:gold/screens/changepassword.dart';
import 'package:gold/screens/checkout.dart';
import 'package:gold/screens/completeprofile.dart';
import 'package:gold/screens/conversions.dart';
import 'package:gold/screens/editprofile.dart';
import 'package:gold/screens/forgotpassword.dart';
import 'package:gold/screens/gold.dart';
import 'package:gold/screens/homepage.dart';
import 'package:gold/screens/login.dart';
import 'package:gold/screens/mycards.dart';
import 'package:gold/screens/myprofile.dart';
import 'package:gold/screens/notificationsetting.dart';
import 'package:gold/screens/onboarding.dart';
import 'package:gold/screens/paymentcomplete.dart';
import 'package:gold/screens/paymentdetails.dart';
import 'package:gold/screens/privacy.dart';
import 'package:gold/screens/requestfunds.dart';
import 'package:gold/screens/transactions.dart';
import 'package:gold/screens/transfer.dart';
import 'package:gold/screens/transfercomplete.dart';
import 'package:gold/screens/tutorial.dart';
import 'package:gold/screens/vault.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case ('/onboarding'):
      return MaterialPageRoute(
          settings: settings, builder: (context) => const Onboarding());
    case ('/login'):
      return MaterialPageRoute(
          settings: settings, builder: (context) => const LoginPage());
    case ('/forgot'):
      return MaterialPageRoute(
          settings: settings, builder: (context) => const ForgotPassword());
    case ('/complete-profile'):
      return MaterialPageRoute(
          settings: settings, builder: (context) => const CompleteProfile());
    case ('/my-profile'):
      return MaterialPageRoute(
          settings: settings, builder: (context) => const MyProfile());
    case ('/change-password'):
      return MaterialPageRoute(
          settings: settings, builder: (context) => const ChangePassword());
    case ('/home'):
      return MaterialPageRoute(
          settings: settings, builder: (context) => const HomePage());
    case ('/edit-profile'):
      return MaterialPageRoute(
          settings: settings, builder: (context) => const EditProfile());
    case ('/notification-settings'):
      return MaterialPageRoute(
          settings: settings,
          builder: (context) => const NotificationSetting());
    case ('/tutorial'):
      return MaterialPageRoute(
          settings: settings, builder: (context) => const Tutorial());
    case ('/my-card'):
      return MaterialPageRoute(
          settings: settings, builder: (context) => const MyCard());
    case ('/transfer-funds'):
      return MaterialPageRoute(
          settings: settings, builder: (context) => const TransferFunds());
    case ('/request-funds'):
      return MaterialPageRoute(
          settings: settings, builder: (context) => const RequestFunds());
    case ('/payment-details'):
      return MaterialPageRoute(
          settings: settings, builder: (context) => const PaymentDetails());
    case ('/payment-complete'):
      return MaterialPageRoute(
          settings: settings, builder: (context) => const PaymentComplete());
    case ('/vault'):
      return MaterialPageRoute(
          settings: settings, builder: (context) => const Vault());
    case ('/gold'):
      return MaterialPageRoute(
          settings: settings, builder: (context) => const Gold());
    case ('/checkout'):
      return MaterialPageRoute(
          settings: settings, builder: (context) => const Checkout());
    case ('/conversions'):
      return MaterialPageRoute(
          settings: settings, builder: (context) => Conversions());
    case ('/transactions'):
      return MaterialPageRoute(
          settings: settings, builder: (context) => Transactions());
    case ('/transfer-complete'):
      return MaterialPageRoute(
          settings: settings, builder: (context) => const TransferComplete());
    case ('/privacy'):
      return MaterialPageRoute(
          settings: settings, builder: (context) => const Privacy());
    case ('/home'):
      return MaterialPageRoute(
          settings: settings, builder: (context) => const HomePage());
    default:
      return MaterialPageRoute(
          settings: settings, builder: (context) => const Onboarding());
  }
}
