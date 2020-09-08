// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'localizations.dart';

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
        signInErrorTitle: "Sign In Error",
        signInError: "Login failed: email or password incorrect.",
        resetPasswordLabelButton: "Forgot password?",
        signUpLabelButton: "Create an Account? Sign Up",
        signUpErrorTitle: "Sign Up Failed.",
        signUpError: "There was a problem signing up.  Please try again later.",
        signInLabelButton: "Have an Account? Sign In.",
        resetPasswordNoticeTitle: "Password Reset Email Sent",
        resetPasswordNotice:
            "Check your email and follow the instructions to reset your password.",
        resetPasswordFailed: "Password Reset Email Failed",
        signInonResetPasswordLabelButton: "Sign In",
        updateUser: "Update Profile",
        updateUserSuccessNoticeTitle: "User Updated",
        updateUserSuccessNotice: "User information successfully updated.",
        updateUserFailNotice: "Failed to update user",
        enterPassword: "Enter your password",
        cancel: "Cancel",
        submit: "Submit",
        changePasswordLabelButton: "Change Password",
        resetPasswordTitle: "Reset Password",
        updateProfileTitle: "Update Profile",
        wrongPasswordNoticeTitle: "Login Failed",
        wrongPasswordNotice: "The password does not match our records.",
        unknownError: "Unknown Error",
      ),
      settings: AppLocalizations_Labels_Settings(
        title: "Settings",
        language: "Language",
        theme: "Theme",
        signOut: "Sign Out",
        dark: "Dark",
        light: "Light",
        system: "System",
        updateProfile: "Update Profile",
      ),
      home: AppLocalizations_Labels_Home(
        title: "Home",
        nameLabel: "Name",
        uidLabel: "UID",
        emailLabel: "Email",
        adminUserLabel: "Admin User",
      ),
      app: AppLocalizations_Labels_App(
        title: "AA(Alchoholic Anonymous)",
      ),
      validator: AppLocalizations_Labels_Validator(
        email: "Please enter a valid email address.",
        password: "Password must be at least 6 characters.",
        name: "Please enter a name.",
        number: "Please enter a number.",
        notEmpty: "This is a required field.",
        amount:
            "Please enter a number i.e. 250 - no dollar symbol and no cents",
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
        signInErrorTitle: "로그인 오류",
        signInError: "로그인 실패 : 잘못된 이메일 혹은 비밀번호",
        resetPasswordLabelButton: "비밀번호를 잊으셨습니까?",
        signUpLabelButton: "계정을 생성하시겠습니까? 회원가입",
        signUpErrorTitle: "회원가입 실패",
        signUpError: "로그인 도중 오류가 발생하였습니다. 잠시 후 시도해주세요.",
        signInLabelButton: "계정이 있으십니까? 로그인",
        resetPasswordNoticeTitle: "비밀번호 재설정 이메일 전송",
        resetPasswordNotice: "이메일을 확인하고 지시에 따라 비밀번호를 재설정 하십시오",
        resetPasswordFailed: "비밀번호 재설정 이메일 실패",
        signInonResetPasswordLabelButton: "로그인",
        updateUser: "프로필 수정",
        updateUserSuccessNoticeTitle: "유저 수정",
        updateUserSuccessNotice: "성공적으로 수정 되었습니다.",
        updateUserFailNotice: "수정에 실패했습니다.",
        enterPassword: "비밀번호를 입력하세요",
        cancel: "취소",
        submit: "전송",
        changePasswordLabelButton: "비밀번호 변경",
        resetPasswordTitle: "비밀번호 재설정",
        updateProfileTitle: "프로필 수정",
        wrongPasswordNoticeTitle: "로그인 실패",
        wrongPasswordNotice: "암호가 일치하지 않습니다.",
        unknownError: "알수없는 오류",
      ),
      settings: AppLocalizations_Labels_Settings(
        title: "설정",
        language: "언어",
        theme: "테마",
        signOut: "로그아웃",
        dark: "어두운",
        light: "밝은",
        system: "시스템",
        updateProfile: "프로필 수정",
      ),
      home: AppLocalizations_Labels_Home(
        title: "홈",
        nameLabel: "성명",
        uidLabel: "UID",
        emailLabel: "이메일",
        adminUserLabel: "관리자",
      ),
      app: AppLocalizations_Labels_App(
        title: "AA(익명의 알코올 중독자들)",
      ),
      validator: AppLocalizations_Labels_Validator(
        email: "유효한 이메일 주소를 작성해주세요.",
        password: "비밀번호는 최소 6글자 이상입니다.",
        name: "성명을 입력해주세요.",
        number: "숫자를 입력해주세요",
        notEmpty: "필수 항목입니다.",
        amount: "달러와 센트기호 없이 숫자를 입력해주세요.",
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
      this.signInErrorTitle,
      this.signInError,
      this.resetPasswordLabelButton,
      this.signUpLabelButton,
      this.signUpErrorTitle,
      this.signUpError,
      this.signInLabelButton,
      this.resetPasswordNoticeTitle,
      this.resetPasswordNotice,
      this.resetPasswordFailed,
      this.signInonResetPasswordLabelButton,
      this.updateUser,
      this.updateUserSuccessNoticeTitle,
      this.updateUserSuccessNotice,
      this.updateUserFailNotice,
      this.enterPassword,
      this.cancel,
      this.submit,
      this.changePasswordLabelButton,
      this.resetPasswordTitle,
      this.updateProfileTitle,
      this.wrongPasswordNoticeTitle,
      this.wrongPasswordNotice,
      this.unknownError});

  final String signInButton;

  final String signUpButton;

  final String resetPasswordButton;

  final String emailFormField;

  final String passwordFormField;

  final String nameFormField;

  final String signInErrorTitle;

  final String signInError;

  final String resetPasswordLabelButton;

  final String signUpLabelButton;

  final String signUpErrorTitle;

  final String signUpError;

  final String signInLabelButton;

  final String resetPasswordNoticeTitle;

  final String resetPasswordNotice;

  final String resetPasswordFailed;

  final String signInonResetPasswordLabelButton;

  final String updateUser;

  final String updateUserSuccessNoticeTitle;

  final String updateUserSuccessNotice;

  final String updateUserFailNotice;

  final String enterPassword;

  final String cancel;

  final String submit;

  final String changePasswordLabelButton;

  final String resetPasswordTitle;

  final String updateProfileTitle;

  final String wrongPasswordNoticeTitle;

  final String wrongPasswordNotice;

  final String unknownError;

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
      case 'signInErrorTitle':
        return signInErrorTitle;
      case 'signInError':
        return signInError;
      case 'resetPasswordLabelButton':
        return resetPasswordLabelButton;
      case 'signUpLabelButton':
        return signUpLabelButton;
      case 'signUpErrorTitle':
        return signUpErrorTitle;
      case 'signUpError':
        return signUpError;
      case 'signInLabelButton':
        return signInLabelButton;
      case 'resetPasswordNoticeTitle':
        return resetPasswordNoticeTitle;
      case 'resetPasswordNotice':
        return resetPasswordNotice;
      case 'resetPasswordFailed':
        return resetPasswordFailed;
      case 'signInonResetPasswordLabelButton':
        return signInonResetPasswordLabelButton;
      case 'updateUser':
        return updateUser;
      case 'updateUserSuccessNoticeTitle':
        return updateUserSuccessNoticeTitle;
      case 'updateUserSuccessNotice':
        return updateUserSuccessNotice;
      case 'updateUserFailNotice':
        return updateUserFailNotice;
      case 'enterPassword':
        return enterPassword;
      case 'cancel':
        return cancel;
      case 'submit':
        return submit;
      case 'changePasswordLabelButton':
        return changePasswordLabelButton;
      case 'resetPasswordTitle':
        return resetPasswordTitle;
      case 'updateProfileTitle':
        return updateProfileTitle;
      case 'wrongPasswordNoticeTitle':
        return wrongPasswordNoticeTitle;
      case 'wrongPasswordNotice':
        return wrongPasswordNotice;
      case 'unknownError':
        return unknownError;
      default:
        return '';
    }
  }
}

