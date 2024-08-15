class Jv < Formula
  desc "JV IP Tool"
  homepage "https://github.com/vndr/jv"
  url "https://github.com/vndr/jv/releases/download/v0.1.16/jv_Darwin_x86_64.tar.gz"
  sha256 "c59ace196a40801716d93e977ba780bb60fb07d8f961af46580e8318e604904f"
  version "v0.1.16"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/vndr/jv/releases/download/v0.1.16/jv_Darwin_x86_64.tar.gz"
      sha256 "c59ace196a40801716d93e977ba780bb60fb07d8f961af46580e8318e604904f"
    elsif Hardware::CPU.arm?
      url "https://github.com/vndr/jv/releases/download/v0.1.16/jv_Darwin_arm64.tar.gz"
      sha256 "bde07c0cfa14fac88c70de698893a5a20012c51b21b716c34ab22fb03f185af2"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/vndr/jv/releases/download/v0.1.16/jv_Linux_x86_64.tar.gz"
      sha256 "53e7808076eaf40f2ac0944d6a20d33ca92f22f6bb06a0ececc72113b6318f73"
    elsif Hardware::CPU.arm?
      url "https://github.com/vndr/jv/releases/download/v0.1.16/jv_Linux_arm64.tar.gz"
      sha256 "b42c67367cd99e1b26c6615cb83022d10da24e150e61fae5fe6307fdd45a6b69"
    end
  end

  def install
    bin.install "jv"
  end

  test do
    system "#{bin}/jv", "--version"
  end
end
