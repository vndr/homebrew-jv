class Jv < Formula
    desc "JV IP Tool"
    homepage "https://github.com/vndr/jv"
    url "https://github.com/vndr/jv/releases/download/v0.1.8/jv_Darwin_x86_64.tar.gz"
    sha256 "81e7e4b0e3bf3e5305e22aca031206886b81ba967bca14544b44b4e4b8fbfae2"
    version "0.1.8"
  
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
        url "https://github.com/vndr/jv/releases/download/v0.1.8/jv_Darwin_x86_64.tar.gz"
        sha256 "81e7e4b0e3bf3e5305e22aca031206886b81ba967bca14544b44b4e4b8fbfae2"
      elsif Hardware::CPU.arm?
        url "https://github.com/vndr/jv/releases/download/v0.1.8/jv_Darwin_arm64.tar.gz"
        sha256 "73b222f73012d17a513301496d1079fe3225d07ce2b26025e5c5ad16a98a16f0"
      end
    elsif OS.linux?
      if Hardware::CPU.intel?
        url "https://github.com/vndr/jv/releases/download/v0.1.8/jv_Linux_x86_64.tar.gz"
        sha256 "118d33f20699724151e292a444a5c292aeae34b9c39e27349fb6a3b64fdbb73e"
      elsif Hardware::CPU.arm?
        url "https://github.com/vndr/jv/releases/download/v0.1.8/jv_Linux_arm64.tar.gz"
        sha256 "34b8aa3db73a9e4126cd1430286b9c8819a59dfa3662661d8905700f357df136"
      end
    end
  
    def install
      bin.install "jv"
    end
  
    test do
      system "#{bin}/jv", "--version"
    end
  end
  
