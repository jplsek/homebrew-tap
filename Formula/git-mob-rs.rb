class GitMobRs < Formula
  desc "CLI tool for including co-authors in commits"
  homepage "https://github.com/jplsek/git-mob-rs"
  url "https://github.com/jplsek/git-mob-rs/releases/download/v0.1.0/git-mob-rs-0.1.0-macos.zip"
  sha256 "9045821fb16a532e77823a7bb31b462a1640f87c115b4abfc62660461250b4b0"
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
