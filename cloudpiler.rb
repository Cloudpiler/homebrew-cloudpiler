class Cloudpiler < Formula
  desc "Distributed build speed booster service for Android C/C++"
  homepage "https://www.cloudpiler.com"
  url "https://www.cloudpiler.com/archive/cloudpiler-1.0.0.tar.gz"
  sha256 "8a02762165dc6a7cc2a7c95061b5d0c6ac207b33fd820d2d0922a95882629cb3"
  version "1.0.0"
  bottle :unneeded
  def install
        bin.install Dir["*"]
  end
  def caveats
    "
To enable Cloudpiler:
---------------------
cloudpiler-enable

If the Android SDK is not installed in the default location call:
ANDROID_NDK=/path/to/Android/sdk/ndk-bundle cloudpiler-enable

To disable Cloudpiler:
----------------------
cloudpiler-disable

Tip: print again this message:
brew info cloudpiler"
  end
end
