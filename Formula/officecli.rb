class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.3/officecli_0.2.3_darwin_arm64.tar.gz"
      sha256 "b5c7cd61f89adc66f84af9925bab8b3cb20974ef1b437e33db80b5b6952c947d"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.3/officecli_0.2.3_darwin_amd64.tar.gz"
      sha256 "c93363b19b9845431c427595f273634bbbde2c3fcbd260cda440fc02c4dd05c9"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
