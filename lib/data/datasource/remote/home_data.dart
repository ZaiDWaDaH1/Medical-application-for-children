import 'package:care_4u_m3hadtqani/core/class/crud.dart';
import 'package:care_4u_m3hadtqani/core/constant/linkapi.dart';

class HomeData {
  Crud crud;
  HomeData(this.crud);
  getData() async {
    var response = await crud.postData(AppLink.home, {});
    return response.fold((l) => l, (r) => r);
  }
}
