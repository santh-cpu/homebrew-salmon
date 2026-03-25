cask "salmon" do
  version "1.0.0"
  sha256 "ff5b89c8a5e811be6f327ab20898225db33fc470780a795febb5679e48d93851"

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
