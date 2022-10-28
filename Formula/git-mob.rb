require "language/node"

class GitMob < Formula
  desc "CLI tool for including co-authors in commits"
  homepage "https://github.com/findmypast-oss/git-mob#readme"
  url "https://registry.npmjs.org/git-mob/-/git-mob-2.3.1.tgz"
  sha256 "0984415d23f0f55c74803ee6902cb4f57af7a9b5a806eda10e6068a6536ebb2c"

  depends_on "node"

  conflicts_with "git-duet/tap/git-duet", because: "git-duet also has a solo command"
  conflicts_with "jplsek/tap/git-mob-rs", because: "git-mob-rs also has a solo and mob command"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end
