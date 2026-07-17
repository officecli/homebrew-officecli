class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.118"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.118/officecli_0.2.118_darwin_arm64.tar.gz"
      sha256 "736130d80b63495e39bfcf729fbf24dab8430ca773f70ecad983d525e0774984"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.118/officecli_0.2.118_darwin_amd64.tar.gz"
      sha256 "d3b4ba4d800dbe1f7e49ebcce18887e128811a2614dfcffe377b47cb69ad0a20"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
