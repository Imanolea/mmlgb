@echo off
REM Ensamblado de la ROM de Game Boy en base al fichero principal
SET game_name="rom_rgbds"

if exist rom/%game_name%.gb del rom/%game_name%.gb

:begin
set assemble=1
echo assembling...
rgbasm -o%1.obj driver/%1.asm
if errorlevel 1 goto end
echo linking...
rgblink -orom/%game_name%.gb %1.obj
if errorlevel 1 goto end
echo fixing...
rgbfix -p0 -v rom/%game_name%.gb
del %1.obj

:end