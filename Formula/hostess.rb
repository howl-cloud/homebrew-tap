class Hostess < Formula
  desc "Deploy entire stacks with a single command"
  homepage "https://hostess.sh"
  version "0.4.0"
  license :closed

  on_macos do
    on_arm do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.4.0/hostess-darwin-arm64"
      sha256 "4ef80597720fbf1b9d60bb1365be5277f9fec3ec468461ea23252ab64c0fbc82"
    end

    on_intel do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.4.0/hostess-darwin-amd64"
      sha256 "3e75a478354f0646cb6e4e62c114979767c82497d8db0a0dc07fda32193a814a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.4.0/hostess-linux-arm64"
      sha256 "629230828c3a9fb3b63b5af3a5d9ee310580568d8b21e7e77a3440ec86357c07"
    end

    on_intel do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.4.0/hostess-linux-amd64"
      sha256 "618fc169652474018a8650a5dd3f672710f894681c8c38da97c5ec7d850155be"
    end
  end

  def install
    bin.install Dir["hostess-*"].first => "hostess"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hostess --version")
  end
end
