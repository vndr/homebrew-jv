class Jv < Formula
    desc "JV IP Tool"
    homepage "https://github.com/vndr/jv"
    url "https://github.com/vndr/jv/releases/download/v0.1.4/jv_Darwin_x86_64.tar.gz"
    sha256 "a4754f97149bdd5303c6160cbefb72082e4e8955cfdeb6357e0fb6a0f6143014"
  
    def install
      bin.install "jv"
    end
  
    test do
      system "#{bin}/jv", "--version"
    end
  end
  

  class Jv < Formula
    desc "JV Tool"
    homepage "https://github.com/vndr/jv"
    
    if OS.mac?
      if Hardware::CPU.intel?
        url "https://github.com/vndr/jv/releases/download/v0.1.4/jv_Darwin_x86_64.tar.gz"
        sha256 "a4754f97149bdd5303c6160cbefb72082e4e8955cfdeb6357e0fb6a0f6143014"
      elsif Hardware::CPU.arm?
        url "https://github.com/vndr/jv/releases/download/v0.1.4/jv_Darwin_arm64.tar.gz"
        sha256 "a65f52a15c18a7c5ee52de90767d0d3b49738af6f39cc9aa8b74dedb350d7fec"
      end
    elsif OS.linux?
      if Hardware::CPU.intel?
        url "https://github.com/vndr/jv/releases/download/v0.1.4/jv_Linux_x86_64.tar.gz"
        sha256 "dba2b632acaa0e33d0e892777df5dcb579bc7ffd2b767781c6779a9047f3fe8b"
      elsif Hardware::CPU.arm?
        url "https://github.com/vndr/jv/releases/download/v0.1.4/jv_Linux_arm64.tar.gz"
        sha256 "58b91e38f112b1b0b3ac50d293c534a201630cb724319ec1b085a22d5586ddd2"
      end
    end
  
    def install
      bin.install "jv"
    end
  
    test do
      system "#{bin}/jv", "--version"
    end
  end
  
