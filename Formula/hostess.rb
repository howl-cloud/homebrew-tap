class Hostess < Formula
  desc "Deploy entire stacks with a single command"
  homepage "https://hostess.sh"
  version "0.2.6"
  license :closed

  on_macos do
    on_arm do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.2.6/hostess-darwin-arm64"
      sha256 "fa4f6d57c50a24e54548f77499b8a1b0d2a389abacc76d7ef91795faa001b70f"
    end

    on_intel do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.2.6/hostess-darwin-amd64"
      sha256 "a29d8386f11346f56e359a7f79c08725dd19a8f49a459368b9e5d56c4b1c6bce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.2.6/hostess-linux-arm64"
      sha256 "763e9e372589c03af5c8c24af947ac80770b28a1725cd3e63dedc9deeaecbd69"
    end

    on_intel do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.2.6/hostess-linux-amd64"
      sha256 "80c9438a6439afa76e9e22823009c67ccb8538df224d4954a4fad2fb9b6fbd56"
    end
  end

  def install
    bin.install Dir["hostess-*"].first => "hostess"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hostess --version")
  end
end
