# Delete the old database file if it exists
$file = "Z:\projects\scintillate\db\\scintillate.sqlite"

if (Test-Path -Path $file -PathType leaf) {
    "Removing existing database file."
    Remove-Item $file
}

#$relativePath = Get-Item Data\Test.txt | Resolve-Path -Relative

Start-Process -FilePath "sqlite3.exe" -ArgumentList "scintillate.sqlite `"`""
#sqlite3 scintillate.sqlite ""
#sqlite3 scintillate.sqlite < tables.sql
#sqlite3 scintillate.sqlite < data/works-sort-titles.sql
#sqlite3 scintillate.sqlite < data/works-series-a-d.sql
#sqlite3 scintillate.sqlite < data/works-series-e-i.sql
#sqlite3 scintillate.sqlite < data/works-series-j-n.sql
#sqlite3 scintillate.sqlite < data/works-series-o-t.sql
#sqlite3 scintillate.sqlite < data/works-series-u-z.sql
#sqlite3 scintillate.sqlite < data/authors.sql
#sqlite3 scintillate.sqlite < data/works-authors-a-d.sql
#sqlite3 scintillate.sqlite < data/works-authors-e-i.sql
#sqlite3 scintillate.sqlite < data/works-authors-j-n.sql
#sqlite3 scintillate.sqlite < data/works-authors-o-t.sql
#sqlite3 scintillate.sqlite < data/works-authors-u-z.sql
#sqlite3 scintillate.sqlite < data/awards.sql
#sqlite3 scintillate.sqlite < data/works-hugo-winners.sql
#sqlite3 scintillate.sqlite < data/works-hugo-finalists.sql
#sqlite3 scintillate.sqlite < data/works-product-links.sql
#sqlite3 scintillate.sqlite < data/users.sql
#
## Copy the database to the correct directory for the Android project
#Copy-Item "scintillate.sqlite" -Destination "../android/app/src/main/assets/scintillate.db"
#
## Copy the database to the correct directory for the iOS project
#New-Item -Path "../ios/Scintillate/Scintillate/Assets.db" -ItemType Directory
#Copy-Item "scintillate.sqlite" -Destination "../ios/Scintillate/Scintillate/Assets.db/scintillate.db"
