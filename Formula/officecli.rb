class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.8/officecli_0.2.8_darwin_arm64.tar.gz"
      sha256 "2db10c28c625adee6a0593cb918ca80109f8c5cac93df73e329bd9725f08a2f9"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.8/officecli_0.2.8_darwin_amd64.tar.gz"
      sha256 "6b3138206a8e190986e736eac4208b09493c7164bfa348bef992f59186b1e43e"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
