class Hostess < Formula
  desc "Deploy entire stacks with a single command"
  homepage "https://hostess.sh"
  version "0.3.5"
  license :closed

  on_macos do
    on_arm do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.3.5/hostess-darwin-arm64"
      sha256 "4112f2dd0038756cf1a2d28420616e3ddedcf32ed9a0abfa075875605aea6640"
    end

    on_intel do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.3.5/hostess-darwin-amd64"
      sha256 "fbfa18536ae7206e01129dee3cab42cf6c069fb25983606e09785f458efe544f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.3.5/hostess-linux-arm64"
      sha256 "80bc98960f1c5bc1f97788eb26a56be314a61eaebddbd135fca32ccf508307fc"
    end

    on_intel do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.3.5/hostess-linux-amd64"
      sha256 "8c2580265a0fbe6719bb5d29b6ecdbeb72fc409d01a03090db58ad5fbed3d581"
    end
  end

  def install
    bin.install Dir["hostess-*"].first => "hostess"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hostess --version")
  end
end
