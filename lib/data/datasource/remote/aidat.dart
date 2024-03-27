import 'package:care_4u_m3hadtqani/core/class/crud.dart';
import 'package:care_4u_m3hadtqani/core/constant/linkapi.dart';

class AiadatData {
  Crud crud;
  AiadatData(this.crud);
  getData() async {
    var response = await crud.postData(AppLink.aiadar, {});
    return response.fold((l) => l, (r) => r);
  }
}
