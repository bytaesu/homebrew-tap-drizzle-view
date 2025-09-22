class DrizzleView < Formula
  desc "Unified interface for Drizzle Studio and Drizzle Visualizer"
  homepage "https://github.com/bytaesu/drizzle-view"
  version "0.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bytaesu/drizzle-view/releases/download/v#{version}/drizzle-view-darwin-x64.tar.gz"
      sha256 "82c8eb6b09966c844537a33d04ccfd5b22187cb6f27ce00c053fb113ba86b784"

      def install
        bin.install "drizzle-view-darwin-x64" => "drizzle-view"
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