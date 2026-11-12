cask "ascope" do
  version "0.1.16"
  sha256 "b8fab235872a14137e9437622d88cd85afec995bc96e16448c5768eb0df1a97c"

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
