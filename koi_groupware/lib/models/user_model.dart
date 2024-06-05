class UserModel {
  final String twoFactorAuthType,
      changePwFlag,
      empGrade,
      empEmail,
      twoFactorAuthYn;
  final int result;
  final Map<String, dynamic> empInfo;

  UserModel.fromJson(Map<String, dynamic> json)
      : result = json['result'],
        twoFactorAuthType = json['TWO_FACTOR_AUTH_TYPE'],
        changePwFlag = json['changePwFlag'],
        empInfo = json['empInfo'],
        empGrade = json['empGrade'],
        empEmail = json['empEmail'],
        twoFactorAuthYn = json['TWO_FACTOR_AUTH_YN'];
}
