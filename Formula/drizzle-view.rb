class DrizzleView < Formula
  desc "Unified interface for Drizzle Studio and Drizzle Visualizer"
  homepage "https://github.com/bytaesu/drizzle-view"
  version "0.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bytaesu/drizzle-view/releases/download/v#{version}/drizzle-view-darwin-amd64.tar.gz"
      sha256 "**********" # TODO: update

      def install
        bin.install "drizzle-view-darwin-amd64" => "drizzle-view"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/bytaesu/drizzle-view/releases/download/v#{version}/drizzle-view-darwin-arm64.tar.gz"
      sha256 "**********" # TODO: update

      def install
        bin.install "drizzle-view-darwin-arm64" => "drizzle-view"
      end
    end
  end

  test do
    system "#{bin}/drizzle-view", "--version"
  end
end