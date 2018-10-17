class Cloudpiler < Formula
  desc "Distributed build speed booster service for Android C/C++"
  homepage "https://www.cloudpiler.com"
  url "https://www.cloudpiler.com/archive/cloudpiler-1.0.0.tar.gz"
  sha256 "09dfb7fcbb9afb756fd0b0aa7ef99ee38f77bc8a60aba8bf9cd216c5736b34d5"
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
