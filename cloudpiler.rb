class Cloudpiler < Formula
  desc "Distributed build speed booster service for Android C/C++"
  homepage "https://www.cloudpiler.com"
  url "https://www.cloudpiler.com/archive/cloudpiler-1.0.0.tar.gz"
  sha256 "47543ac009aa6cbf093d5c1c176f2d6f38c65375f94d492f06ba64535448a053"
  version "1.0.0"
  bottle :unneeded
  def install
  	bin.install Dir["*"]
  	system "#{bin}/cloudpiler-link.sh"
  end
end 
