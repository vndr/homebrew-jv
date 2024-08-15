class Jv < Formula
    desc "JV IP Tool"
    homepage "https://github.com/vndr/jv"
    url "https://github.com/vndr/jv/releases/download/v0.1.10/jv_Darwin_x86_64.tar.gz"
    sha256 "fd2dbab7f54d14b4a456aed93f95b0463486284bbd4eb49fd5a4904f74801185"
    version "v0.1.9"
  
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
        url "https://github.com/vndr/jv/releases/download/v0.1.10/jv_Darwin_x86_64.tar.gz"
        sha256 "fd2dbab7f54d14b4a456aed93f95b0463486284bbd4eb49fd5a4904f74801185"
      elsif Hardware::CPU.arm?
        url "https://github.com/vndr/jv/releases/download/v0.1.10/jv_Darwin_arm64.tar.gz"
        sha256 "fd2dbab7f54d14b4a456aed93f95b0463486284bbd4eb49fd5a4904f74801185"
      end
    elsif OS.linux?
      if Hardware::CPU.intel?
        url "https://github.com/vndr/jv/releases/download/v0.1.10/jv_Linux_x86_64.tar.gz"
        sha256 "fd2dbab7f54d14b4a456aed93f95b0463486284bbd4eb49fd5a4904f74801185"
      elsif Hardware::CPU.arm?
        url "https://github.com/vndr/jv/releases/download/v0.1.10/jv_Linux_arm64.tar.gz"
        sha256 "fd2dbab7f54d14b4a456aed93f95b0463486284bbd4eb49fd5a4904f74801185"
      end
    end
  
    def install
      bin.install "jv"
    end
  
    test do
      system "#{bin}/jv", "--version"
    end
  end
  
