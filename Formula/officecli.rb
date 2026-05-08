class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.42"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.42/officecli_0.2.42_darwin_arm64.tar.gz"
      sha256 "e6c50f7cbe9ec2f0b884be44a846238f6c8deffb9ea3884a927b1ced78505ae0"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.42/officecli_0.2.42_darwin_amd64.tar.gz"
      sha256 "15603483febb8367980b4a0389b3bf1c56dcf9f2156e9465e9b596d45113cbb4"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
