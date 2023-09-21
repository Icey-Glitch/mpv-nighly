{config, lib, pkg-config ...}:
{
    pkgs.mpv.overrideAttrs (old: {
        version = old.version + "-nightly";

        src = pkgs.fetchFromGitHub {
            owner = "mpv-player";
            repo = "mpv";
        };
    })    
}