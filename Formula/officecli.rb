class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.48"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.48/officecli_0.2.48_darwin_arm64.tar.gz"
      sha256 "fde695edca310164e8641c777bd10ec3277659eec32b2e61537f0f8ad72a2ce7"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.48/officecli_0.2.48_darwin_amd64.tar.gz"
      sha256 "c4cf86c22fe9c5f43e6fd13d0882093ff2c210493a136d9c57766b7f50ae3e0e"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