class AppLocalizations_Labels_Settings {
  const AppLocalizations_Labels_Settings(
      {this.title,
      this.language,
      this.theme,
      this.signOut,
      this.dark,
      this.light,
      this.system,
      this.updateProfile});

  final String title;

  final String language;

  final String theme;

  final String signOut;

  final String dark;

  final String light;

  final String system;

  final String updateProfile;

  String getByKey(String key) {
    switch (key) {
      case 'title':
        return title;
      case 'language':
        return language;
      case 'theme':
        return theme;
      case 'signOut':
        return signOut;
      case 'dark':
        return dark;
      case 'light':
        return light;
      case 'system':
        return system;
      case 'updateProfile':
        return updateProfile;
      default:
        return '';
    }
  }
}

class AppLocalizations_Labels_Home {
  const AppLocalizations_Labels_Home(
      {this.title,
      this.nameLabel,
      this.uidLabel,
      this.emailLabel,
      this.adminUserLabel});

  final String title;

  final String nameLabel;

  final String uidLabel;

  final String emailLabel;

  final String adminUserLabel;

  String getByKey(String key) {
    switch (key) {
      case 'title':
        return title;
      case 'nameLabel':
        return nameLabel;
      case 'uidLabel':
        return uidLabel;
      case 'emailLabel':
        return emailLabel;
      case 'adminUserLabel':
        return adminUserLabel;
      default:
        return '';
    }
  }
}

class AppLocalizations_Labels_App {
  const AppLocalizations_Labels_App({this.title});

  final String title;

  String getByKey(String key) {
    switch (key) {
      case 'title':
        return title;
      default:
        return '';
    }
  }
}

class AppLocalizations_Labels_Validator {
  const AppLocalizations_Labels_Validator(
      {this.email,
      this.password,
      this.name,
      this.number,
      this.notEmpty,
      this.amount});

  final String email;

  final String password;

  final String name;

  final String number;

  final String notEmpty;

  final String amount;

  String getByKey(String key) {
    switch (key) {
      case 'email':
        return email;
      case 'password':
        return password;
      case 'name':
        return name;
      case 'number':
        return number;
      case 'notEmpty':
        return notEmpty;
      case 'amount':
        return amount;
      default:
        return '';
    }
  }
}

class AppLocalizations_Labels {
  const AppLocalizations_Labels(
      {this.auth, this.settings, this.home, this.app, this.validator});

  final AppLocalizations_Labels_Auth auth;

  final AppLocalizations_Labels_Settings settings;

  final AppLocalizations_Labels_Home home;

  final AppLocalizations_Labels_App app;

  final AppLocalizations_Labels_Validator validator;

  String getByKey(String key) {
    switch (key) {
      default:
        return '';
    }
  }
}
