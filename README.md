# CucumberTestAndroidWithAppium

A simple test of **Android** using **Appium** and **Cucumber**.

## Required to run this project

- *Ruby (used version 2.3.1)*
- *Cucumber (used version 3.1.0)*
- *Appium Server*
- *Node*
- *JVM (Java Virtual Machine)*
- *Android SDK or Android Studio*
- *Android Emulator*
- *Selenium Client*

## Step by step to run this project

1. Make sure you have been installed all components to run this project and all enviroment variables has been configured.
2. Don't forget to install dependecies to this project, go to directory **CucumberTestAndroidWithAppium/** directory and type in your **terminal** :
```

$ bundle install

```
3. Start your **Appium Server**, type in your **terminal** :  
```

$ appium

```
4. Run your **Android Emulator**, go to **Android/sdk/tools** directory and run this following code in your **terminal** :

```

$ emulator -avd 'YOUR-DEVICE-NAME'

```
5. Now go to **CucumberTestAndroidWithAppium/** and run this code :
 ```

 $ cucumber

 ```
6. Everything will be run, looks like magic!

![](https://media.giphy.com/media/QmX0o7tULcQg/giphy.gif)

## Get components and Tutorial

- Appium :http://appium.io/downloads.html
- Appium Configuration with Ruby : https://www.concrete.com.br/2017/12/06/15565/
- Ruby : https://www.ruby-lang.org/pt/downloads/
- Android Studio : https://developer.android.com/studio/index.html?hl=pt-br
- Cucumber :https://cucumber.io/
