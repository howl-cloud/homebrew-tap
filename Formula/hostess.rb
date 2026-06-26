class Hostess < Formula
  desc "Deploy entire stacks with a single command"
  homepage "https://hostess.sh"
  version "0.2.1"
  license :closed

  on_macos do
    on_arm do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.2.1/hostess-darwin-arm64"
      sha256 "8303faaf4825ff7f8f835dd9b1d8c38ccbd5004bfd29c03655a109aee28dc538"
    end

    on_intel do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.2.1/hostess-darwin-amd64"
      sha256 "1af9cf4c46bef2654bccdaccb3bb67f12b0af1f0933cb153f76e5d3382c4796a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.2.1/hostess-linux-arm64"
      sha256 "3e259c46b6d555424afab3a650e0189cebfa91172a1384f2b6b952c226553383"
    end

    on_intel do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.2.1/hostess-linux-amd64"
      sha256 "e6137a6104672a82043eba711f9bdbca4e0c5269129580196dd520df536239da"
    end
  end

  def install
    bin.install Dir["hostess-*"].first => "hostess"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hostess --version")
  end
end
