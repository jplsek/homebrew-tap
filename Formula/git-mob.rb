require "language/node"

class GitMob < Formula
  desc "CLI tool for including co-authors in commits"
  homepage "https://github.com/findmypast-oss/git-mob#readme"
  url "https://registry.npmjs.org/git-mob/-/git-mob-2.3.2.tgz"
  sha256 "51f81db965cdc9048baa010e14da8dda1d44910770173d0494f420d0c3e74dc7"

  depends_on "node"

  conflicts_with "git-duet/tap/git-duet", because: "git-duet also has a solo command"
  conflicts_with "jplsek/tap/git-mob-rs", because: "git-mob-rs uses the same commands"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end
