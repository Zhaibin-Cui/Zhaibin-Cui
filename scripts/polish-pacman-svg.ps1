param(
    [Parameter(Mandatory = $true)]
    [string]$Path,

    [Parameter(Mandatory = $false)]
    [ValidateSet("Light", "Dark")]
    [string]$Theme = "Light"
)

$content = Get-Content -LiteralPath $Path -Raw

# Preserve GitHub's contribution levels after Pac-Man passes. Each green level
# becomes a matching gray level; empty cells keep their original background.
$lightPalette = @{
    "#9be9a8" = "#c6cbd1"
    "#40c463" = "#9ca3ab"
    "#30a14e" = "#6e7781"
    "#216e39" = "#424a53"
}

$darkPalette = @{
    "#0e4429" = "#484f58"
    "#006d32" = "#6e7681"
    "#26a641" = "#8c959f"
    "#39d353" = "#b1bac4"
}

$palette = if ($Theme -eq "Dark") { $darkPalette } else { $lightPalette }

$content = [regex]::Replace(
    $content,
    'values="(#[0-9a-fA-F]{6});(?:#ffffff|#0d1117|#ebedf0|#161b22)"',
    {
        param($match)

        $original = $match.Groups[1].Value.ToLowerInvariant()
        if ($palette.ContainsKey($original)) {
            return 'values="' + $original + ';' + $palette[$original] + '"'
        }

        return $match.Value
    }
)

Set-Content -LiteralPath $Path -Value $content -NoNewline
