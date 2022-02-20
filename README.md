# MapBox Flutter

This repository contains code corresponding to the Youtube videos 
- https://youtu.be/oFDx6tLipmw
- https://youtu.be/J1yLPFbjOkE

If you loved this work then you can support me by liking and sharing the video, and starring this repository! 😇

## 🤔 So what is this app now?

MapBox Flutter demonstrates an implementation of MapBox in a Flutter application, along with its Maps and Navigation SDKs. We will do this by building a simple project involving a hungry you on a bicycle and a set of restaurants and cafes! 😂 
In the second video, we recreate a complete Uber like experience, to implement turn-by-turn navigation, and in the process also make use of the Mapbox Search APIs, Direction APIs, Reverse Geocoding and Maps SDK.

## 👩🏻‍💻 Where are the instructions to get the app up and running?

Well open your browser and IDE, we have got a few things to do! Follow along as we get the app up and running.

1. Head to https://account.mapbox.com and create a new account. Then go to your account page. You will see a public access token. This is something we will need later.
<img width="844" alt="Screenshot 2022-02-11 at 9 03 04 PM" src="https://user-images.githubusercontent.com/45942031/153620576-c7cac859-b403-4e1b-aea7-83df4dada119.png">

2. In the same page click on **Create a token** and in the next page, add a new secret token. Make sure that the `DOWNLOADS:READ` permission is checked here. After you create the token, you must copy it somewhere else because you can only see this once. <br>
<img width="1440" alt="Screenshot 2022-02-11 at 9 04 50 PM" src="https://user-images.githubusercontent.com/45942031/153621198-8b2f9c44-5d56-4e93-841e-3608cd0b24bf.png">

3. Now that you have both the tokens, you just need to replace them in appropriate places of the project code. Open the `starter_code/mapbox_navigation` folder and look for `YOUR_PUBLIC_ACCESS_TOKEN` and `YOUR_SECRET_TOKEN` in the entire project. Replace them with the tokens gotten in Step 1 and 2 respectively. To double check you can make sure that -
    * For `ios`: You must have put public token in `Runner/Info.plist` file.
    * Some `android`: You must have put public token as a string in `app/src/main/res/values/strings.xml` and secret token as a string in `gradle.properties` file.
4. To run the app in an IOS device/emulator, you will need 1 more step. Open or create `.netrc` file in your home directory. In there add the following lines:
```
machine api.mapbox.com
  login mapbox
  password <YOUR_SECRET_TOKEN>
```
5. Finally open your `assets` folder and add a `config/.env` file. You can add one key-value pair there:
```
MAPBOX_ACCESS_TOKEN="<YOUR_PUBLIC_ACCESS_TOKEN>"
```

That's it. You follow these 5 steps and you should be good to go. Now I would also recommend going through the documentation for [Android](https://docs.mapbox.com/android/maps/guides/install/) and [iOS](https://docs.mapbox.com/ios/maps/guides/install/), because there is a lot more to it, like adding permissions and stuff, which I have already done for you.

## 📚 Any supporting materials?

Sure. The complete demonstration for this app is done in the Youtube video mentioned above. Other than that, here are some additional resources -

- Medium article 1 - https://absatyaprakash01.medium.com/navigation-with-mapbox-for-flutter-apps-313687778686
- Medium article 2 - https://absatyaprakash01.medium.com/turn-by-turn-navigation-with-mapbox-16f874567b3c
- Mapbox documentation - https://docs.mapbox.com/
- Mapbox directions API playground - https://docs.mapbox.com/playground/directions/
- A list of all plugins used (thanks to the creators and Flutter community ❤️)
  - Mapbox GL - https://pub.dev/packages/mapbox_gl  
  - Flutter Mapbox Navigation - https://pub.dev/packages/flutter_mapbox_navigation
  - Shared Preferences - https://pub.dev/packages/shared_preferences
  - Location - https://pub.dev/packages/location
  - Other than these - carousel_slider, cached_network_image, dio and flutter_dotenv, etc.

## 😞 I ran this app, and I have an issue ...

Make sure to watch the video, and that might just clarify your issue, because I have demonstrated all the steps there. Still, if you have anything, just open an issue or comment on the youtube video, or reach out to me and I'll love to help!

Thank you for visiting!
