class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.29"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.29/officecli_0.2.29_darwin_arm64.tar.gz"
      sha256 "8aee7fda2d50ea3d9f92169273385fb8b45b1a1ece86e0a6340c17a9b7dcea6d"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.29/officecli_0.2.29_darwin_amd64.tar.gz"
      sha256 "671e712434e3821a5a2c325d8777b3be6c2d356fc4bb3fa4e5ade13459de5b36"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
