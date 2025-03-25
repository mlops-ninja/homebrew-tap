class Bie < Formula
  desc "Zero-trust file transfer tool"
  homepage "https://bie.mlops.ninja/"
  url "https://github.com/virviil/mytool/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "put_the_sha256_here"
  license "MPL-2.0"
  head "https://github.com/mlops-ninja/bie.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(), "./cmd/cli"
  end

  test do
    system "#{bin}/mytool", "--version"
  end
end
