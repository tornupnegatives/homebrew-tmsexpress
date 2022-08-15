class TmsExpress < Formula
  desc "LPC speech encoder for the TMS5220"
  homepage "https://github.com/tornupnegatives/TMS-Express"
  url "https://github.com/tornupnegatives/TMS-Express/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "6a73c4631551ee43cd23881272ca6cff3e3a96964bf61c24d7b75aca61c9aa96"
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
