class Hostess < Formula
  desc "Deploy entire stacks with a single command"
  homepage "https://hostess.sh"
  version "0.2.4"
  license :closed

  on_macos do
    on_arm do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.2.4/hostess-darwin-arm64"
      sha256 "1eb3849135d92582fdbd589fc956f314a0b0e79a854fb0353664c98d6e0e571c"
    end

    on_intel do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.2.4/hostess-darwin-amd64"
      sha256 "245f3d82ca389374428c96d499670a2e88a2f154a044b09940252d32ad7da2fe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.2.4/hostess-linux-arm64"
      sha256 "84b063cc59cca615a35a13b712ee9e82c98ac6b2e9c7feb973cf37d6f20a1a4a"
    end

    on_intel do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.2.4/hostess-linux-amd64"
      sha256 "fa2d59883ba0aa174c7205259b240e06e0ac5ce7cc2a4a19c6a16f0ca1d64a6f"
    end
  end

  def install
    bin.install Dir["hostess-*"].first => "hostess"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hostess --version")
  end
end
