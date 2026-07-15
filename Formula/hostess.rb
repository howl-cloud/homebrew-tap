class Hostess < Formula
  desc "Deploy entire stacks with a single command"
  homepage "https://hostess.sh"
  version "0.3.0"
  license :closed

  on_macos do
    on_arm do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.3.0/hostess-darwin-arm64"
      sha256 "2fe1aebc51e40cea4bc93841fc5cacbd4c051ccb158ec089f6792b207db1471d"
    end

    on_intel do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.3.0/hostess-darwin-amd64"
      sha256 "5dcb7be6153d082469bb66dc6d2e5716228c433c975793931e99209621817552"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.3.0/hostess-linux-arm64"
      sha256 "cec5c07947f088f0e104a8bb07aca19d712b8c4f8746de24a48bb0fcdfdd63a8"
    end

    on_intel do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.3.0/hostess-linux-amd64"
      sha256 "03cc07701837937fcaedec65a251c3c4dee8f0c4be7730d5176c8a2e81b712b3"
    end
  end

  def install
    bin.install Dir["hostess-*"].first => "hostess"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hostess --version")
  end
end
