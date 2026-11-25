# Register yra-mods-public, then ask for each third-party mod; "y" adds its original marketplace and installs it.
# Ben AI's token-saving mods are not installed here: no public git repository owned by Ben AI was found.
claude plugin marketplace add $PSScriptRoot
$mods = @(
  @('cache-tax','claude-code-mods','karanb192/claude-code-mods'),
  @('reflect-mod','claude-reflect-marketplace','bayramannakov/claude-reflect'),
  @('filetree','claude-code-filetree','data-goblin/claude-code-filetree'),
  @('savvy-progress','claude-kit','johnnyvizz/claude-kit')
)
foreach ($m in $mods) {
  $a = Read-Host "Install third-party mod '$($m[0])' from $($m[2])? [y/N]"
  if ($a -match '^[Yy]') { claude plugin marketplace add $m[2]; claude plugin install "$($m[0])@$($m[1])" }
}
