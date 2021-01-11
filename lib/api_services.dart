

import 'package:get/get.dart';

class ApiServices extends GetConnect
{
  String url="http://srm.vgts.tech/api/usercreate";

  Future guestRegister()
  async{
    Responce r=await post(url, {"name":"hari","purposeofvisit":"fever"});

  }



}