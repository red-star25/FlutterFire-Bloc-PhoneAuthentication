import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class PhoneNumberWidget extends StatefulWidget {
  const PhoneNumberWidget({Key? key, required this.phoneNumberController})
      : super(key: key);
  final TextEditingController phoneNumberController;

  @override
  State<PhoneNumberWidget> createState() => _PhoneNumberWidgetState();
}

class _PhoneNumberWidgetState extends State<PhoneNumberWidget> {
  CountryCode _countryCode = CountryCode(code: 'IN', dialCode: '+91');
  final GlobalKey<FormState> _phoneNumberFormKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _phoneNumberFormKey,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.phone,
            controller: widget.phoneNumberController,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              hintText: 'Enter your phone number',
              prefixIcon: CountryCodePicker(
                onChanged: (CountryCode countryCode) {
                  setState(() {
                    _countryCode = countryCode;
                  });
                },
                initialSelection: _countryCode.code,
                showCountryOnly: false,
                showOnlyCountryWhenClosed: false,
                alignLeft: false,
              ),
            ),
            validator: (value) {
              if (value!.length != 10) {
                return 'Please enter valid phone number';
              }
              return null;
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: ElevatedButton(
              onPressed: () {
                if (_phoneNumberFormKey.currentState!.validate()) {
                  _sendOtp(
                      phoneNumber: widget.phoneNumberController.text,
                      context: context);
                }
              },
              child: const Text('Send OTP'),
            ),
          ),
        ],
      ),
    );
  }

  void _sendOtp({required String phoneNumber, required BuildContext context}) {
    //TODO: Send OTP
  }
}
