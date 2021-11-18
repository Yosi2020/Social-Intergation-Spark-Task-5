# social_integration

           
                             Welcome to Eyu Tech Follow me on youtube https://www.youtube.com/watch?v=V7wnxbHl9iM

Today we will see SocialIntegrationLogin Spark Foundation task#5 with out Firebase.

1) Creating Google sign in 

step1: goto https://console.cloud.google.com

be sure you are sign in using your google account

Then click on newproject after that you will give any project name and click on CREATE tap

after creating your project then click on SELECT PROJECT, Now you will see that your project is selected  

on the search button write OAUTH and then select OAUTH CONSTENT SCREEN

it may take some min.

on OAUTH CONSTENT SCREEN page select EXTERNAL and click CREATE.

on EDIT APP REGISTRATION we do 3 thing 
                 
                 - Adding App name
                 
                 - User support email
                 
                 - Developer contact information 

Step2: add the library google_sign_in: ^5.0.3 on pubspec.yaml

step3: adding your code on the lib file ... you can get directly on my github
               
               - main.dart for initile started 
               
               - add consants.dark and theme.dart for light and dark theme 
               
               - HomePage folder ----> homepage.dark
               
               - api folderfolder ------> google_signin_api.dart 

step4: run the below code on your cmd

keytool -genkey -v -keystore C:\Users\Eyosiyas\Downloads\Documents\mykey.jks -storetype JKS -keyalg RSA -keysize 2048 -validity 10000 -alias androiddebugkey 

you will get the code on the Description

before you run this one please change your dir.
 
 add password as android
 
 and click enter as you get [no]: 
 
 when you get [no]: enter y

After runing your code you will get mykey.jks on C:\Users file\Eyosiyas\Downloads\Documents\

then add mykey.jsk file on android/app/ dir.....

step5: goto android/app/build.gradle then edit it like this one-----> let's goto codepart.

step6: let's back to google cloud Platform then follow me... CAREFUL
 
               - click Credentials and select Create Credential -->select OAuth client ID
               
        fill this : Application type- Android
                 
                 Package name - goto android/app/build.gradle then copy applicationId
                    
                    SHA-1  ----> goto cmd add your project dir... then add cd android
                    
                    then write gradlew signinReport 

https://pub.dev/packages/google_sign_in

Here you will get the SHA-1 code after that 


Finally we finished technical part You can refer the code on my Github


2) Creating Facebook sign in 
 
goto https://developers.facebook.com/ and follow each step

here you will enter your facebook password

download openssl from i will put in description. 

https://code.google.com/archive/p/openssl-for-windows/downloads


      
keytool -exportcert -alias androiddebugkey -keystore "C:\Users\USERNAME\.android\debug.keystore" | G:\database flutter\openssl\bin\openssl" sha1 -binary | G:\database flutter\openssl\bin\openssl" base64


copy and create strings.xml file follow me....


Finally let's goto code review and testing code







                               Thanks for Watching!!!!      


A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
