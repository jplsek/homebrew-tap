class GitMobRs < Formula
  desc "CLI tool for including co-authors in commits"
  homepage "https://github.com/jplsek/git-mob-rs"
  url "https://github.com/jplsek/git-mob-rs/releases/download/v0.3.0/git-mob-rs-macos-intel-0.3.0.zip"
  sha256 "e6d48d9aa8ee43af9be0b82507a5e499c64343f84d7f5008f86ed1a9a4980297"
  license "MIT"

  depends_on "openssl"

  conflicts_with "git-duet/tap/git-duet", because: "git-duet also has a solo command"
  conflicts_with "jplsek/tap/git-mob", because: "git-mob uses the same commands"

  def install
    bin.install "git-mob"
    bin.install "git-solo"
    bin.install "git-edit-coauthors"
    bin.install "git-add-coauthor"
    bin.install "git-edit-coauthor"
    bin.install "git-delete-coauthor"
    bin.install "git-mob-print"
  end

  test do
    raise "Test not implemented."
  end
end
