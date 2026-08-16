class Hostess < Formula
  desc "Deploy entire stacks with a single command"
  homepage "https://hostess.sh"
  version "0.5.0"
  license :closed

  on_macos do
    on_arm do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.5.0/hostess-darwin-arm64"
      sha256 "4ac943d133f93da33b4060287ea22630e2cae53690a5f45949d296462bd8c612"
    end

    on_intel do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.5.0/hostess-darwin-amd64"
      sha256 "8e4798227de9604d2c0f23455f2760da3aebbde9ea1e876790fec9ea8e269e6b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.5.0/hostess-linux-arm64"
      sha256 "2ec249c3dc9650dfd29fce4d7500d4db4b4119671845635e1af0dc46d28cb7ab"
    end

    on_intel do
      url "https://github.com/howl-cloud/hostess-cli/releases/download/v0.5.0/hostess-linux-amd64"
      sha256 "7c604917b92da8b5ca3987b26698d57b48b38fe22d427849715b6331f33ad6d5"
    end
  end

  def install
    bin.install Dir["hostess-*"].first => "hostess"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hostess --version")
  end
end
