class Cloudpiler < Formula
  desc "Distributed build speed booster service for Android C/C++"
  homepage "https://www.cloudpiler.com"
  url "https://www.cloudpiler.com/archive/cloudpiler-1.0.0.tar.gz"
  sha256 "47543ac009aa6cbf093d5c1c176f2d6f38c65375f94d492f06ba64535448a053"
  version "1.0.0"
  bottle :unneeded
  def install
        bin.install Dir["*"]
  end
  def caveats
    "
To enable Cloudpiler:
---------------------
cloudpiler-link.sh

If the Android SDK is not installed in the default location call:
ANDROID_HOME=/path/to/Android/sdk cloudpiler-link.sh

To disable Cloudpiler:
----------------------
cloudpiler-unlink.sh

Tip: print again this message:
brew info cloudpiler"
  end
end
