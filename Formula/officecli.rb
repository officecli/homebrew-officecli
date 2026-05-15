class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.62"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.62/officecli_0.2.62_darwin_arm64.tar.gz"
      sha256 "a4976d241032dab458fc747346dc7e3c386e4cbedbf597a5b56e02abbf61f1de"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.62/officecli_0.2.62_darwin_amd64.tar.gz"
      sha256 "e71f44cc916484d5ee7a90a4282429bd0b2543a4ebcbf5f6e9bd76c71a128bf8"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
