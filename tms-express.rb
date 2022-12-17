class TmsExpress < Formula
  desc "LPC speech encoder for the TMS5220"
  homepage "https://github.com/tornupnegatives/TMS-Express"
  url "https://github.com/tornupnegatives/TMS-Express/archive/refs/tags/v1.1.2.tar.gz"
  sha256 "915a269bf94e5e54448a01d840d83f00a6849865b5d8c3d79806c3d769b0ce4c"
  license "GPL-3.0"

  depends_on "cmake" => :build
  depends_on "pkg-config"
  depends_on "libsamplerate"
  depends_on "libsndfile"

  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "make", "-C", "build"
    bin.install "build/tmsexpress"
  end
end
