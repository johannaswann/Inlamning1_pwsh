# Inlämning 1 Scripting & automatisering

# Detta script skapar en mappstruktur med undermappar och en loggfil

function Skapa-Struktur {
    param (
        [string]$Namn
    )
    
try {
    # Skapar en huvudmappen med det namnet användaren angav
    New-Item -Path $Namn -Itemtype Directory -ErrorAction Stop

    # Skapar tre undermappar inuti huvudmappen
    New-Item -Path "$Namn/logs" -ItemType Directory -ErrorAction Stop
    New-Item -Path "$Namn/scripts" -ItemType Directory -ErrorAction Stop
    New-Item -Path "$Namn/temp" -ItemType Directory -ErrorAction Stop

    # Hämtar dagens datum
    $datum = Get-Date -Format "yyyy-mm-dd"

    # Skapar loggfil
    $loggfil = "$Namn/logs/log-$datum.txt"

    # Skriver till loggfilen
    Add-Content -Path $loggfil -Value "Struktur skapad: $(Get-Date)"

    Write-Host "Mappstrukturen har skapats"
}
catch {
    # Visar felmeddelande om mappen redan finns
    Write-Host "Mappen $Namn finns redan"
    
}

}

# Frågar användaren efter namn på den nya mappstrukturen
$Namn = Read-Host "Ange namn på den nya mappstrukturen"

# Kör funktionen
Skapa-Struktur -Namn $Namn