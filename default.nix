{ lib, buildPackages, fetchurl, stdenv }:

buildPackages.gcc.overrideAttrs (oldAttrs: {
  pname = "mygcc";         # Change the package name
  version = "9.3.0";       # Change the package version

  src = fetchurl {
    url = "https://example.com/mygcc-${version}.tar.gz";
    sha256 = "...";        # Replace with the correct hash of your source tarball
  };

  nativeBuildInputs = [ libiconv ];  # Add an extra build input

  meta = with oldAttrs.meta; {
    description = "My customized GCC";
    license = licenses.gpl3Plus;
  };

  # Add any other customizations here
})
