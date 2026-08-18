class Hostess < Formula
  desc "Deploy entire stacks with a single command"
  homepage "https://hostess.sh"
  version "0.5.2"
  license :closed

  on_macos do
    on_arm do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.5.2/hostess-darwin-arm64"
      sha256 "80312df8d6676c6738547ad39a107b7708c60ac8a995743d0f3c53897e12ebe3"
    end

    on_intel do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.5.2/hostess-darwin-amd64"
      sha256 "500c3cb7c1ee427483810034fc2a9e0b7cafb0cfedca483b4a8d3c61ed2bb100"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.5.2/hostess-linux-arm64"
      sha256 "27d9a58d1c89437d7bfdafbb963c6066c121a7f41b5d81f7eebf69c4c7577652"
    end

    on_intel do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.5.2/hostess-linux-amd64"
      sha256 "fbe4bd8412212813bec5b438196594804b7fa118128ae9a518a3421541de782e"
    end
  end

  def install
    bin.install Dir["hostess-*"].first => "hostess"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hostess --version")
  end
end
