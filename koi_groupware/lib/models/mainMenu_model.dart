class MainmenuModel {
  final String mainType, menuCode, menu1Nm, menu1Url, status, code2;

  MainmenuModel.fromJson(Map<String, dynamic> json)
      : mainType = json['MAIN_TYPE'],
        menuCode = json['MENU_CODE'],
        menu1Nm = json['MENU_1_NM'],
        menu1Url = json['MENU_1_URL'],
        status = json['STATUS'],
        code2 = json['CODE2'];
}
