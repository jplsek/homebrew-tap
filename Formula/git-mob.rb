require "language/node"

class GitMob < Formula
  desc "CLI tool for including co-authors in commits"
  homepage "https://github.com/findmypast-oss/git-mob#readme"
  url "https://registry.npmjs.org/git-mob/-/git-mob-2.0.0.tgz"
  sha256 "72bfb1538321c24e2f3be4fc78d2e3f1402722aa4434d3f03f2d2aada9327531"

  depends_on "node"

  conflicts_with "git-duet/tap/git-duet", :because => "git-duet also has a solo command"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end
