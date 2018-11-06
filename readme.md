# sup
> An scp based file upload tool

## Installation
`nimble install https://github.com/icyphox/sup`  
or just download the binary from the Releases page.

## Usage
`sup` requires a config file at `$HOME/.sup.conf`. An example config looks like this:

```ini
hostname: 139.59.95.34  # can be the hostname from your ssh config too
remotepath: /home/gaben/steam
```

And then just run `sup <file>`.

## Example
```console
$ sup ~/key.asc
key.asc                                            100% 2716   290.4KB/s   00:00    
done! file is at emerald:/home/nerdypepper/icywww/stuff/1~8i~.asc

$ sup ~/.zshrc
.zshrc                                             100% 1157   173.9KB/s   00:00    
done! file is at emerald:/home/nerdypepper/icywww/stuff/k0GgR
```

See? That was easy.
