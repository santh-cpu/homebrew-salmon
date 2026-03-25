cask "salmon" do
  version "1.0.0"
  sha256 "dfb5f5d36b7cad49c8ef34446cd08c2bd3bb05a45a8cec21bae6cc3f3b6c8dc4"

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
