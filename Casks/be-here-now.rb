cask "be-here-now" do
  version "0.1.0"
  sha256 "01b42faa375e28341403b684c574cfd4f3dd6a303250471a742ea35b77c8deb6"

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
