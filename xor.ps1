
## Run this code in https://tio.run/#powershell

$base64Encoded = "[created_registry_name_in_base64]"
$key = "[enter_the_key_here]"
$obfuscatedBase64 = ""
for ($i = 0; $i -lt $base64Encoded.Length; $i++) {
    $gen = $key[$i % $key.Length]
    $obfuscatedBase64 += [char]($base64Encoded[$i] -bxor $gen)
}
$st = $obfuscatedBase64+":"
Write-Host $st[16..20]