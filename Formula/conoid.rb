# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Conoid < Formula
  desc "A simple HTTP server that can be used to serve static files. It also provides TCP tunnelling through https://localtunnel.me to bypass a firewall or NAT, enabling local development servers to be exposed to the internet."
  homepage ""
  version "0.0.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/deestarks/conoid/releases/download/v0.0.4/conoid_0.0.4_Darwin_x86_64.tar.gz"
      sha256 "d14d0896b7be4c1a2a781741a6263d8281e8c0bd0548459b9ca68cdb3bd6a288"

      def install
        bin.install "conoid"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/deestarks/conoid/releases/download/v0.0.4/conoid_0.0.4_Darwin_arm64.tar.gz"
      sha256 "abb858ed3c8c14a46830cfba7245522e3abd63bdf1e2a878bd1a371e081b078a"

      def install
        bin.install "conoid"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/deestarks/conoid/releases/download/v0.0.4/conoid_0.0.4_Linux_arm64.tar.gz"
      sha256 "3aed7117a30786fefea066597371be05bcbd5da28f193ec0088b6c3083a99fd9"

      def install
        bin.install "conoid"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/deestarks/conoid/releases/download/v0.0.4/conoid_0.0.4_Linux_x86_64.tar.gz"
      sha256 "fe4bb305a86a182e146d72385b2ca6b25350af4442a658b01f8ddd537601609f"

      def install
        bin.install "conoid"
      end
    end
  end

  plist_options :startup => false

  def plist; <<~EOS
    <?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
  <dict>
    <key>Label</key>
    <string>#{plist_name}</string>
    <key>Program</key>
    <string>#{opt_bin}/conoid</string>
    <key>RunAtLoad</key>
    <true/>
    <key>KeepAlive</key>
    <true/>
  </dict>
</plist>

  EOS
  end
end
