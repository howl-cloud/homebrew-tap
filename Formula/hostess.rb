class Hostess < Formula
  desc "Deploy entire stacks with a single command"
  homepage "https://hostess.sh"
  version "0.2.0"
  license :closed

  on_macos do
    on_arm do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.2.0/hostess-darwin-arm64"
      sha256 "876b9f92a49cf373c932c79ef6015c71755500142f0cc332e6981688a5146474"
    end

    on_intel do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.2.0/hostess-darwin-amd64"
      sha256 "3856bb8a5d0d3ef956938ae7cda879117ecec754df6a04c46fbd0014a6e9b546"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.2.0/hostess-linux-arm64"
      sha256 "b27dbb15be16aaf25f075d522916588cd7be33b629079c1867b07966dbde1cdd"
    end

    on_intel do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.2.0/hostess-linux-amd64"
      sha256 "4f62ac6911d932841208ddb37df69e24e0c546ee3db50c3d0286a49eafb9cffd"
    end
  end

  def install
    bin.install Dir["hostess-*"].first => "hostess"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hostess --version")
  end
end
