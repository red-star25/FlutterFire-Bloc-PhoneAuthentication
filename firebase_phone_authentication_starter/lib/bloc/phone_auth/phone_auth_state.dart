part of 'phone_auth_bloc.dart';

abstract class PhoneAuthState extends Equatable {
  const PhoneAuthState();
  
  @override
  List<Object> get props => [];
}

class PhoneAuthInitial extends PhoneAuthState {}
