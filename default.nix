{ lib, buildPackages, fetchurl, stdenv }:

buildPackages.mpv.overrideAttrs (oldAttrs: {

    version = "mpv-nightly";

    src = pkgs.fetchFromGitHub {
        owner = "mpv-player";
        repo = "mpv";
    };

    meta = with oldAttrs.meta; {
        description = "My customized mpv";
        license = licenses.gpl3Plus;
    };
})
