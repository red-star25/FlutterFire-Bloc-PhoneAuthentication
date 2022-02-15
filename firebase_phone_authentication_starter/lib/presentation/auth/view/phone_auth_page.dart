import '../phone_auth.dart';

class PhoneAuthPage extends StatefulWidget {
  const PhoneAuthPage({Key? key}) : super(key: key);

  @override
  State<PhoneAuthPage> createState() => _PhoneAuthPageState();
}

class _PhoneAuthPageState extends State<PhoneAuthPage> {
  late TextEditingController _phoneNumberController;
  late TextEditingController _codeController;

  @override
  void initState() {
    _phoneNumberController = TextEditingController();
    _codeController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _phoneNumberController.dispose();
    _codeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "FlutterFire + Bloc: \nPhone Authentication",
            style: TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
          ),
          const Divider(
            height: 30,
            endIndent: 20,
            indent: 20,
            thickness: 1.5,
            color: Colors.grey,
          ),
          const SizedBox(
            height: 30,
          ),
          PhoneNumberWidget(
            phoneNumberController: _phoneNumberController,
          ),

          //TODO: Show Opt Widget when the user has entered the phone number and is waiting for the code
          // OtpWidget(
          //   codeController: _codeController,
          // ),
        ],
      ),
    )));
  }
}
