{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    history.size = 100000;
    shellAliases = {
        clear = "clear && fastfetch"; #yep, im one of those
        ls = "ls -AFh --color=always";
	rebuild = "sudo nixos-rebuild switch --flake /etc/nixos#$(hostname)";
	frebuild = "sudo nixos-rebuild switch --flake /etc/nixos#$(hostname) --fast";
  cp = "cp -i";
	mv = "mv -i";
	"cd.." = "cd ../";
	"cd..." = "cd ../../";
	"cd...." = "cd ../../../";
	"cd....." = "cd ../../../../";
	"cd......" = "cd../../../../../";
	xzip = "tar --xz -cvf";
	gzip = "tar -zcvf";
	xunzip = "tar --xz -zvf";
  ssh1 = "ssh -p 6942 stelle@192.168.1.216";
  scp1 = "scp -rP 6942 \"./\" stelle@192.168.1.216:/home/stelle/scp/";
	gunzip = "tar --zcvf";
	index = "find ./ -printf \"%P\n\"";
	count = "find ./ | grep -c \".*\"";
	man = "man -P \"nvim +Man!\"";
	#merge = "ffmpeg -i $f -c:v copy -c:a aac -b:a 160k -ac2 -filter_complex amerge=inputs=3 "$(echo $f | cut -f 1 -d '.')_MERGED.mp4"";
      };
    oh-my-zsh = {
      enable = true;
      plugins = [
        "git"
	"thefuck"
      ];
    };
    initExtra = ''
      bindkey '^H' backward-kill-word
      bindkey '^Z' undo
    '';
  };
}
