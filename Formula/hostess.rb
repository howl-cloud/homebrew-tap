class Hostess < Formula
  desc "Deploy entire stacks with a single command"
  homepage "https://hostess.sh"
  version "0.2.3"
  license :closed

  on_macos do
    on_arm do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.2.3/hostess-darwin-arm64"
      sha256 "d2517bfb7c67e264fa4513a7139c4124398c70b51e87bbaddecc548816ee8986"
    end

    on_intel do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.2.3/hostess-darwin-amd64"
      sha256 "3a1886f24021af941932c8b339414ac50adb6fda3e653495bff52a6dad5a7b0d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.2.3/hostess-linux-arm64"
      sha256 "179c0f980bdabeb091a04e7bc6c44b49d5d2ea407b1cd33140f5fcf3194500c1"
    end

    on_intel do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.2.3/hostess-linux-amd64"
      sha256 "a90b72688117e5cae6c6806dcf5ce3923cf11df0edecd0e6f12df40f050437e0"
    end
  end

  def install
    bin.install Dir["hostess-*"].first => "hostess"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hostess --version")
  end
end
