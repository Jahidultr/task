import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task/ui/screens/forgot_password_otp_screen.dart';
import 'package:task/ui/utils/app_colors.dart';
import 'package:task/ui/widgets/screen_background.dart';

class ForgotPasswordEmailScreen extends StatefulWidget {
  const ForgotPasswordEmailScreen({super.key});

  @override
  State<ForgotPasswordEmailScreen> createState() =>
      _ForgotPasswordEmailScreenState();
}

class _ForgotPasswordEmailScreenState extends State<ForgotPasswordEmailScreen> {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ScreenBackground(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 82),
                Text(
                  'Your Email Address',
                  style: textTheme.displaySmall
                      ?.copyWith(fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 8),
                Text(
                  'A 6 digit verification pin will be sent to your email address',
                  style: textTheme.titleSmall?.copyWith(
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 24),
                _buildVerifyEmailForm(),
                const SizedBox(height: 48),
                Center(
                  child: _buildHaveAccountSection(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildVerifyEmailForm() {
    return Column(
      children: [
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
            hintText: 'Email',
          ),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: _onTabNextButton,
          child: const Icon(Icons.arrow_circle_right_outlined),
        ),
      ],
    );
  }

  Widget _buildHaveAccountSection() {
    return RichText(
      text: TextSpan(
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontSize: 14,
          letterSpacing: 0.5,
        ),
        text: "Have a account?  ",
        children: [
          TextSpan(
            text: 'Sign In',
            style: const TextStyle(color: AppColors.themeColor),
            recognizer: TapGestureRecognizer()..onTap = _onTabSignIn,
          ),
        ],
      ),
    );
  }

  void _onTabNextButton() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ForgotPasswordOtpScreen(),
      ),
    );
  }

  void _onTabSignIn() {
    Navigator.pop(context);
  }
}
