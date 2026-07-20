class Hostess < Formula
  desc "Deploy entire stacks with a single command"
  homepage "https://hostess.sh"
  version "0.3.3"
  license :closed

  on_macos do
    on_arm do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.3.3/hostess-darwin-arm64"
      sha256 "29cd9fb223337c22350cd745438216c78b7a9e67fef318a4045ba95b62b1dd2b"
    end

    on_intel do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.3.3/hostess-darwin-amd64"
      sha256 "e84eb85c0cf4912f21445ae3b78ba26ee8e289febc765a1f013f8bc775769539"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.3.3/hostess-linux-arm64"
      sha256 "54c4a26a79b1c6f211b1515d809b47e00f8c307b1192dbd58df328dd8d4d18d9"
    end

    on_intel do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.3.3/hostess-linux-amd64"
      sha256 "e03e16b814482dd5c6fc4c20dbd7a443872e6850e4a5e5fe1c89968a5a43b1c9"
    end
  end

  def install
    bin.install Dir["hostess-*"].first => "hostess"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hostess --version")
  end
end
