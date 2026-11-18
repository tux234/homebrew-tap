class ContourMcp < Formula
  desc "Read-only MCP server exposing Contour to AI agents"
  homepage "https://github.com/macadmins/contour"
  version "0.5.1-beta.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/macadmins/contour/releases/download/v0.5.1-beta.1/contour-mcp-0.5.1-beta.1-macos-arm64.zip"
      sha256 "31c43f002210cb395a62c8238385d237237649677177e73333d700c3f5bac77e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/macadmins/contour/releases/download/v0.5.1-beta.1/contour-mcp-0.5.1-beta.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1ed5511861bb282dbd2be0b8ed4c1bed59714ff0ce68fee2d9ce58481b91ff92"
    end
    on_intel do
      url "https://github.com/macadmins/contour/releases/download/v0.5.1-beta.1/contour-mcp-0.5.1-beta.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "83bbdb450447b66088696075dd18dd0a8168385d57c731f97b8646b4274eb2e5"
    end
  end

  def install
    bin.install "contour-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/contour-mcp --version")
  end
end
