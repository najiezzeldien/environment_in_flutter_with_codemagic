import 'package:environments_with_codemagic/environment.dart';
import 'package:environments_with_codemagic/main_common.dart';

Future<void> main() async {
  await mainCommon(Environment.prod);
}
