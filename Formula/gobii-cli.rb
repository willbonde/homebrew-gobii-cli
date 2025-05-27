require "language/node"

class GobiiCli < Formula
  desc "An unofficial command-line interface for interacting with [Gobii](https://gobii.ai) prompts, agents, and tasks. Gobii is a tool for browser automation using AI that provides the ability to perform complex web tasks without an API"
  homepage "https://github.com/willbonde/gobii-cli"
  url "https://registry.npmjs.org/gobii-cli/-/gobii-cli-1.4.0.tgz"
  sha256 "fba554422a911eda9ac02a767b7993d91e978f37b2d3d78c5d715bf64b3edb20"
  license "Apache-2.0"
  version "1.4.0"

  livecheck do
    url :stable
  end

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end
