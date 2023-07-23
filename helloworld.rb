# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Helloworld < Formula
  desc "Danny's test helloworld"
  homepage ""
  url "https://github.com/XDanny322/app-helloworld/archive/refs/tags/0.0.1.tar.gz"
  sha256 "758708bc2908c2d62442a62a0e97cc22abc06b1c509e455527bd67dbdf3f5a0f"
  license ""

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    # system "./configure", *std_configure_args, "--disable-silent-rules"
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args

    # prefix.install "dlaitest_homebrew_script"
    bin.install "dlaitest_homebrew_script"

    # bash_completion.install "completions/dlaitest_homebrew_script.bash" => "dlaitest_homebrew_script"
    # zsh_completion.install "completions/dlaitest_homebrew_script.zsh" => "_dlaitest_homebrew_script"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test helloworld`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
