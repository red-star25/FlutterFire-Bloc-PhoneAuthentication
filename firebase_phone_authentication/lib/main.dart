import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_phone_authentication/presentation/app/view/app_page.dart';
import 'package:firebase_phone_authentication/presentation/home/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}
