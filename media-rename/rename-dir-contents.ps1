# Full Filename Replacement
$series = "Series - "                                            # UPDATE WITH SERIES NAME
$tag = " - Subseries"                                            # UPDATE WITH SECONDARY NAME IF NECESSARY
$listing = get-childitem

foreach ($episode in $listing)
    {
       $original = [management.automation.wildcardpattern]::escape($episode.pspath)
       $ext = $episode.extension
       $split = $episode.name.split("S").split("E").split(".")   # UPDATE SPLITS TO REFLECT TITLE BREAK POINTS
       $episode = $split[3].tostring("00")                       # CORRECT SPLIT INDEX NUMBER
       $season = $split[4].tostring("00")                        # CORRECT SPLIT INDEX NUMBER
       $catalog = $series+$season+$episode+$tag+$ext             # REMOVE $TAG IF UNUSED
       $catalog
       rename-item -path $original $catalog -whatif              # RUN LOOP WITH THIS LINE COMMENTED OUT TO SEE RESULTING LIST OF NAMES
    }


# Basic Replace Renaming for reference if just need multi-replace of strings
# get-childitem | rename-item -newname { $_.name -replace '\[OZC-EZ8\] ',"" -replace 'R2 - Ep.',"- S02E" -replace ' \[720p\]',"" -replace "\'","" }
