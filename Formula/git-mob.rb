require "language/node"

class GitMob < Formula
  desc "CLI tool for including co-authors in commits"
  homepage "https://github.com/findmypast-oss/git-mob#readme"
  url "https://registry.npmjs.org/git-mob/-/git-mob-2.5.0.tgz"
  sha256 "a5e4dda37afae4d320d71d1a53b30954b6564f0cf8cc0d9b4dd44000281751ac"

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
