local tabetai = require('tabetai.tabetai')
local source, err = load(
  tabetai(
    io.open('src/gpm.tbt', 'r'):read('*a')
  )
)

if source then
  io.open('build/gpm.lua', 'w'):write(source)
else
  print('Unable to build:\n', '-', err)
end