class Cloudpiler < Formula
  desc "Distributed build speed booster service for Android C/C++"
  homepage "https://www.cloudpiler.com"
  url "https://www.cloudpiler.com/archive/cloudpiler-1.0.0.tar.gz"
  sha256 "160c6c0b5ddc78044f825abc394b182d1df5cf0d85543a239e0f229176ea483c"
  version "1.0.0"
  bottle :unneeded
  def install
  	bin.install Dir["*"]
  	system "cloudpiler-link.sh"
  end
end 