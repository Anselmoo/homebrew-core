# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Lunarvim < Formula
  desc "An IDE layer for Neovim with sane defaults. Completely free and community driven."
  homepage "https://www.lunarvim.org"
  url "https://github.com/LunarVim/LunarVim/archive/refs/tags/1.1.3.tar.gz"
  sha256 "0623c88a877e94b33ef656cac80ac72427ee6643b512924b3c2be955a4152620"
  license "GPL-3.0"
  head "https://github.com/LunarVim/LunarVim.git", branch: "rolling"

  # depends_on "make" => :build
  depends_on "neovim"
  depends_on "node"
  depends_on "pnpm"
  depends_on "yarn"
  depends_on "npm"
  depends_on "python"
  depends_on "rust"


  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    #system "./configure", *std_configure_args, "--disable-silent-rules"
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "./utils/installer/install.sh", "-y", "-y", "-y"
   end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test LunarVim`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
