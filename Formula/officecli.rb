class OfficeCli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.1/officecli_0.2.1_darwin_arm64.tar.gz"
      sha256 "7c9b1335b44e8504270d7a18bfe79929126e593a19b174ed61978b5074112bf0"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.1/officecli_0.2.1_darwin_amd64.tar.gz"
      sha256 "01d6680d4248a976f0141e2080a0d08ee0fbaac8b94585764a4aea06319da2b3"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
