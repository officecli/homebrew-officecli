class OfficeCli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.1/officecli_0.2.1_darwin_arm64.tar.gz"
      sha256 "355bd2de1db36be1498e018f19b3eba03e39d9067c3f4500b239bc597d5713fc"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.1/officecli_0.2.1_darwin_amd64.tar.gz"
      sha256 "cc4d3ca57d23d3899a6c804c779aef704f60c249d94ff1b6caf5efcfc3296e81"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
