import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_phone_authentication/data/repository/phone_auth_repository.dart';

part 'phone_auth_event.dart';
part 'phone_auth_state.dart';

class PhoneAuthBloc extends Bloc<PhoneAuthEvent, PhoneAuthState> {
  final PhoneAuthRepository phoneAuthRepository;
  PhoneAuthBloc({required this.phoneAuthRepository})
      : super(PhoneAuthInitial()) {
    on<PhoneAuthEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
