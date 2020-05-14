require "language/node"

class GitMob < Formula
  desc "CLI tool for including co-authors in commits"
  homepage "https://github.com/findmypast-oss/git-mob#readme"
  url "https://registry.npmjs.org/git-mob/-/git-mob-1.1.0.tgz"
  sha256 "1cb6f40afddf9a55681dece3b442b442d621c517f0f7e59058c464b0030678bd"

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
