class Cloudpiler < Formula
  desc "Distributed build speed booster service for Android C/C++"
  homepage "https://www.cloudpiler.com"
  url "https://www.cloudpiler.com/archive/cloudpiler-1.0.0.tar.gz"
  sha256 "9b54fca998aacad4483846e2e13b2f1c48d9e92d4c5ae6b015e059daeabbddc4"
  version "1.0.0"
  bottle :unneeded
  def install
        prefix.install "cloudpiler-tunnel.key"
        prefix.install "cloudpiler-known-hosts"
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
