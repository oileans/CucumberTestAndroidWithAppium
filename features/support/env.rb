require 'appium_lib'

class AppiumServer
  def initialize
    caps = { caps: {
      deviceName: 'Nexus 5X Api 25 2',
      platformName:  'Android',
      unicodeKeyboard: true,
      resetKeyboard: true,
      app: File.join(File.dirname(__FILE__), 'products.apk')
    } }

    Appium::Driver.new(caps, true).start_driver
    Appium.promote_appium_methods Object
  end

  def close_driver
    $driver.quit_driver
  end
end
