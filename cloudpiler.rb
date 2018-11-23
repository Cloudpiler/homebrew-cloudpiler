class Cloudpiler < Formula
  desc "Distributed build speed booster service for Android C/C++"
  homepage "https://www.cloudpiler.com"
  url "https://www.cloudpiler.com/archive/cloudpiler-1.0.2.tar.gz"
  sha256 "a665c2107b9643839056042d0da0c11454fccd0bab92c2a51fb8e0f1be0eb3b0"
  version "1.0.2"
  bottle :unneeded
  def install
        prefix.install Dir["*"]
        bin.install_symlink "../cloudpiler-enable"
        bin.install_symlink "../cloudpiler-disable"
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
