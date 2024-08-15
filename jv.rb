class Jv < Formula
    desc "JV IP Tool"
    homepage "https://github.com/vndr/jv"
    url "https://github.com/vndr/jv/releases/download/v0.1.12/jv_Darwin_x86_64.tar.gz"
    sha256 "c908a71214f3e9b51a6c0d618e8e670e9a9b94081e426d25bab735d6c5a2d9f5"
    version "v0.1.12"
  
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
        url "https://github.com/vndr/jv/releases/download/v0.1.12/jv_Darwin_x86_64.tar.gz"
        sha256 "c908a71214f3e9b51a6c0d618e8e670e9a9b94081e426d25bab735d6c5a2d9f5"
      elsif Hardware::CPU.arm?
        url "https://github.com/vndr/jv/releases/download/v0.1.12/jv_Darwin_arm64.tar.gz"
        sha256 "c908a71214f3e9b51a6c0d618e8e670e9a9b94081e426d25bab735d6c5a2d9f5"
      end
    elsif OS.linux?
      if Hardware::CPU.intel?
        url "https://github.com/vndr/jv/releases/download/v0.1.12/jv_Linux_x86_64.tar.gz"
        sha256 "c908a71214f3e9b51a6c0d618e8e670e9a9b94081e426d25bab735d6c5a2d9f5"
      elsif Hardware::CPU.arm?
        url "https://github.com/vndr/jv/releases/download/v0.1.12/jv_Linux_arm64.tar.gz"
        sha256 "c908a71214f3e9b51a6c0d618e8e670e9a9b94081e426d25bab735d6c5a2d9f5"
      end
    end
  
    def install
      bin.install "jv"
    end
  
    test do
      system "#{bin}/jv", "--version"
    end
  end
  
