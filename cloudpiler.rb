class Cloudpiler < Formula
  desc "Distributed build speed booster service for Android C/C++"
  homepage "https://www.cloudpiler.com"
  url "https://www.cloudpiler.com/archive/cloudpiler-1.0.0.tar.gz"
  sha256 "5c8ed0e682bd74eaf5f039796a4ae5f43adeb69e0b2b9fa74bd5699ff54ff79f"
  version "1.0.0"
  bottle :unneeded
  def install
        bin.install Dir["*"]
  end
  def caveats
    "
To enable Cloudpiler:
---------------------
cloudpiler-link

If the Android SDK is not installed in the default location call:
ANDROID_HOME=/path/to/Android/sdk cloudpiler-link.sh

To disable Cloudpiler:
----------------------
cloudpiler-unlink

Tip: print again this message:
brew info cloudpiler"
  end
end
