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
