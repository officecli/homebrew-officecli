class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.103"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.103/officecli_0.2.103_darwin_arm64.tar.gz"
      sha256 "5a078636252b53ca832928fb705cfa33a7dbfc9f9724e2a4388976bef68edcc0"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.103/officecli_0.2.103_darwin_amd64.tar.gz"
      sha256 "09069c68d83204cf8cf5af34b77cf647e319bbea69053ad6a4dafd300f7c61da"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
