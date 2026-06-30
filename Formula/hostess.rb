class Hostess < Formula
  desc "Deploy entire stacks with a single command"
  homepage "https://hostess.sh"
  version "0.2.2"
  license :closed

  on_macos do
    on_arm do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.2.2/hostess-darwin-arm64"
      sha256 "172ec7c4b9267b5069fede8e6ba42c528bc21ffabcc02a749b56f33a835a2804"
    end

    on_intel do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.2.2/hostess-darwin-amd64"
      sha256 "07b6be183211f9b32e9628c1c06bfd131196def87278bda51f00503ea1fce3a8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.2.2/hostess-linux-arm64"
      sha256 "243e216c3de83778aec18cbc5b2708e9b132616bc2fd62ba1d7c0e4292628b38"
    end

    on_intel do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.2.2/hostess-linux-amd64"
      sha256 "ccd8d83b18a14bc3a2ff6a53bc74e0eb4fb179aba82df7ceab956b14667e261b"
    end
  end

  def install
    bin.install Dir["hostess-*"].first => "hostess"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hostess --version")
  end
end
