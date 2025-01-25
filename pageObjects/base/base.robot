*** Settings ***
Library            AppiumLibrary

*** Variables ***
${REMOTE_URL}                                 http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME}                              Android
${PLATFORM_VERSION}                           7.0
${DEVICE_NAME}                                J3AXJR007101H7L
${APP_PACKAGE}                                com.example.myapplication
${APP_ACTIVITY}                               com.example.myapplication.MainActivity

*** Keywords ***
Open Flight Application
    Open Application            remote_url=${REMOTE_URL}
    ...                         platformName=${PLATFORM_NAME}
    ...                         platformVersion=${PLATFORM_VERSION}
    ...                         deviceName=${DEVICE_NAME}
    ...                         appPackage=${APP_PACKAGE}
    ...                         appActivity=${APP_ACTIVITY}

Close Flight Application
    Close Application
