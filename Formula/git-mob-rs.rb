class GitMobRs < Formula
  desc "CLI tool for including co-authors in commits"
  homepage "https://github.com/jplsek/git-mob-rs"
  url "https://github.com/jplsek/git-mob-rs/releases/download/v0.5.0/git-mob-rs-macos-intel-0.5.0.zip"
  sha256 "933353c02215ba42b57683d6c0c99f86a62fb78751ab9b324a5e12771b12a35b"
  license "MIT"

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
