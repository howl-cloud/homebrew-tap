class Hostess < Formula
  desc "Deploy entire stacks with a single command"
  homepage "https://hostess.sh"
  version "0.2.5"
  license :closed

  on_macos do
    on_arm do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.2.5/hostess-darwin-arm64"
      sha256 "52b526416a94308cb6c3d3548685892e863e6fee04dddcd235b735558f1ba126"
    end

    on_intel do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.2.5/hostess-darwin-amd64"
      sha256 "0fad0544ee11a30333152e52ab851f989b559d67b8486c245609bb411f659187"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.2.5/hostess-linux-arm64"
      sha256 "670c4214f56bfdf521dadd35282bd3fd53481adea9d8fb9979675088f41d0384"
    end

    on_intel do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.2.5/hostess-linux-amd64"
      sha256 "fff256231f18d7f8e8ef4605d990488cee0ac7b177634937a8690fe35ef49e0f"
    end
  end

  def install
    bin.install Dir["hostess-*"].first => "hostess"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hostess --version")
  end
end
