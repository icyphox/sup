import
  nanoid,
  os,
  osproc,
  strformat,
  parsecfg

var file = ""

try:
  file = paramStr(1)
except IndexError:
  echo("error: no file specified")
  quit(0)

try:
  let 
    dict = loadConfig(fmt"{getHomeDir()}.sup.conf")
    host = dict.getSectionValue("", "hostname")
    path = dict.getSectionValue("", "remotepath")
    url  = dict.getSectionValue("", "url")
    name = generate(size=5)
  var (dir, f, ext) = splitFile(file)
  let cmd = fmt"scp {file} {host}:{path}/{name}{ext}"
  discard execCmd(cmd)
  discard execCmd(fmt"echo {url}/{name}{ext} | xclip -selection clipboard")
  echo(fmt"done! file is at {url}/{name}{ext} [copied to clipboard]")
except IOError:
  echo("error: config file not found")
  quit(0)
except IndexError:
  echo("error: config file has missing field(s)")
