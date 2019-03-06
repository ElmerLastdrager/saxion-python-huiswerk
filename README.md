Bij vragen: Elmer Lastdrager <ext0040361@saxion.nl>.

---

# Algemeen

Allereerst wat korte uitleg.
Dit heb ik in de les ook gegeven, maar het kan nooit kwaad om het even te herhalen voor de herkansing.

## Installatie Python
Om Python te installeren, kun je [de video bekijken](https://www.youtube.com/watch?v=ECQkLl9UWSA).
Installeer altijd Python 3, momenteel is 3.7.2 de nieuwste versie. Voor dit vak is elke versie die begint met 3 voldoende.

## Gebruik IDLE
Python start je op via IDLE.
IDLE is een programma waarin je zowel in python kunt programmeren, maar ook je programma kunt uitvoeren.

Wanneer je IDLE opent, krijg je een scherm te zien met daarin wat informatie over Python, en onderin de drie karakters >>>.
Dit is het *uitvoerscherm*: hier komt de uitvoer van je programma te staan.

Om te programmeren, moet je een nieuw programmabestand openen (File - New File).
**Tip**: zet de twee schermen (het uitvoerscherm en je programma) naast elkaar op je beeldscherm.

# Extra uitleg

Iets meer uitleg Python 3: dit is voor een deel overlap met de stof.
*De uitleg op deze pagina's vervangen de reguliere stof **niet**.*

Commentaar in Python begint met een hekje (#).
Alles op dezelfde regel na het hekje is geen code.

Eigenlijk zijn alle onderstaande voorbeelden en uitleg 'legoblokjes'.
Met deze legoblokjes kun je jouw programma maken.
Je kunt alle voorbeelden knippen en plakken, en er dan mee spelen om te kijken wat de uitkomst is.

In het algemeen wordt een Python programma regel voor regel uitgevoerd, van boven naar beneden.
Wanneer het programma geen regels code meer heeft, stopt het.
Je kunt met behulp van *loops* wel teruggaan, bijvoorbeeld *for* of *while*.

## uitvoer
Het eerste programma dat je meestal schrijft bestaat uit een *print* commando.
Print zet alles wat je meegeeft op het uitvoerscherm.

Voorbeelden:

~~~python
# Zet de tekst op het scherm. 
print("Ik kan programmeren!")

# Je kunt ook meerdere argumenten meegeve, gescheiden door een komma.
print("Dit", "werkt", "ook")
print("Ik heb", 2, "dagen weekend")

~~~

Dus: *print* is een commando waar je één of meerdere argumenten aan meegeeft.

Vraag: waarom gebruik je print?

## variabelen
Soms voer je berekingen uit. Dan kan het handig zijn om het resultaat, of een tussenresultaat, op te slaan in een *variabele*.
De namen van variabelen zijn hoofdlettergevoelig.

***Tip***: hou je variabelenamen simpel. Geen gekke tekens gebruiken.

Voorbeelden:

~~~python
# de naam van deze variabele is "aantalstudenten" en de waarde 10.
aantalstudenten = 10

# overschrijven van dezelfde variabele
aantalstudenten = 30

# aanmaken nieuwe variabele
treinen = 100

~~~

## Rekenen
Je kunt ook rekenen met Python. Zie hiervoor ook de slides.

~~~python
# optellen
aantal = 2 + 3

# aftrekken
aantal = 8 - 3
aantal = 100 - 30 - 20

# vermenigvuldigen
aantal = 10 * 20

# delen
# uitkomst = 25
aantal = 50 / 2

# uitkomst = 12.5
aantal = 50 / 4

# delen met afronden naar beneden, uitkomst = 12
aantal = 50 // 4

# Iets ingewikkelder
aantal = 50 * (2 + 3)

~~~

## invoer
Soms wil je een gebruiker om invoer vragen.
Dat kan, gelukkig.
Hiervoor gebruik je het commando *input*, waarmee de gebruiker om een invoer gevraagd wordt.
Dit is alleen nuttig als je de invoer ook opslaat in een variabele.

Voorbeeld:

~~~python
naam = input("Wat is je naam? ")
print("Jouw naam is", naam)
~~~

Soms wil je een getal invoeren. Dat kan ook, maar dan moet je eerst de functie *int* gebruiken, om de variabele in een getal om te zetten.

Voorbeeld:

~~~python
# vraag de leeftijd
leeftijd = input("Wat is je leeftijd? ")

# Maak van de leeftijd een getal
leeftijd = int(leeftijd)

# Zet resultaat op het scherm
print("Jouw leeftijd is", leeftijd)
~~~

## if
Met een if-statement kun je code uitvoeren wanneer iets waar of juist onwaar is.
Je begint een if met het woord *if* en daarna wat je wilt vergelijken.
Aan het einde van de regel moet een dubbele punt staan.
De regels code die onder de if vallen, moeten met een TAB naar rechts gezet worden.

Voorbeeld: we willen weten of iemand bier mag drinken.

~~~python
leeftijd = 17

if leeftijd >= 18:
    print("Je mag bier drinken als je", leeftijd, "bent")

print("einde programma")
~~~
 
Voorbeeld: wat komt op het uitvoerscherm te staan? En waarom?

~~~python
leeftijd = 20

if leeftijd == 18:
    print("Je bent precies 18!")
    print("Enschede")
print("Hengelo")
~~~

Een andere mogelijkheid is alternatieven aan te bieden. Misschien is iemand niet precies 18, maar is iets anders aan de hand.
Hiervoor heb je twee andere statements: *elif* en *else*.
*elif* kun je gebruiken om te testen op een andere conditie 
*else* gebruik je om alle andere gevallen af te vangen.

Hierover een voorbeeldje. Test deze ook zelf, en verander de leeftijden.

~~~python
leeftijd = int(input("Geef leeftijd: "))

if leeftijd < 18:
    print("Geen bier voor jou, je bent minderjarig")
elif leeftijd == 18:
    print("Dit is het eerste jaar dat je bier mag drinken")
else:
    print("Je mag al", leeftijd-18, "jaar bier drinken")
~~~

Voorbeeld: testen of een variabele negatief is

~~~python
x = 4
if (x >= 0):
    print("My variable x is a non-negative number.")
if (x < 0):
    print("My variable x is a negative number.")
    
print("")
print("Now lets see a smarter way to do if-statements, after changing the value of our variable.")
x = -2

if (x >= 0):
    print("My variable x is a non-negative number.")
else:
    print("My variable x is a negative number.")
~~~

## lijsten
Soms moet je (heel) veel getallen of andere waarden opslaan.
Je kunt natuurlijk verschillende variabelen aanmaken (persoon1, persoon2, persoon3, etc), maar dan beperkt je de invoer.
En programmeren is juist handig, omdat je veel minder beperkingen hebt, dan als je iets los uitrekent.

Om dit op te lossen, kun je lijsten gebruiken. Een lijst (of *list*) bevat 0 of meer elementen.

Voorbeeld:

~~~python
# We maken een variabele met een lege lijst
legelijst = []

# We kunnen een lijst ook alvast vullen, tijdens het aanmaken
vollelijst = [1,2,3,4,5,6,7,8,9]
~~~

De eerste lijst (*legelijst*) bevat 0 elementen: hij is namelijk leeg.
De tweede lijst (*vollelijst*) bevat 9 elementen.

Misschien wil je de lijst op een later moment vullen.Of juist elementen verwijderen.
Dat kan! Zie onderstaand voorbeeld.

Voorbeeld:

~~~python
# Maak een lege lijst
fruit = []

# Vul de lijst
fruit.append("appel")
fruit.append("banaan")
fruit.append("citroen")

# Zet de lijst op de uitvoer
print("Een lijst met fruit:", fruit)

# Verwijder de banaan
fruit.remove("banaan")

# Zet de lijst nog een keer op de uitvoer
print("Na verwijderen hebben we over:", fruit)
~~~

Nu kun je nog twee dingen met lijsten doen: specifieke elementen bekijken en in een loop alle elementen bekijken.
Die laatste behandelen we in de for-loop hieronder.

Om specifieke elementen te bekijken, gebruik je de haakjes notatie, zie het voorbeeld.
Denk er hierbij aan dat je bij een lijst (wat vaak het geval is bij computers) altijd bij 0 begint.
Dus het eerste element is element 0, het tweede element is element 1, enzovoorts.

Voorbeeld:

~~~python
# Maak nieuwe lijst
autos = ["bmw", "audi", "volkswagen", "seat"]

# Zet bmw op de uitvoer
print("Element 0 is", autos[0])

# print element 1 op de uitvoer
dikkebak = autos[1]
print("Wil jij een", dikkebak, "rijden?")
~~~

Als je een element buiten de serie opvraag, bijvoorbeeld `autos[100]`, dan krijg je een foutmelding.

## while
De *while* is een loop.
Vertaald staat er "zolang".
Dat wil zeggen, het programma blijft stukjes code uitvoeren, totdat de conditie van de while, onwaar is (*false* in het Engels).
Andersom: je voert code uit zolang de conditie waar is.
Dit is vooral handig als je iets meerdere keren wilt doen, of als je met verschillende variabelen werkt.

Voorbeeld:

~~~python
# We gebruiken counter als teller: we beginnen bij 1
counter = 0
while counter < 5:
    print("De variabele counter is", counter,"en dat is kleiner dan 5")
    counter = counter + 1
~~~

Vraag: waarom is het belangrijk om de counter op te hogen? Wat gebeurt er als we de regel `counter = counter + 1` niet hebben?

## for
Naast de while, hebben we ook een for loop.
Deze werkt net iets anders, waardoor hij vaak handiger is om met lijsten te werken.
In de while loop moesten we een aparte *counter* aanmaken.
Bij de for, zit dit in de conditie ingebakken.

Voorbeeld for 1:

~~~python
# we gaan tot 5 tellen, met variabele i
# variabele i wordt automatisch aangemaakt door de for loop
for i in range(1,6):
    print(i)

# Je kunt op deze manier ook door een lijst gaan:
lijst = ["a","b","c","d"]
# even kijken hoe lang de lijst is, hiervoor gebruiken we de functie len.
aantal = len(lijst)

for index in range(0, aantal):
    print(lijst[index])
~~~

Kijk goed wat range doet, de functie heeft twee parameters: de eerste is het begin getal, de tweede is "een getal te ver van waar je wilt zijn".

Vraag: waarom werkt de code met `range(0, aantal)`?

Je kunt nog makkelijker door een lijst gaan (aanbevolen manier voor lijsten):

~~~python
lijst = ["a","b","c","d"]
for letter in lijst:
    print(letter)
~~~

# Opgaven
Ga naar [de pagina met opgaven](opgaven.html) om zelf te oefenen
