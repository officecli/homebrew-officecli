class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.35"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.35/officecli_0.2.35_darwin_arm64.tar.gz"
      sha256 "5b93ae849bb369b9fd4cb46bc76925981a731327dbea1463f885dab3d36ab849"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.35/officecli_0.2.35_darwin_amd64.tar.gz"
      sha256 "93c8afb9d9047abba525c7ac442c1c4553a789c81dc7a06fce5a185792a932d2"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
