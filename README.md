# Inlämningsuppgift 1 - Strukturverktyg i PowerShell
Skapad av Johanna Swann YH25

## Beskrivning
Detta PowerShell-script skapar automatiskt en ny mappstruktur utifrån ett namn som användaren anger. 

Scriptet skapar följande:
* En huvudmapp
* Undermapparna logs, scripts och temp
* En loggfil med datum och tid

Scriptet använder också en funktion och felhantering med try/catch för att visa ett meddelande om mappen redan finns. 

## Hur man kör scriptet
1. Öppna PowerShell
2. Gå till mappen där scriptet finns
3. Kör scriptet med: .\strukturverktyg.ps1
4. Skriv namn på den nya mappstrukturen

## Reflektion
Jag tycker att det har varit intressant att lära mig hur man kan automatisera skapandet av mappar och filer i PowerShell.

Det som varit lite svårt att förstå och som jag har fått fördjupa mig i är try/catch och hur felhantering fungerar när en mapp redan finns. 
