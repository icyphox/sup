import
  nanoid,
  os,
  osproc,
  strformat,
  parsecfg

try:
  let 
    dict = loadConfig(fmt"{getHomeDir()}.sup.conf")
    host = dict.getSectionValue("", "hostname")
    path = dict.getSectionValue("", "remotepath")
    file = paramStr(1)
    name = generate(size=5)

  var (dir, f, ext) = splitFile(file)
  let cmd = fmt"scp {file} {host}:{path}/{name}{ext}"
  discard execCmd(cmd)
  echo(fmt"done! file is at {host}:{path}/{name}{ext}")

except IOError:
  echo("error: config file not found")
  quit(0)
