![Vibe Social](https://raw.githubusercontent.com/vibe-social/documentation/main/images/landscape-1.png)

# Vibe Social

### Računalniške storitve v oblaku, UL FRI, Ljubljana 2023

_Avtorji:_

- _Conradi, Matic — [mc3432@student.uni-lj.si](mailto:mc3432@student.uni-lj.si)_
- _Mokotar, Rok — [rm6551@student.uni-lj.si](mailto:rm6551@student.uni-lj.si)_

**Vibe Social: delite svoje vzdušje**

Vibe Social je ultimativna platforma za izražanje vašega pravega jaza in povezovanje z drugimi prek skupnih vibracij! Verjamemo, da so vsak trenutek, čustvo in izkušnja edinstveni, Vibe Social pa je vaše platno, da jih delite in praznujete.

Ključne funkcije:

- Izrazite se: posnemite in delite svoje trenutno vzdušje s svetom. Ne glede na to, ali se počutite veselo, navdihnjeno ali razmišljate, uporabite Vibe Social, da prenesete svoja čustva na način, ki ga same besede ne morejo zajeti.

- Vibe trenutki: delite živahne trenutke svojega življenja s fotografijami, videoposnetki, izrezki ali pa preprostimi TODO. Naš intuitivni vmesnik vam omogoča, da prilagodite svoje vibe objave s filtri, nalepkami in še več, s čimer zagotovite, da vaša osebnost zasije.

- Povežite se s podobno mislečimi dušami: odkrijte in se povežite z ljudmi, ki odmevajo z vašimi vibracijami. Ustvarite pomembne povezave s posamezniki, ki si delijo podobne interese, izkušnje in čustva.

- Vibes na podlagi lokacije: Raziščite vzdušja z vsega sveta! Povežite se z uporabniki na podlagi lokacije in odkrijte edinstveno vzdušje različnih skupnosti in kultur.

- Vibe izzivi: sodelujte v vznemirljivih vibe izzivih, da sprostite svojo ustvarjalnost. Od dnevnih vzdušij do tematskih izzivov, Vibe Social ponuja različne priložnosti za predstavitev vaše edinstvene perspektive.

- Zasebnost na prvem mestu: Vaša zasebnost je naša prioriteta. Nadzirajte, kdo vidi vaše vibracije s prilagodljivimi nastavitvami zasebnosti. Delite s svetom ali ohranite intimno – izbira je vaša.

Pridružite se družbeni skupnosti Vibe in začnite deliti:

Vibe Social je več kot le družabna platforma; je praznovanje individualnosti, raznolikosti in lepote skupnih izkušenj. Pridružite se nam pri ustvarjanju pozitivnega, poživljajočega prostora, kjer se vzdušje povezuje, prijateljstva cvetijo in vsak trenutek postane skupno praznovanje.

## Opis projekta

Projekt z naslovom Vibe Social je nastal v sklopu predmeta Računalniške storitve v oblaku na Fakulteti za računalništvo in informatiko, Univerza v Ljubljani.

Projekt je sestavljen iz treh glavnih komponent, in sicer iz podatkovnih baz, zalednih mikrostoritev razvite v arhitekturi cloud-native in uporabniškega spletnega vmesnika.

### Podatkovne baze

Projekt uporablja dve različni podatkovni bazi, in sicer [Supabase](https://supabase.com/) za hrambo podatkov, ki jih aplikacija potrebuje za njeno delovanje, in podatkovno skladišče [Azure Synapse Analytics](https://azure.microsoft.com/en-us/products/synapse-analytics) za hrambo velike količine podatkov namenjeni analizi.

Sheme vseh tabel podatkovne baze Supabase so dostopne v repozitoriju [podatkovne baze](https://github.com/vibe-social/database), med tem ko pa je struktura podatkovnega skladišča definirana v repozitoriju [infrastruktura](https://github.com/vibe-social/infrastructure).

### Zaledne mikrostoritve

Projekt je sestavljen iz večih mikrostoritev, pri čemer vsaka služi svojemu namenu. Nekatere mikrostoritve služijo ekstrakciji, zbiranju in transformiranju podatkov namenjenih kasnejši analizi, druge služijo povezavi in upravljanju zunanjih storitev, tretje pa služijo delovanje aplikacije. Vse mikrostoritve delujejo znotraj platforme [Kubernetes](https://kubernetes.io/), ki je nameščena na ponudniku oblačnih storitev [Azure](https://azure.microsoft.com/en-us). 

Za namestitev in konfiguracijo infrastrukture smo uporabili orodje [Terraform](https://www.terraform.io/), ki je dostopno v repozitoriju [infrastruktura](https://github.com/vibe-social/infrastructure).

TODO - omeni cloud native principe - CI/CD, logi, metrike, prikaz vsega (poglej ucilnica)

Mikrostoritve so:

- TODO

### Uporabniški vmesnik

Projekt trenutno vsebuje spletni in mobilni uporabniški vmesnik spisan v knjižnici [Next.js](https://nextjs.org/), ki nam ponuja razvoj spletnih aplikacij, ki temeljijo na Reactu in, in podpirajo upodabljanje na strani strežnika in generiranje statičnega spletnega mesta.

## Arhitektura

TODO - dodaj sliko celotne arhitekture

> **_Opomba:_** Opis projekta predstavlja cilj, ki smo si ga zadali. Od te točke dalje opisujemo le stvari, ki so bile zahtevane, da jih naredimo do mejnika 1. Preostalo bomo implementirali kasneje.

## Seznam končnih točk

Mikrostoritev sledenja in zbiranja dogodkov:

- TODO

Mikrostoritev upravljanja plačevanja:

- TODO

## Uporabne povezave

Celoten **zaledni del** aplikacije je na voljo na: [https://github.com/vibe-social](https://github.com/vibe-social), pri čemer so storitve dostopne preko sledečih poti:

- TODO (event-tracking - URL)

Celoten **repozitorij slik** vsebnikov Docker je dostopen na: [https://hub.docker.com/u/vibesocial](https://hub.docker.com/u/vibesocial)

Povezave do **GitHub** repozitorijev:

- Dokumentacija - [https://github.com/vibe-social](https://github.com/vibe-social)
- Infrastruktura - [https://github.com/vibe-social/infrastructure](https://github.com/vibe-social/infrastructure)
- Sheme podatkovnih baz - [https://github.com/vibe-social/database](https://github.com/vibe-social/database)
- Mikrostoritev sledenja in zbiranja dogodkov - [https://github.com/vibe-social/event-tracking](https://github.com/vibe-social/event-tracking)
- Mikrostoritev upravljanja plačevanja - [https://github.com/vibe-social/payment-webhooks](https://github.com/vibe-social/payment-webhooks)

Povezave do **Docker Hub** repozitorijev:

- Slika mikrostoritve sledenja in zbiranja dogodkov - [https://hub.docker.com/r/vibesocial/event-tracking](https://hub.docker.com/r/vibesocial/event-tracking)
- Slika mikrostoritve upravljanja plačevanja - [https://hub.docker.com/r/vibesocial/payment-webhooks](https://hub.docker.com/r/vibesocial/payment-webhooks)
