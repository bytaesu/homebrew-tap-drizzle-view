class DrizzleView < Formula
  desc "Unified interface for Drizzle Studio and Drizzle Visualizer"
  homepage "https://github.com/bytaesu/drizzle-view"
  version "0.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bytaesu/drizzle-view/releases/download/v0.0.2/drizzle-view-darwin-x64.tar.gz"
      sha256 "374518e0bb1f3f6ac0a5a78a70dc6e11911e69ca93941ff3f4f60a6876b3f3c6"

      def install
        bin.install "drizzle-view-darwin-amd64" => "drizzle-view"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/bytaesu/drizzle-view/releases/download/v#{version}/drizzle-view-darwin-arm64.tar.gz"
      sha256 "fe427f3a44c198c9a8b71cee62a89fad7413cebc68f26acff82b2738fb76ad45"

      def install
        bin.install "drizzle-view-darwin-arm64" => "drizzle-view"
      end
    end
  end

  test do
    system "#{bin}/drizzle-view", "--version"
  end
end