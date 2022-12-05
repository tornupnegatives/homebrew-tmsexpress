class TmsExpress < Formula
  desc "LPC speech encoder for the TMS5220"
  homepage "https://github.com/tornupnegatives/TMS-Express"
  url "https://github.com/tornupnegatives/TMS-Express/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "9a3e4823a0c535c5a2cbb84efd8d57b1909822b80e39ffdb2194e9f680593d21"
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
