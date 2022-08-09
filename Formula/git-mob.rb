require "language/node"

class GitMob < Formula
  desc "CLI tool for including co-authors in commits"
  homepage "https://github.com/findmypast-oss/git-mob#readme"
  url "https://registry.npmjs.org/git-mob/-/git-mob-2.2.0.tgz"
  sha256 "45965b2cb2c4446903ef7883a86bcdc88d613c2744b3ea48d81d567f0d8af3d7"

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
