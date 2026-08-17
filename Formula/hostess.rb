class Hostess < Formula
  desc "Deploy entire stacks with a single command"
  homepage "https://hostess.sh"
  version "0.5.1"
  license :closed

  on_macos do
    on_arm do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.5.1/hostess-darwin-arm64"
      sha256 "4d09f75ab4166b3ed138e68e889976123a08d0e866c74f17d34390c5b22d84ca"
    end

    on_intel do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.5.1/hostess-darwin-amd64"
      sha256 "0743e7123cd5232f0f73a981643953256a3be84c729be22039370878b59863ee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.5.1/hostess-linux-arm64"
      sha256 "45e40bf6024863a8088fe310039eb78c4df448709bab4f007a2cbd36dfd78309"
    end

    on_intel do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.5.1/hostess-linux-amd64"
      sha256 "3168dc14a2f7ac8c209edba5ec9d5e9a2efcfa235a4ec970bb38b4a3c32f89e2"
    end
  end

  def install
    bin.install Dir["hostess-*"].first => "hostess"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hostess --version")
  end
end
