import 'package:pixabay/locator.dart';
import 'package:pixabay/utils/routes.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';


class SplashModel extends BaseViewModel {
 
 final NavigationService _navigation=locator<NavigationService>();
  
  navigateToHome()async{
   await _navigation.pushNamedAndRemoveUntil(home);
  }
}