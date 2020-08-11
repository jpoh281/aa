// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'localization.dart';

// **************************************************************************
// SheetLocalizationGenerator
// **************************************************************************

class AppLocalizations {
  AppLocalizations(this.locale) : this.labels = languages[locale];

  final Locale locale;

  static final Map<Locale, AppLocalizations_Labels> languages = {
    Locale.fromSubtags(languageCode: "en"): AppLocalizations_Labels(
      auth: AppLocalizations_Labels_Auth(
        signInButton: "Sign In",
        signUpButton: "Sign Up",
        resetPasswordButton: "Send Password Reset",
        emailFormField: "Email",
        passwordFormField: "Password",
        nameFormField: "Name",
        signInError: "Login faild: email or password wrong",
        resetPasswordLabelButton: "Forgot password?",
        signUpLabelButton: "Create an Account",
        signUpError: "Sign up failed",
      ),
    ),
    Locale.fromSubtags(languageCode: "ko"): AppLocalizations_Labels(
      auth: AppLocalizations_Labels_Auth(
        signInButton: "로그인",
        signUpButton: "회원가입",
        resetPasswordButton: "비밀번호 재설정",
        emailFormField: "이메일",
        passwordFormField: "비밀번호",
        nameFormField: "성명",
        signInError: "로그인 실패 : 잘못된 이메일 혹은 비밀번호",
        resetPasswordLabelButton: "비밀번호를 잊으셨습니까?",
        signUpLabelButton: "계정 생성",
        signUpError: "회원가입 실패",
      ),
    ),
  };

  final AppLocalizations_Labels labels;

  static AppLocalizations_Labels of(BuildContext context) =>
      Localizations.of<AppLocalizations>(context, AppLocalizations)?.labels;
}

class AppLocalizations_Labels_Auth {
  const AppLocalizations_Labels_Auth(
      {this.signInButton,
      this.signUpButton,
      this.resetPasswordButton,
      this.emailFormField,
      this.passwordFormField,
      this.nameFormField,
      this.signInError,
      this.resetPasswordLabelButton,
      this.signUpLabelButton,
      this.signUpError});

  final String signInButton;

  final String signUpButton;

  final String resetPasswordButton;

  final String emailFormField;

  final String passwordFormField;

  final String nameFormField;

  final String signInError;

  final String resetPasswordLabelButton;

  final String signUpLabelButton;

  final String signUpError;

  String getByKey(String key) {
    switch (key) {
      case 'signInButton':
        return signInButton;
      case 'signUpButton':
        return signUpButton;
      case 'resetPasswordButton':
        return resetPasswordButton;
      case 'emailFormField':
        return emailFormField;
      case 'passwordFormField':
        return passwordFormField;
      case 'nameFormField':
        return nameFormField;
      case 'signInError':
        return signInError;
      case 'resetPasswordLabelButton':
        return resetPasswordLabelButton;
      case 'signUpLabelButton':
        return signUpLabelButton;
      case 'signUpError':
        return signUpError;
      default:
        return '';
    }
  }
}

class AppLocalizations_Labels {
  const AppLocalizations_Labels({this.auth});

  final AppLocalizations_Labels_Auth auth;

  String getByKey(String key) {
    switch (key) {
      default:
        return '';
    }
  }
}
