class Hostess < Formula
  desc "Deploy entire stacks with a single command"
  homepage "https://hostess.sh"
  version "0.3.2"
  license :closed

  on_macos do
    on_arm do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.3.2/hostess-darwin-arm64"
      sha256 "662abdb85f04ca3c4ae6fae17eb145a2b02a29f240732f058dd4eeec10c55830"
    end

    on_intel do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.3.2/hostess-darwin-amd64"
      sha256 "0c726382fda5d3d6b3cf118229de4a57ed4f4a400d61276515ad491d3278a8f6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.3.2/hostess-linux-arm64"
      sha256 "0abfc192b76d7928cf4b8da17b1a571f7cacbdc4de8a36a87461d675dfbe5f89"
    end

    on_intel do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.3.2/hostess-linux-amd64"
      sha256 "21cc9ea1b47bcfab5b1ef2d9ee0ba5c3410377da5e981e1bcef6084e345fac05"
    end
  end

  def install
    bin.install Dir["hostess-*"].first => "hostess"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hostess --version")
  end
end
