#! /usr/bin/ruby

require "../rumino/rumino"

if ARGV.size != 1 then 
  error( "invalid args. Usage: appify.rb SCRIPTNAME" )
end

NAME=ARGV[0]
APPNAME = NAME.sub( /\.rb$/,"")
APPDIR = "#{APPNAME}.app"


if exist(APPDIR) then
  error( "already exists: #{APPDIR}" )
end

mkdir( APPDIR )

cmd( "mkdir -p #{APPDIR}/Contents/MacOS" )
cmd( "cp #{NAME} #{APPDIR}/Contents/MacOS/execscript" )
cmd( "chmod +x #{APPDIR}/Contents/MacOS/execscript" )
cmd( "cp Info.plist #{APPDIR}/Contents/" )
cmd( "cp ../rumino/rumino.rb #{APPDIR}/Contents/MacOS/" )
cmd( "mkdir #{APPDIR}/Contents/Resources" )
cmd( "cp catimage.icns #{APPDIR}/Contents/Resources/" )


