cask "salmon" do
  version "1.0.0"
  sha256 "eaa6718c8ce6a69ab6779f45f0891b13185dcdd918b0ab340791fef29c78cc71"

  url "https://github.com/santh-cpu/salmon/releases/download/v#{version}/Salmon.app.zip"
  name "Salmon"
  desc "Offline terminal guitar tuner with real-time mic input"
  homepage "https://github.com/santh-cpu/salmon"

  app "Salmon.app"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-dr", "com.apple.quarantine", "#{appdir}/Salmon.app"],
      sudo: false
  end
end
