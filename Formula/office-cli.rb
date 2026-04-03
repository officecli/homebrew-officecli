class OfficeCli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/office-cli-dist"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/office-cli-dist/releases/download/v0.2.1/office-cli_0.2.1_darwin_arm64.tar.gz"
      sha256 "657d8aab69fb0290deb5938a37c6ac001d873e72561523201017232fb3e5f863"
    else
      url "https://github.com/officecli/office-cli-dist/releases/download/v0.2.1/office-cli_0.2.1_darwin_amd64.tar.gz"
      sha256 "058869859543ad73f3349c3dbad60639f75432f89154e6ad474cbe57e03dc3d9"
    end
  end

  def install
    bin.install "office-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/office-cli --version")
  end
end
