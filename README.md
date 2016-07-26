# Loop iOS Sample - Connecting to the Loop platform

## Prerequisites:
  * XCode (7.3.1 or greater) to run this sample app.
  * [Carthage](https://github.com/Carthage/Carthage)

## Build instructions:
These instructions will get you a copy of a Loop sample app that will send a test signal to the Loop platform.

  0. If you haven’t already, signup for a Loop account and create an app on the [Loop Developer Site](https://www.loop.ms)
  0. Get the sample app
    0. Clone this sample app `git clone https://github.com/Microsoft/Loop-Sample-Hello-IOS.git`
    0. Open the folder in XCode
    0. Make a copy of `Config/Keys.example.xcconfig` and call it `Config/Keys.xcconfig`
    0. In the `Keys.xcconfig` file provide values for the `LOOP_APP_ID_PROP` and `LOOP_APP_TOKEN_PROP` using your Loop `App ID` and `App Token` from the 'Settings' tab of the [Loop Developer Site](https://www.loop.ms).
    0. **IMPORTANT** run `touch "Config/Hello Loop.xcconfig"` (this updates the timestamp for the file)
  0. Find your test users in the "Users" dashboard at the [Loop Developer Site](https://www.loop.ms)
  0. In the `Keys.xcconfig` file provide values for the `LOOP_USER_ID_PROP` and `LOOP_DEVICE_ID_PROP` using a test `userID` and `deviceID` from the dashboard.
  0. From the command line in the project directory run `carthage update --platform iOS`
  0. Build and run the app!

After this is done, you can create test signals to update the test profile. LOOP uses similar signals to determine home, work, and trips for people.
