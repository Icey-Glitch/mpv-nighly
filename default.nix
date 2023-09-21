{lib, pkg-config, pkgs ...}:

pkgs.mpv.overrideAttrs (old: {
    version = old.version + "-nightly";

    src = pkgs.fetchFromGitHub {
        owner = "mpv-player";
        repo = "mpv";
    };
})    
