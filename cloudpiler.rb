class Cloudpiler < Formula
  desc "Distributed build speed booster service for Android C/C++"
  homepage "https://www.cloudpiler.com"
  url "https://www.cloudpiler.com/archive/cloudpiler-1.0.1.tar.gz"
  sha256 "cf167009186c6e97777cac3dfe24a1ec4f5b7d2e2bf0b34f4fa840d743187f7a"
  version "1.0.1"
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
