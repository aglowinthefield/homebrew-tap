cask "be-here-now" do
  version "0.2.0"
  sha256 "85b21a54439151aff34aa44704df088c00a7baa70252da6221501af7eab81ad9"

  url "https://github.com/aglowinthefield/beherenow/releases/download/v#{version}/BeHereNow.zip"
  name "Be Here Now"
  desc "Menu bar app that hides applications after they lose focus"
  homepage "https://github.com/aglowinthefield/beherenow"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Be Here Now.app"

  uninstall quit: "com.clearing.beherenow"

  zap trash: "~/Library/Preferences/com.clearing.beherenow.plist"
end
