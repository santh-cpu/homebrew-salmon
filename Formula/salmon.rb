class Salmon < Formula
  desc "Offline terminal guitar tuner with real-time mic input"
  homepage "https://github.com/santh-cpu/salmon"
  url "https://github.com/santh-cpu/salmon/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "PASTE_YOUR_SHA256_HERE"
  license "MIT"

  depends_on "cmake" => :build
  depends_on "portaudio"
  depends_on "fftw"

  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    bin.install "build/salmon"
  end

  test do
    system "#{bin}/salmon", "--help"
  end
end
