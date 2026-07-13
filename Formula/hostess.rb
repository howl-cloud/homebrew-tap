class Hostess < Formula
  desc "Deploy entire stacks with a single command"
  homepage "https://hostess.sh"
  version "0.2.7"
  license :closed

  on_macos do
    on_arm do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.2.7/hostess-darwin-arm64"
      sha256 "546f673a9347df4500935ffd73c1ca7ef2043f5cc6ac3dd61b93042f8f18220a"
    end

    on_intel do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.2.7/hostess-darwin-amd64"
      sha256 "02dcc7cd3c58601bccecc56f06124d5558c45310fc4c2729c96a7590580a73db"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.2.7/hostess-linux-arm64"
      sha256 "8f7129d22a4905c2b1afba3977eed690bdff744a12128120d432ab9016468a63"
    end

    on_intel do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.2.7/hostess-linux-amd64"
      sha256 "95ebfbbfb1082787688f35b13dc2aada441ec941ba625da5eb2a2c3598b29b57"
    end
  end

  def install
    bin.install Dir["hostess-*"].first => "hostess"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hostess --version")
  end
end
