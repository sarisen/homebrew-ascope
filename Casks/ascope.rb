cask "ascope" do
  version "0.1.18"
  sha256 "6a43da46254be30cc923a6c4ee31b14d904737adb48d3b09b656606f16cc69b7"

  url "https://api.ascope.app/releases/Ascope-#{version}.dmg?ref=brew"
  name "Ascope"
  desc "Daily App Store and Google Play keyword rank tracker"
  homepage "https://ascope.app/"

  livecheck do
    url "https://api.ascope.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Ascope.app"

  zap trash: [
    "~/Library/Caches/app.ascope.mac",
    "~/Library/Containers/app.ascope.mac",
    "~/Library/HTTPStorages/app.ascope.mac",
    "~/Library/Preferences/app.ascope.mac.plist",
  ]
end
