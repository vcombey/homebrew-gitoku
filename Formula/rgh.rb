class Rgh < Formula
  desc "Gitoku CLI"
  homepage "https://gitoku.live"
  version "0.1.0.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://gitoku.live/rgh/download/darwin-arm64"
      sha256 "204f413f6c4d63323a5e26e0796f0fc60264a691ab9a706d2580c6120989a62b"
    else
      odie "rgh does not currently publish a macOS Intel Homebrew artifact."
    end
  end

  on_linux do
    odie "rgh does not currently publish a Linux Homebrew artifact."
  end

  def install
    libexec.install "rgh"
    libexec.install "rgh.dylibs" if Dir.exist?("rgh.dylibs")

    (bin/"rgh").write <<~SH
      #!/bin/sh
      exec "#{libexec}/rgh" "$@"
    SH
    chmod 0755, bin/"rgh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rgh version")
  end
end
