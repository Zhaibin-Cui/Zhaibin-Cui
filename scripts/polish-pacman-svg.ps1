param(
    [Parameter(Mandatory = $true)]
    [string]$Path,

    [Parameter(Mandatory = $false)]
    [string]$EatenColor = "#6e7681"
)

$content = Get-Content -LiteralPath $Path -Raw

# The generator animates each contribution cell from its original color to the
# background color after Pac-Man eats it. Preserve the original starting color
# and replace only the final "eaten" color with a neutral gray.
$content = [regex]::Replace(
    $content,
    'values="(#[0-9a-fA-F]{6});(?:#ffffff|#0d1117|#ebedf0|#161b22)"',
    ('values="$1;' + $EatenColor + '"')
)

# Add a subtle outline to contribution cells so the grid remains readable after
# the animation passes over it.
$content = [regex]::Replace(
    $content,
    '(<rect id="c-[^"]+" x="[^"]+" y="[^"]+" width="20" height="20" rx="5" fill="#[0-9a-fA-F]{6}")>',
    '$1 stroke="#30363d" stroke-width="0.5">'
)

Set-Content -LiteralPath $Path -Value $content -NoNewline
