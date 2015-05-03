// This section sets up some basic app metadata,
// the entire section is optional.
App.info({
  id: 'com.flomio.sili',
  name: 'SeeItLikeIt',
  description: 'An app that allows you to See and Like art in public spaces for easy sharing with friends.',
  author: 'Richard Grundy',
  email: 'info@flomio.com',
  website: 'http://sili.club'
});
 
// Set up resources such as icons and launch screens.
App.icons({
  'iphone_2x': 'icons/icon-60@2x.png',
  'iphone_2x': 'icons/icon-60@3x.png',
  // ... more screen sizes and platforms ...
});
 
App.launchScreens({
  'iphone_2x': 'splash/Default@2x~iphone.png',
  // ... more screen sizes and platforms ...
});
 
// Set PhoneGap/Cordova preferences
App.setPreference('BackgroundColor', '0xff0000ff');
App.setPreference('HideKeyboardFormAccessoryBar', true);
 
// Pass preferences for a particular PhoneGap/Cordova plugin
App.configurePlugin('com.phonegap.plugins.facebookconnect', {
  APP_ID: '1598570257080616',
  API_KEY: '563a7f303941e0245e2e0207aa7c7f3f'
});