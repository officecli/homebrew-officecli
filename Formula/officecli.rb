class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.39"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.39/officecli_0.2.39_darwin_arm64.tar.gz"
      sha256 "166fc8dbd00e386eb54ddbf8efc6506c975c4f255aba55fc8ba4e5b7bd882fcd"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.39/officecli_0.2.39_darwin_amd64.tar.gz"
      sha256 "77bd11717fcf080c7bf46d9be093993f3740aa7c70c755a0fc5ac3e7586b5d6e"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
