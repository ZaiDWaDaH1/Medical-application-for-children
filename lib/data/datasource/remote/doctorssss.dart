import 'package:care_4u_m3hadtqani/core/class/crud.dart';
import 'package:care_4u_m3hadtqani/core/constant/linkapi.dart';

class DoctorData {
  Crud crud;
  DoctorData(this.crud);
  getData() async {
    var response = await crud.postData(AppLink.doctors, {});
    return response.fold((l) => l, (r) => r);
  }
}
