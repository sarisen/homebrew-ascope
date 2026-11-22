cask "ascope" do
  version "0.1.17"
  sha256 "27acaade4ee3c8d664841e27421990774ed85da81dc2985b0c103654fd8073d2"

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
