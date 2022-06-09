function Build-MedalTable {
    param
    (
        [Parameter(Mandatory)]
        [array]
        $Medals
    )

    $results = @()
    $table = @{}

    foreach ($p in $medals) {
        $results += $p.podium
    }

    foreach ($r in $results) {

        $pos = $r[0]
        $posint = [convert]::ToInt32($pos, 10)
        $score = (4 - $posint)
        $country = $r.substring(2)

        $table[$country] += $score

    }

    return $table
}
