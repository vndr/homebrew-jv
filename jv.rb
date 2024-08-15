class Jv < Formula
  desc "JV IP Tool"
  homepage "https://github.com/vndr/jv"
  url "https://github.com/vndr/jv/releases/download/v0.1.15/jv_Darwin_x86_64.tar.gz"
  sha256 "9dd2e04556aac3cf35d74bb077bb0c05d25752fc3092ed3702111cd173122dc1"
  version "v0.1.15"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/vndr/jv/releases/download/v0.1.15/jv_Darwin_x86_64.tar.gz"
      sha256 "9dd2e04556aac3cf35d74bb077bb0c05d25752fc3092ed3702111cd173122dc1"
    elsif Hardware::CPU.arm?
      url "https://github.com/vndr/jv/releases/download/v0.1.15/jv_Darwin_arm64.tar.gz"
      sha256 "948502d6a58b1855f9115f7400394175c801a51c8652a017016451fdb09a36b6"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/vndr/jv/releases/download/v0.1.15/jv_Linux_x86_64.tar.gz"
      sha256 "ad1d0aa4f556abac41f1aa55ed9513393167a190876e260ee35d03e5739130f8"
    elsif Hardware::CPU.arm?
      url "https://github.com/vndr/jv/releases/download/v0.1.15/jv_Linux_arm64.tar.gz"
      sha256 "42b5dfa3eec5d57713358735275550d13d08e67a0e8f01f59932a1003ffe27ab"
    end
  end

  def install
    bin.install "jv"
  end

  test do
    system "#{bin}/jv", "--version"
  end
end
