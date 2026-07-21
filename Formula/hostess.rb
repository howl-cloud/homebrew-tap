class Hostess < Formula
  desc "Deploy entire stacks with a single command"
  homepage "https://hostess.sh"
  version "0.3.4"
  license :closed

  on_macos do
    on_arm do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.3.4/hostess-darwin-arm64"
      sha256 "ba99613146c337e004892a6662d874c400e9ac6227b6bd847905a45f4f680c33"
    end

    on_intel do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.3.4/hostess-darwin-amd64"
      sha256 "de8988e186e1bf6df4552576229713218ac67a9fe3edbb7775f017194da3f594"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.3.4/hostess-linux-arm64"
      sha256 "53c78cb845cb9edb65bb6393f23a7f67522fc60934f0781b2a9c08338980c245"
    end

    on_intel do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.3.4/hostess-linux-amd64"
      sha256 "e9f69cdda51f66efe7b6d8bb0e783a9ea524ff56d461083f125f773a8b7d73bf"
    end
  end

  def install
    bin.install Dir["hostess-*"].first => "hostess"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hostess --version")
  end
end
