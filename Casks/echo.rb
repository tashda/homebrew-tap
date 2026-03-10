cask "echo" do
  version "1.0,1"
  sha256 "6b9f6bd04e739a669538eeea465621ef63e1ad4b66f338433b77dceaa3fc1b58"

  url "https://github.com/tashda/Echo/releases/download/v#{version.before_comma}-#{version.after_comma}/Echo.zip"
  name "Echo"
  desc "Database management and SQL editor"
  homepage "https://github.com/tashda/Echo"

  # The --no-quarantine flag is recommended for users to bypass Gatekeeper
  # since the app is not notarized.
  # brew install --cask --no-quarantine tashda/tap/echo

  app "Echo.app"

  zap trash: [
    "~/Library/Application Support/Echo",
    "~/Library/Caches/dk.tippr.echo",
    "~/Library/Preferences/dk.tippr.echo.plist",
  ]
end
