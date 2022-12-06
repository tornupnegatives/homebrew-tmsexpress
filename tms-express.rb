class TmsExpress < Formula
  desc "LPC speech encoder for the TMS5220"
  homepage "https://github.com/tornupnegatives/TMS-Express"
  url "https://github.com/tornupnegatives/TMS-Express/archive/refs/tags/v1.1.1.tar.gz"
  sha256 "c00e54d1d2148b333fc12d2691f17ed457e54ce39e59b8516ddbc2e1f9597e6d"
  license "GPL-3.0"

  depends_on "cmake" => :build
  depends_on "libsamplerate"
  depends_on "libsndfile"

  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "make", "-C", "build"
    bin.install "build/tmsexpress"
  end
end
