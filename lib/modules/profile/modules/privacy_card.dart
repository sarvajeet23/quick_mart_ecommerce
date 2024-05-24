import 'package:flutter/material.dart';

class PrivacyCard extends StatelessWidget {
  const PrivacyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Privacy Policy"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Text(
              '''At QuickMart, we are committed to protecting the privacy and security of our users' personal information. This Privacy Policy outlines how we collect, use, disclose, and safeguard the information obtained through our e-commerce app. By using QuickMart, you consent to the practices described in this policy.
      
      1. Information Collection:
      - Personal Information: We may collect personal information such as name, address, email, and phone number when you create an account, make a purchase, or interact with our services.
      - Transaction Details: We collect information related to your purchases, including order history, payment method, and shipping details.
      - Usage Data: We may collect data on how you interact with our app, such as browsing activity, search queries, and preferences.
      
      2. Information Use:
      - Provide Services: We use the collected information to process orders, deliver products, and provide customer support.
      - Personalization: We may use your information to personalize your shopping experience, recommend products, and display targeted advertisements.
      - Communication: We may use your contact information to send important updates, promotional offers, and newsletters. You can opt-out of these communications at any time.
      
      3. Information Sharing:
      - Third-Party Service Providers: We may share your information with trusted third-party service providers who assist us in operating our app, fulfilling orders, and improving our services.
      - Legal Compliance: We may disclose personal information if required by law or in response to a valid legal request from authorities.
      
      4. Data Security:
      - We implement appropriate security measures to protect your information from unauthorized access, alteration, disclosure, or destruction.
      - However, please note that no data transmission over the internet or electronic storage is 100% secure. We cannot guarantee absolute security of your information.
      
      5. User Rights:
      - Access and Update: You have the right to access, correct, or update your personal information stored in our app.
      - Data Retention: We retain your personal information as long as necessary to provide our services and comply with legal obligations.
      
      6. Children's Privacy:
      - QuickMart is not intended for children under the age of 13. We do not knowingly collect or solicit personal information from children.
      
      7. Updates to the Privacy Policy:
      - We reserve the right to update this Privacy Policy from time to time. Any changes will be posted on our app, and the revised policy will be effective upon posting.
      
      If you have any questions or concerns about our Privacy Policy, please contact our customer support. By using QuickMart, you acknowledge that you have read and understood this Privacy Policy and agree to its terms and conditions.''',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
