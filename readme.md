# sup
> An scp based file upload tool

## Installation
`nimble install https://github.com/icyphox/sup`  
or just download the binary from the Releases page.

## Usage
`sup` requires a config file at `$HOME/.sup.conf`. An example config looks like this:

```ini
hostname: 139.59.95.34  # can be the hostname from your ssh config too
remotepath: /var/www/uploads
url: "https://x.ph0x.me"
```

And then just run `sup <file>`.

## Example
```console
$ sup ~/key.asc
key.asc                                            100% 2716   637.3KB/s   00:00    
done! file is at https://x.ph0x.me/eMUif.asc

$ sup ~/.zshrc
.zshrc                                             100% 1157   206.0KB/s   00:00    
done! file is at https://x.ph0x.me/yz9Dl
```

See? That was easy.
