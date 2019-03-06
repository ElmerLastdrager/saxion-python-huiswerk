Uitwerkingen
---

Deze uitwerkingen zijn slechts voorbeelden van hoe het kan.
Je eigen oplossing kan net zo goed werken, maar toch anders zijn.
Kijk altijd goed naar de invoer van je programma, en of de uitvoer klopt.

Als je twijfelt of je programma goed is, kijk dan of hij bij dezelfde invoer ook dezelfde uitvoer geeft als onderstaande uitwerkingen.

# Uitwerkingen
## Opgave 1

~~~python
# Invoer
naam = input("Naam? ")
leeftijd = int(input("Leeftijd? "))

# Zet op scherm
print("Hallo, jij bent", naam, "en je bent", leeftijd, "jaar oud")

if leeftijd < 0:
    print("Je kan niet jonger dan 0 zijn")
elif leeftijd > 100:
    print("Ouder dan 100? Als je zo oud bent, programmeer je niet meer!")
elif leeftijd < 18:
    print("Je bent minderjarig!")
~~~



## Opgave 2

Hierbij een voorbeeld van de juiste oplossing.
Punten om op te letten:
1. je kunt het ook met een for-loop doen, en dan een range. Maar... dan moet je wel zorgen dat bij foute invoer er alsnog 10 getallen ingevoerd worden.
2. in deze oplossing heb ik een "or" gebruikt in de if-statement. Hiermee kan ik op twee condities testen. Als je een if en een elif gebruikt (de eerste voor `<0` en de tweede voor `>100`), is dat natuurlijk ook goed.
3. je mag ook sum() gebruiken om de som te berekenen.

~~~python
getallen = []
while len(getallen) < 10:
    poging = int(input("Geef een getal (0-100): "))
    if poging < 0 or poging > 100:
        print("Ongeldig getal, moet tussen de 0 en 100 zijn!")
    else:
        getallen.append(poging)
print("De getallen zijn: ", getallen)

# Berekenen gemiddelde: som / aantal
som = 0
for i in getallen:
    som = som + i
print("Gemiddelde: ", som/len(getallen))

~~~

## Opgave 3

### Deel A

Eerst een oplossing van deel A.

~~~python

aantal = int(input("Hoe groot is de groep? "))

if aantal <= 0:
    print("Dit is geen groep!")
else:
    # De groepsgrootte klopt, ga verder
    leeftijden = []

    # Doe een while-loop om de leeftijden te verzamelen
    while len(leeftijden) < aantal:
        poging = int(input("Geef leeftijd: "))
        if poging < 0:
            print("Ongeldige leeftijd")
        else:
            leeftijden.append(poging)

    # Controleer of er een minderjarige is
    # Ik werk hier met een boolean (waar/onwaar).
    # Als iemand minderjarig is, zet ik de boolean op 'true'
    minderjarig = False
    for leeftijd in leeftijden:
        if leeftijd < 18:
            minderjarig = True

    # Wanneer minderjarig nog steeds false is, mogen we verder
    if minderjarig:
        print("Er is een minderjarige in de groep. Je mag geen alcohol kopen!")
    else:
        print("Geen minderjarigen, ze mogen betalen")
~~~

### Deel B

We gaan verder met de code uit deel A, het eerste deel is dus compleet gekopieerd van deel A.

~~~python

aantal = int(input("Hoe groot is de groep? "))

if aantal <= 0:
    print("Dit is geen groep!")
else:
    # De groepsgrootte klopt, ga verder
    leeftijden = []

    # Doe een while-loop om de leeftijden te verzamelen
    while len(leeftijden) < aantal:
        poging = int(input("Geef leeftijd: "))
        if poging < 0:
            print("Ongeldige leeftijd")
        else:
            leeftijden.append(poging)

    # Controleer of er een minderjarige is
    # Ik werk hier met een boolean (waar/onwaar).
    # Als iemand minderjarig is, zet ik de boolean op 'True'
    minderjarig = False
    for leeftijd in leeftijden:
        if leeftijd < 18:
            minderjarig = True

    # Wanneer minderjarig nog steeds false is, mogen we verder
    if minderjarig:
        print("Er is een minderjarige in de groep. Je mag geen alcohol kopen!")
    else:
        print("Geen minderjarigen, ze mogen betalen")
        
        # ----------
        # We gaan hier verder met B: iedereen is namelijk meerderjarig
        kratjes = int(input("Hoeveel kratjes bier? "))
        if kratjes <= 0:
            print("0 of minder kratjes? Dat is vreemd...")
        else:
            # groter dan 0
            # Zet de prijs op het scherm (15 euro per kratje)
            print("De", kratjes, "kratjes bier kosten samen", kratjes*15, "euro")

            # Bereken totaal aantal flesjes bier
            flesjes = kratjes * 24
            
            # in de variabele 'aantal' staat het aantal personen
            # we gebruiken // om te delen en naar beneden af te ronden
            perpersoon = flesjes // aantal
            print("Per persoon hebben ze", perpersoon, "flesjes bier gekocht")
            blijftover = flesjes - aantal * perpersoon
            print("Als iedereen evenveel drink, blijven er", blijftover, "flesjes bier over")
~~~
