class GitMobRs < Formula
  desc "CLI tool for including co-authors in commits"
  homepage "https://github.com/jplsek/git-mob-rs"
  url "https://github.com/jplsek/git-mob-rs/releases/download/v0.1.2/git-mob-rs-0.1.2-macos.zip"
  sha256 "ad18fd24eb00331cecff6299b289292d93dba5e1bfa2ac0dd8d348e09da8480d"
  license "MIT"

  conflicts_with "git-duet/tap/git-duet", because: "git-duet also has a solo command"
  conflicts_with "jplsek/tap/git-mob", because: "git-mob also has a solo and mob command"

  def install
    bin.install "git-mob"
    bin.install "git-solo"
    bin.install "git-edit-coauthors"
  end

  test do
    raise "Test not implemented."
  end
end
