Function Get-AllDnDMag {
    Param(
        [String]$Location="C:\Mags\Dragon"
    )
    1..250 | ForEach-Object { $num = $PSItem.ToString().PadLeft(3,'0'); Invoke-WebRequest -Uri ('https://annarchive.com/files/Drmg{0}.pdf' -f $num) -OutFile "$Location\Drmg$num.pdf" }
    251..385 | ForEach-Object { $num = $PSItem.ToString().padleft(3,'0'); Invoke-WebRequest -Uri ('https://archive.org/download/DragonMagazine260_201801/DragonMagazine{0}.pdf' -f $num ) -OutFile "C:\Mags\Dragon\Drmg$num.pdf" -Verbose}
    386..430 | ForEach-Object { $num = $PSItem.ToString().padleft(3,'0'); Invoke-WebRequest -Uri ('https://archive.org/download/DragonMagazine260_201801/Dragon%20Magazine%20{0}.pdf' -f $num ) -OutFile "C:\Mags\Dragon\Drmg$num.pdf" -Verbose}
    1..221 | ForEach-Object { $num = $PSItem.ToString().padleft(3,'0'); Invoke-WebRequest -Uri ('https://archive.org/download/Dungeon_Magazine_{0}/Dungeon_Magazine_{0}.pdf' -f $num ) -OutFile "C:\Mags\Dungeon\Dngnmg$num.pdf" -Verbose}
}