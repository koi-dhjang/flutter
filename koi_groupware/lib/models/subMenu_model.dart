class SubMenuModel {
  final String mainType, menuCode, menu1Nm, menu1Url, status, code2;

  SubMenuModel.fromJson(Map<String, dynamic> json)
      : mainType = json['MAIN_TYPE'],
        menuCode = json['SECOND_TYPE'],
        menu1Nm = json['MENU_CODE'],
        menu1Url = json['MENU_2_NM'],
        status = json['MENU_2_URL'],
        code2 = json['STATUS'];
}
