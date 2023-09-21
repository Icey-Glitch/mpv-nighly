{ lib, buildPackages, fetchurl, stdenv }:

buildPackages.mpv.overrideAttrs (oldAttrs: {

    version = old.version + "-nightly";

    src = pkgs.fetchFromGitHub {
        owner = "mpv-player";
        repo = "mpv";
        rev = ""; # can be commit hash/tag name
        hash = "";
    };

    meta = with oldAttrs.meta; {
        description = "My customized mpv";
        license = licenses.gpl3Plus;
    };
})
