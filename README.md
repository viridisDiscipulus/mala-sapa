
![logo](https://github.com/user-attachments/assets/f9ac9cd5-7a1a-4455-adbd-ed2a1ee997d6)

# Mala Šapa

Aplikacija Mala Šapa osmišljena je kao sustav elektroničke trgovine koji simulira sigurnosne izazove kroz namjerno implementirane ranjivosti.


## Opis

Njena svrha je omogućiti analizu sigurnosnih rizika primjenom OWASP metodologije te korisnicima pružiti priliku za stjecanje praktičnih vještina u području sigurnosti web aplikacija.
Sustav replicira funkcionalnosti modernih web trgovina, ali sadrži sigurnosne propuste temeljene na OWASP Top 10 popisu iz 2013., 2017. i 2021. godine. 
Ti propusti omogućuju istraživanje ranjivosti, procjenu njihova utjecaja te donošenje preporuka za poboljšanje sigurnosti sustava.


## Početak rada

### Ovisnosti

* Za potrebe pokretanja aplikacije potrebno je instalirati Docker i podesiti postavke operativnog sustava.
* Aplikacija je izvorno postavljena (deployana) putem Dockera unutar virtualne mašine u VirtualBox hipervizor aplikaciji, čiji je operativni sustav domaćina Windows 11.

## Tehnologije

* .Net Core 3.1.
* Angular 9
* SQL Server
* Redis
* Nginx


### Instalacija i pokretanje aplikacije

* Aplikaciju je moguće preuzeti putem javnog Docker repozitorija na linku: https://hub.docker.com/search?q=viridisdiscipulus
* Detaljne upute za pokretanje aplikacije i testiranje sigurnosti aplikacije uz primjenu OWASP metodologije možete pronaći u Word dokumentu: 
[testiranja-sigurnosti-web-aplikacije.docx](https://github.com/user-attachments/files/18938342/testiranja-sigurnosti-web-aplikacije.docx)

### Hash datoteke i rezultat skeniranja

    SHA-256:  051fcfeb76554aa4a5fc81b10cd66b764cbc64696063c62470806ad6dcde385d 
    VirusTotal: https://www.virustotal.com/gui/file/051fcfeb76554aa4a5fc81b10cd66b764cbc64696063c62470806ad6dcde385d/details

