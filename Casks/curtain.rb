cask "curtain" do
  version "0.1.0"
  sha256 :no_check

  on_arm do
    url "https://github.com/ChachanNaman/curtain/releases/download/v#{version}/Curtain_#{version}_aarch64.dmg"
  end
  on_intel do
    url "https://github.com/ChachanNaman/curtain/releases/download/v#{version}/Curtain_#{version}_x64.dmg"
  end
  name "Curtain"
  desc "Hide any screen in one tap, keep your machine awake while AI agents work, get pinged when they need you"
  homepage "https://github.com/ChachanNaman/curtain"

  auto_updates false

  app "Curtain.app"

  postflight do
    system_command "xattr",
                    args: ["-dr", "com.apple.quarantine", "#{appdir}/Curtain.app"],
                    sudo: false
  end

  zap trash: [
    "~/Library/Application Support/dev.naman.curtain",
    "~/Library/Logs/dev.naman.curtain",
    "~/Library/Preferences/dev.naman.curtain.plist",
    "~/Library/Saved Application State/dev.naman.curtain.savedState",
  ]
end
