require 'appium_lib'
require 'cucumber/core/ast'
require 'rspec/expectations'

DEVICE_NAME = ENV['DEVICE_NAME']
APPIUM_PORT = ENV['APPIUM_PORT']
SYSTEM_PORT = ENV['SYSTEM_PORT']

desired_capabilities = {
    'deviceName' => DEVICE_NAME,
    'udid' => DEVICE_NAME,
    'systemPort' => SYSTEM_PORT,
    'platformName' => 'Android',
    'appActivity' => 'MainConverterActivity',
    'appPackage' => 'com.ba.universalconverter',
    'noReset' => false,
    'automationName' => 'uiautomator2',
    'autoGrantPermissions' => true,
    'app' => 'PreciseUnitConversion.apk'
  }

opts = { caps: desired_capabilities, appium_lib: { server_url: "http://localhost:#{APPIUM_PORT}/wd/hub" } }
Appium::Driver.new(opts, true)
Appium.promote_appium_methods Object