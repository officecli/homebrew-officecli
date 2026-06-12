class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.117"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.117/officecli_0.2.117_darwin_arm64.tar.gz"
      sha256 "4813030a0609a3bd2fbfdeaf690c3a306c9821a618b6d9b817b118439e1c99fa"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.117/officecli_0.2.117_darwin_amd64.tar.gz"
      sha256 "87b00c8782126f2d696ad2e691313f79f3296c908105e18d03368e781566f03c"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
