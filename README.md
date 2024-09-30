# flavers_flutter

A new Flutter project.

## CI/CD
### 1- Connected Firebase by project and selected feature App Distribution.
### 2- Install Fastlane in the project
- Navigator to the Android folder in the project(cd android).
- write fastlane init.
### 3- connected Firebase to fastLine.
- in the directory android folder write this command ```fastlane add_plugin firebase_app_distribution```.
- I selected the command prompt, wrote ```firebase login:ci```, and saved the response token.
### 4- update Fastfile
```
 default_platform(:android)

platform :android do
  desc "Lane for Android Firebase App Distribution" 
  lane :firebase_distribution do
    sh "flutter clean"
    sh "flutter build apk --release --flavor prod --target lib/main_prod.dart --no-tree-shake-icons"
    firebase_app_distribution(
        app: "1:507486278849:android:e68a2a65988b695d997040", // this id app in firebase console
        firebase_cli_token: "1//03J3f8Xol6Tw9CgYIARAAGAMSNwF-L9IrYhJiWRZVb2OPRUaTqyBtHrGF45Nn19ecANtsRbrSODrNI3WOsvPnbVuyPDXTYc9gizs", // this token
        android_artifact_type: "APK",
        android_artifact_path: "../build/app/outputs/flutter-apk/app-prod-release.apk",// build apk
        testers: "esammww.com@gmail.com", // this email tester
        release_notes: "This is a test release"
        )
  end
end
 ```
### 5- in the directory android folder write this command ```fastlane android firebase_distribution```.
