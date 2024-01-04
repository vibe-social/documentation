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

- Vibe trenutki: delite živahne trenutke svojega življenja s fotografijami, videoposnetki, izrezki ali pa preprostimi _vzduški_. Naš intuitivni vmesnik vam omogoča, da prilagodite svoje vibe objave s filtri, nalepkami in še več, s čimer zagotovite, da vaša osebnost zasije.

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

Projekt uporablja dve različni podatkovni bazi, in sicer [Supabase](https://supabase.com/) za hrambo podatkov, ki jih aplikacija potrebuje za njeno delovanje, in podatkovno skladišče [Azure Data Lake Storage](https://azure.microsoft.com/en-us/products/storage/data-lake-storage) za hrambo velike količine podatkov namenjeni analizi.

Sheme vseh tabel podatkovne baze Supabase so dostopne v repozitoriju [podatkovne baze](https://github.com/vibe-social/database), med tem ko pa je struktura podatkovnega skladišča definirana v repozitoriju [infrastruktura](https://github.com/vibe-social/infrastructure).

### Zaledne mikrostoritve

Projekt je sestavljen iz večih mikrostoritev, pri čemer vsaka služi svojemu namenu. Nekatere mikrostoritve služijo ekstrakciji, zbiranju in transformiranju podatkov namenjenih kasnejši analizi, druge služijo povezavi in upravljanju zunanjih storitev, tretje pa služijo delovanje aplikacije. Vse mikrostoritve delujejo znotraj platforme [Kubernetes](https://kubernetes.io/), ki je nameščena na ponudniku oblačnih storitev [Azure](https://azure.microsoft.com/en-us).

Za namestitev in konfiguracijo infrastrukture smo uporabili orodje [Terraform](https://www.terraform.io/), ki je dostopno v repozitoriju [infrastruktura](https://github.com/vibe-social/infrastructure). Prav tako smo se pri razvoju projekta držali dobrih praks razvoja programske opreme.

Mikrostoritve so:

- **Mikrostoritev sledenja in zbiranja dogodkov**: naloga mikrostoritve je sprejemanje dogodkov uporabnika. Na ta načih bomo kasneje lahko analizirali kako se kateri uporabnik počuti, ali njegovo počutje vplivajo kakšni zunanji dejavniki, ali je kakšna povezava med tem, kako se uporabnik počuti in kako se počutijo uporabniki katerim sledi, itd. Torej, namen omenjene mikrostoritve je zbiranje podatkov, na podlagi katerih bomo lahko kasneje analizirali uporabnike, dogodgke uporabnikov in tudi bolj splošne stvari.
- **Mikrostoritev upravljanja plačevanja**: naloga mikrostoritve je upravljanje plačevanja s plačilnim sistemov [Stripe](https://stripe.com/en-gb-si). Uporabniki bodo imeli možnost kupiti storitve znotraj aplikacije. Le te bodo lahko plačali preko storitve stripe.

### Uporabniški vmesnik

Projekt trenutno vsebuje spletni in mobilni uporabniški vmesnik spisan v knjižnici [Next.js](https://nextjs.org/), ki nam ponuja razvoj spletnih aplikacij, ki temeljijo na Reactu in, in podpirajo upodabljanje na strani strežnika in generiranje statičnega spletnega mesta.

## Arhitektura

![Arhitektura](https://raw.githubusercontent.com/vibe-social/documentation/main/images/architecture.png)

> **_Opomba:_** Opis projekta predstavlja cilj, ki smo si ga zadali. Od te točke dalje opisujemo le stvari, ki so bile zahtevane, da jih naredimo. Preostalo bomo morda implementirali kasneje.

## Zahteve

- Arhitekturno zasnovo aplikacije. Kvaliteto rešitve danega problema in vsebinsko ustreznost razvitih mikrostoritev. Število razvitih mikrostoritev. Vsak član skupine mora razviti dve mikrostoritvi. (24T)
- Dokumentiranje storitev z uporabo OpenAPI (vključitev UI in dokumentacija dostopna na naslovu /openapi). (6T)
- Zvezno integracijo in Kubernetes (ingress ipd.). (18T)
- Uporaba virov konfiguracije v projektu (okoljske spremenljivke in konfiguracijska datoteka). (6T)
- Kontrole zdravja. Za vsakega člana skupine implementirate en vrsto kontrole zdravja. Zadostuje, da kontrole zdravja implementirate na eni mikrostoritvi. (3T) Smiselna vključitev kontrole zdravja po meri prinese 3 dodatne točke.
- Zbiranje metrik. Za vsakega člana skupine implementirate eno vrsto metrike. Metrike JVM, ki se že privzeto zbirajo, ne štejejo. Zadostuje, da zbiranje metrik implementirate na eni mikrostoritvi. (3T)
- Uporaba zunanjih API-jev. Za vsakega člana v rešitev smiselno vključite en zunanji API in argumentirajte izbiro. (6T)
- Uporaba naprednih komunikacijskih protokolov. Vključite GraphQL (Za vsakega člana skupine vključite en primer uporabe). (6T)
- Vključite centralizirano beleženja dnevnikov. Za vsakega člana skupine pripravite en primer zanimive poizvedbe po dnevnikih. Nadalje še demonstrirajte sledenje zahtevkov pri obdelavi na različnih mikrostoritvah. (12T)
- V eno mikrostoritev vključite izolacijo in toleranco napak. Pripravite demonstracijo mehanizmov na primeru. Ocenjuje se tudi razumevanje primera, ki ste ga vključili v vašo rešitev. (12T)
- Predstavitev (delujoč UI, primeri uporabe, funkcionalnosti) (12T)
- Opcijske naloge (dodatne točke): konfiguracijski strežnik (12T), vključitev naprednih komunikacijskih protokolov na izbranih primerih - asinhron REST (6T) in gRPC (6T), Kafka (12T).

## Seznam končnih točk

Mikrostoritev sledenja in zbiranja dogodkov:

- Pridobi seznam dogodkov `GET /events`
- Pridobi specifičen dogodek `GET /events:id`
- Ustvari dogodek `POST /events`
- Posodobi dogodek `PATCH /events`
- Izbriši dogodek `DELETE /events`

Mikrostoritev upravljanja plačevanja:

- Odzovi se na plačilni dogodek `POST /webhook`

## Uporabne povezave

Celoten **zaledni del** aplikacije je na voljo na: [https://github.com/vibe-social](https://github.com/vibe-social), **repozitorij slik** vsebnikov Docker pa je dostopen na: [https://hub.docker.com/u/vibesocial](https://hub.docker.com/u/vibesocial).

Povezave do **GitHub** repozitorijev:

- Dokumentacija - [https://github.com/vibe-social](https://github.com/vibe-social)
- Infrastruktura - [https://github.com/vibe-social/infrastructure](https://github.com/vibe-social/infrastructure)
- Sheme podatkovnih baz - [https://github.com/vibe-social/database](https://github.com/vibe-social/database)
- Mikrostoritev sledenja in zbiranja dogodkov - [https://github.com/vibe-social/event-tracking](https://github.com/vibe-social/event-tracking)
- Mikrostoritev upravljanja plačevanja - [https://github.com/vibe-social/payment-webhooks](https://github.com/vibe-social/payment-webhooks)

Povezave do **Docker Hub** repozitorijev:

- Slika mikrostoritve sledenja in zbiranja dogodkov - [https://hub.docker.com/r/vibesocial/event-tracking](https://hub.docker.com/r/vibesocial/event-tracking)
- Slika mikrostoritve upravljanja plačevanja - [https://hub.docker.com/r/vibesocial/payment-webhooks](https://hub.docker.com/r/vibesocial/payment-webhooks)
