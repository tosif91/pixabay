import 'package:get_it/get_it.dart';
import 'package:pixabay/services/network_video.dart';
import 'package:pixabay/view/local/local.dart';
import 'package:pixabay/view/pix/pix.dart';
import 'package:pixabay/view/pix/pix_model.dart';
import 'package:pixabay/view/upload_video/upload_video_model.dart';
import 'package:stacked_services/stacked_services.dart';


GetIt locator=GetIt.instance;

setUpLocator(){
  //stacked service..
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => DialogService());
  locator.registerLazySingleton(() => PixModel());
  //locator.registerLazySingleton(() => UploadVideoModel());
  locator.registerLazySingleton(() => NetworkVideo());
 // locator.registerLazySingleton(() => Local());

  
  //services here................... 
 
 }