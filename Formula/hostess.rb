class Hostess < Formula
  desc "Deploy entire stacks with a single command"
  homepage "https://hostess.sh"
  version "0.4.1"
  license :closed

  on_macos do
    on_arm do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.4.1/hostess-darwin-arm64"
      sha256 "1c0e74ab89501df53f7c6487e5dc71741b4ba20981de0df497f6ebb51423641d"
    end

    on_intel do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.4.1/hostess-darwin-amd64"
      sha256 "c7d271d4ac22d7ad153e455ae70251a0fc865f9b7390776ac68261338d1e4d00"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.4.1/hostess-linux-arm64"
      sha256 "8bf3fa02f75fc5fb77e6936a234eb50dd67b809fc2cbc574826ed8d8021a64f9"
    end

    on_intel do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.4.1/hostess-linux-amd64"
      sha256 "a63077e785474a9c0efb5a5d7665a6ba077f12bf868d147a5b3e3d800667ba3b"
    end
  end

  def install
    bin.install Dir["hostess-*"].first => "hostess"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hostess --version")
  end
end
