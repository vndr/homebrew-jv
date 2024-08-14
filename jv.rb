class Jv < Formula
    desc "JV IP Tool"
    homepage "https://github.com/vndr/jv"
    url "https://github.com/vndr/jv/releases/download/v0.1.3/jv_Darwin_x86_64.tar.gz"
    sha256 "3434aa1475e796e5010c8fefc2cab3a5cf8820fb48f257d269792764a968bc81"
  
    def install
      bin.install "jv"
    end
  
    test do
      system "#{bin}/jv", "--version"
    end
  end
  