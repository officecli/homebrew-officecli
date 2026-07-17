class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.119"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.119/officecli_0.2.119_darwin_arm64.tar.gz"
      sha256 "8089949756f661baea016bab476040273be284e5c528d44db453943bd99b1fd3"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.119/officecli_0.2.119_darwin_amd64.tar.gz"
      sha256 "fa24b7da88a74f9575fbe0092b7cd77eac48388a9c1048c2f322aaa7fd515498"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
