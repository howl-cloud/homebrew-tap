class Hostess < Formula
  desc "Deploy entire stacks with a single command"
  homepage "https://hostess.sh"
  version "0.3.1"
  license :closed

  on_macos do
    on_arm do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.3.1/hostess-darwin-arm64"
      sha256 "92c8e0b4fc219ff92aeddff59639edf1beb10a09ccfc6bd86b2701017c7639ed"
    end

    on_intel do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.3.1/hostess-darwin-amd64"
      sha256 "24627837077ad9809df4706e2aea7eae99331d457e4d6981f2e3dbe353e858e7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.3.1/hostess-linux-arm64"
      sha256 "f3e9c3b45ba45ab3f637e8551a57a532fbeade3416ea91e0838a1c077932d083"
    end

    on_intel do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.3.1/hostess-linux-amd64"
      sha256 "ea182fed6c499193758d5ad5a51d9e96fad06efc3210542d259c76348ebc46cf"
    end
  end

  def install
    bin.install Dir["hostess-*"].first => "hostess"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hostess --version")
  end
end
