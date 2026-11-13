cask "warsaw" do
  version :latest
  sha256 :no_check

  url "https://cloud.gastecnologia.com.br/bnt/warsaw/install/warsaw_setup.pkg"
  name "Warsaw"
  desc "Security software for online banking in Brazil"
  homepage "https://www.topazevolution.com/"

  pkg "warsaw_setup.pkg"

  uninstall launchctl: [
              "com.topazofd.warsaw",
              "com.topazofd.warsaw.user",
            ],
            pkgutil:   "com.topazofd.warsaw",
            delete: [
              "/Library/LaunchDaemons/com.topazofd.warsaw.plist",
              "/Library/LaunchAgents/com.topazofd.warsaw.user.plist",
              "/Library/Fonts/dbldwrsw.ttf",
            ]
  
  uninstall_postflight_steps do
    delete_keychain_certificates "Warsaw Personal CA"
    delete_keychain_certificates "127.0.0.1"
  end
end