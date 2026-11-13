class PythonBuildDeps < Formula
  desc "Dependencies for compiling CPython from source"
  homepage "https://github.com/tmmamede/python-build-deps"
  url "https://github.com/tmmamede/python-build-deps/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "b91abb00751866d61c721f7efa446426eb91039873eccdfe6f5cd0bc00d00bf1"

  depends_on "openssl@3"
  depends_on "openssl"
  depends_on "readline"
  depends_on "sqlite3"
  depends_on "xz"
  depends_on "tcl-tk@8"
  depends_on "libb2"
  depends_on "zstd"
  depends_on "zlib"
  depends_on "pkgconfig"

  def install
    (share/"python-build-deps").install "README.md"
  end
end
