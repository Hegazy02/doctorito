// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpRequestBody _$SignUpRequestBodyFromJson(Map<String, dynamic> json) =>
    SignUpRequestBody(
      name: json['name'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      confirmedPassword: json['password_confirmation'] as String,
      phone: json['phone'] as String,
      gender: json['gender'] as String,
    );

Map<String, dynamic> _$SignUpRequestBodyToJson(SignUpRequestBody instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'password_confirmation': instance.confirmedPassword,
      'phone': instance.phone,
      'gender': instance.gender,
    };
