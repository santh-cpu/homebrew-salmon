class Salmon < Formula
  desc "Offline terminal guitar tuner with real-time mic input"
  homepage "https://github.com/santh-cpu/salmon"
  url "https://github.com/santh-cpu/salmon/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "849b120159216398451a5b9846ea625e01b1e222316ac0002586554618554bdf"
  license "MIT"

  depends_on "cmake" => :build
  depends_on "portaudio"
  depends_on "fftw"

  def install
    mkdir "build" do
      system "cmake", "..", *std_cmake_args
      system "cmake", "--build", "."
    end
    bin.install "build/salmon"
  end

  test do
    system "#{bin}/salmon", "--help"
  end
end
