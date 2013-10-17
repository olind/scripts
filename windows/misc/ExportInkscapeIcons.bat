@rem Use by running the bat file with the name of the file to export as argument

@rem Then drag in the 256 px icon in gimp, drag in the other sizes ontop of that 
@rem image (into layers) select save as icon & done

@set iconfolder=d:\Desktop\
@set inkscape="C:\Program Files (x86)\Inkscape\inkscape.exe"

@%inkscape% %iconfolder%%1 -w256 -h256 --export-png=%iconfolder%%1".256x256.png"
@%inkscape% %iconfolder%%1 -w128 -h128 --export-png=%iconfolder%%1".128x128.png"
@%inkscape% %iconfolder%%1 -w64  -h64  --export-png=%iconfolder%%1".064x064.png"
@%inkscape% %iconfolder%%1 -w48  -h48  --export-png=%iconfolder%%1".048x048.png"
@%inkscape% %iconfolder%%1 -w32  -h32  --export-png=%iconfolder%%1".032x032.png"
@%inkscape% %iconfolder%%1 -w16  -h16  --export-png=%iconfolder%%1".016x016.png"
@%inkscape% %iconfolder%%1 -w8   -h8   --export-png=%iconfolder%%1".008x008.png"