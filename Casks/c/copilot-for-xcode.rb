cask "copilot-for-xcode" do
  version "0.35.1"
  sha256 "cbb629dad9ff6d6fdd4e6447921b42c5d0bcb0c6fe85f481c023f49ff71127fd"

  url "https://github.com/intitni/CopilotForXcode/releases/download/#{version}/Copilot.for.Xcode.app.zip"
  name "Copilot for Xcode"
  desc "Xcode extension for GitHub Copilot"
  homepage "https://github.com/intitni/CopilotForXcode"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Copilot for Xcode.app"

  zap trash: [
    "~/Library/Application Scripts/*com.intii.CopilotForXcode*",
    "~/Library/Application Support/com.intii.CopilotForXcode",
    "~/Library/Containers/com.intii.CopilotForXcode.EditorExtension",
    "~/Library/Group Containers/*group.com.intii.CopilotForXcode*",
    "~/Library/LaunchAgents/com.intii.CopilotForXcode.XPCService.plist",
    "~/Library/Preferences/5YKZ4Y3DAW.group.com.intii.CopilotForXcode.plist",
  ]
end
