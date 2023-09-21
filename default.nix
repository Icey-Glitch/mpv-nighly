{ lib, buildPackages, stdenv, fetchFromGitHub, ... }:

buildPackages.mpv.overrideAttrs (oldAttrs: {

    version = "mpv-nightly";

    src = fetchFromGitHub {
        owner = "mpv-player";
        repo = "mpv";
    };

    meta = with oldAttrs.meta; {
        description = "My customized mpv";
        license = licenses.gpl3Plus;
    };
})
