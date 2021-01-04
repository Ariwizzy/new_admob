import 'package:firebase_admob/firebase_admob.dart';
const String testDeveice = "85A4A45527322E89FFC0753E55D59566";
class Admob{
  static const MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    testDevices: testDeveice != null ? <String>[testDeveice] : null,
    nonPersonalizedAds: false,
    keywords: <String>["insurance","education","health","job",'loan','montage','attorney'],
  );
  BannerAd bannerAd;
  InterstitialAd interstitialAd;
  BannerAd createBannerAd(){
    return BannerAd(
        adUnitId:  "ca-app-pub-9327306130022507/1733100219",
        size: AdSize.fullBanner,
        targetingInfo: targetingInfo,
        listener: (MobileAdEvent event){
          print("BannerAd $event");
        }
    );
  }
  InterstitialAd createInterstitialAd(){
    return InterstitialAd(
        adUnitId: "ca-app-pub-9327306130022507/4011779197",
        targetingInfo: targetingInfo,
        listener: (MobileAdEvent event){
          print("InterstitialAd $event");
        }
    );
  }
}
