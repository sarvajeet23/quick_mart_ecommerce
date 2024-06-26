import 'package:quick_mart_ecommerce/modules/profile/modules/change_password_old.dart';
import 'package:quick_mart_ecommerce/modules/profile/modules/faqs_card.dart';
import 'package:quick_mart_ecommerce/modules/profile/modules/order_history/ongoing.dart';
import 'package:quick_mart_ecommerce/modules/profile/modules/payment_card_method.dart';
import 'package:quick_mart_ecommerce/modules/profile/modules/privacy_card.dart';
import 'package:quick_mart_ecommerce/modules/profile/modules/shipping_card/shipping_card.dart';
import 'package:quick_mart_ecommerce/modules/profile/modules/terms_conditions_card.dart';

final List<Map<String, dynamic>> personalInformation = [
  {
    'title': 'Shipping Address',
    'icon': 'images/profile_icons/change_password.svg',
    'destination': ShippingCard(),
  },
  {
    'title': 'Payment Method',
    'icon': 'images/profile_icons/payment.svg',
    'destination': Payment_Method(),
  },
  {
    'title': 'Order History',
    'icon': 'images/profile_icons/order_history.svg',
    'destination': OnGoingCard(),
  },
];

final List<Map<String, dynamic>> supportInformation = [
  {
    'title': 'Privacy Policy',
    'icon': 'images/profile_icons/privacy.svg',
    'destination': PrivacyCard(),
  },
  {
    'title': 'Terms & Conditions',
    'icon': 'images/profile_icons/Term.svg',
    'destination': TermsConditionsCard(),
  },
  {
    'title': 'FAQs',
    'icon': 'images/profile_icons/FAQs.svg',
    'destination': FAQsCard(),
  },
];

final List<Map<String, dynamic>> accountManagement = [
  {
    'title': 'Change Password',
    'icon': 'images/profile_icons/change_password.svg',
    'destination': ChangePasswordCard(),
  },
];
