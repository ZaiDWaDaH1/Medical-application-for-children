import 'package:care_4u_m3hadtqani/core/class/crud.dart';
import 'package:care_4u_m3hadtqani/core/constant/linkapi.dart';

class QoustionData {
  Crud crud;
  QoustionData(this.crud);
  getData() async {
    var response = await crud.postData(AppLink.qustion, {});
    return response.fold((l) => l, (r) => r);
  }
}
