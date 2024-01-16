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

Projekt je sestavljen iz treh glavnih komponent, in sicer iz podatkovnih baz, zalednih mikrostoritev razvite v arhitekturi cloud-native in mobilne aplikacije.

### Podatkovne baze

Projekt uporablja dve različni podatkovni bazi, in sicer [Supabase](https://supabase.com/) za hrambo podatkov, ki jih aplikacija potrebuje za njeno delovanje, in podatkovno skladišče [Azure Data Lake Storage](https://azure.microsoft.com/en-us/products/storage/data-lake-storage) za hrambo velike količine podatkov namenjeni analizi.

Sheme vseh tabel podatkovne baze Supabase so dostopne v repozitoriju [podatkovne baze](https://github.com/vibe-social/database), med tem ko pa je struktura podatkovnega skladišča definirana v repozitoriju [infrastruktura](https://github.com/vibe-social/infrastructure).

### Zaledne mikrostoritve

Projekt je sestavljen iz večih mikrostoritev, pri čemer vsaka služi svojemu namenu. Nekatere mikrostoritve služijo ekstrakciji, zbiranju in transformiranju podatkov namenjenih kasnejši analizi, druge služijo povezavi in upravljanju zunanjih storitev, tretje pa služijo delovanju aplikacije. Vse mikrostoritve delujejo znotraj platforme [Kubernetes](https://kubernetes.io/), ki je nameščena na ponudniku oblačnih storitev [Azure](https://azure.microsoft.com/en-us).

Za namestitev in konfiguracijo infrastrukture smo uporabili orodje [Terraform](https://www.terraform.io/), ki je dostopno v repozitoriju [infrastruktura](https://github.com/vibe-social/infrastructure). Prav tako smo se pri razvoju projekta držali dobrih praks razvoja programske opreme.

Mikrostoritve so:

- **Mikrostoritev sledenja in zbiranja dogodkov**: naloga mikrostoritve je sprejemanje dogodkov uporabnika. Na ta načih bomo kasneje lahko analizirali kako se kateri uporabnik počuti, ali njegovo počutje vplivajo kakšni zunanji dejavniki, ali je kakšna povezava med tem, kako se uporabnik počuti in kako se počutijo uporabniki katerim sledi, itd. Torej, namen omenjene mikrostoritve je zbiranje podatkov, na podlagi katerih bomo lahko kasneje analizirali uporabnike, dogodgke uporabnikov in tudi bolj splošne stvari.
- **Mikrostoritev upravljanja plačevanja**: naloga mikrostoritve je upravljanje plačevanja s plačilnim sistemov [Stripe](https://stripe.com/en-gb-si). Uporabniki bodo imeli možnost kupiti storitve znotraj aplikacije. Le te bodo lahko plačali preko storitve stripe.
- **Mikrostoritev za pridobivanja lokacije**: naloga mikrostoritve je ugotavljanje lokacije uporabnika na podlagi njegovega IP naslova. Na ta način bomo lahko analizirali kako se uporabniki počutijo na različnih lokacijah, ali je kakšna povezava med lokacijo in počutjem uporabnika, itd. Podatkovno bazo IP naslovov in njihovih lokacij smo pridobili iz zunanje storitve [IP2Location](https://www.ip2location.com/).
- **Mikrostoritev za upravljanje z vzdušji**: naloga mikrostoritve je upravljanje z uporabniki in njihovimi vzdušji. Mikrostoritev je namenjena upravljanju z uporabniki, njihovimi podatki in vzdušji. Prav tako mikrostoritev skrbi za avtentikacijo uporabnikov in njihovo avtorizacijo. Mikrostoritev je namenjena tudi komunikaciji z mobilno aplikacijo, ki je dostopna na operacijskem sistemu iOS.

### Uporabniški vmesnik

Projekt vsebuje mobilni uporabniški vmesnik spisan v programskem jeziku [Swift](https://developer.apple.com/swift/), ki nam ponuja razvoj mobilnih aplikacij za operacijski sistem [iOS](https://www.apple.com/ios/). Uporabniški vmesnik je dostopen v repozitoriju [vibe-ios](https://github.com/vibe-social/ios).

![User Interface 1](https://raw.githubusercontent.com/vibe-social/documentation/main/images/ui-1.png)
![User Interface 2](https://raw.githubusercontent.com/vibe-social/documentation/main/images/ui-2.png)
![User Interface 3](https://raw.githubusercontent.com/vibe-social/documentation/main/images/ui-3.png)
![User Interface 4](https://raw.githubusercontent.com/vibe-social/documentation/main/images/ui-4.png)
![User Interface 5](https://raw.githubusercontent.com/vibe-social/documentation/main/images/ui-5.png)

## Arhitektura

![Arhitektura](https://raw.githubusercontent.com/vibe-social/documentation/main/images/architecture.png)

> **_Opomba:_** Opis projekta predstavlja cilj, ki smo si ga zadali. Nekaterih komponent nam žal ni uspelo vključiti. Od te točke dalje opisujemo le stvari, ki so bile zahtevane, da jih naredimo.

## Zahteve

- Arhitekturno zasnovo aplikacije. Kvaliteto rešitve danega problema in vsebinsko ustreznost razvitih mikrostoritev. Število razvitih mikrostoritev. Vsak član skupine mora razviti dve mikrostoritvi. (24T)
  - Mikrostoritev sledenja in zbiranja dogodgkov (event-tracking) `/event-tracking`
  - Mikrostoritev upravljanja plačevanja (payment-webhooks) `/payment-webhooks`
  - Mikrostoritev za upravljanje z vzdušij (vibe) `/backend`
  - Mikrostoritev za odkrivanje lokacij (location-discovery) `/location-discovery`
- Dokumentiranje storitev z uporabo OpenAPI (vključitev UI in dokumentacija dostopna na naslovu /openapi). (6T)
  - event-tracking: [/event-tracking/openapi](http://vibe-social.westeurope.cloudapp.azure.com/event-tracking/openapi/index.html)
  - payment-webhooks: [/payment-webhooks/openapi](http://vibe-social.westeurope.cloudapp.azure.com/payment-webhooks/openapi)
  - location-discovery: [/location-discovery/openapi](http://vibe-social.westeurope.cloudapp.azure.com/location-discovery/openapi)
  - backend: [/backend/openapi](http://vibe-social.westeurope.cloudapp.azure.com/backend/openapi)
- Zvezno integracijo in Kubernetes (ingress ipd.). (18T)
  - Z uporabo GitHub akcij smo implementirali zvezno integracijo, ki se izvaja ob vsakem commitu v glavno vejo repozitorija. Zvezna integracija se izvaja v dveh korakih:
    - Gradnja in objava Docker slik v repozitorij [Docker Hub](https://hub.docker.com/u/vibesocial).
    - Namestitev in posodobitev Kubernetes storitev na Azure Kubernetes Service.
  - Celotna Kubernetes gruča je dostopna na naslovu preko Nginx ingress kontrolerja, ki skrbi za usmerjanje zahtevkov na ustrezne storitve. IP naslov ingress kontrolerja je: [20.86.219.70](20.86.219.70).
  - Pred celotno Kubernetes gručo se nahaja Azure Application Gateway, ki zagotavlja varnostno plast in omogoča uporabo HTTPS protokola. Prav tako je na Application Gatewayu nameščen WAF (Web Application Firewall), ki skrbi za dodatno varnost.
- Uporaba virov konfiguracije v projektu (okoljske spremenljivke in konfiguracijska datoteka). (6T)
  - Zaradi preprostosti smo se odločili, da bomo uporabljali le eno konfiguracijsko datoteko, katere primer se nahaja v [https://github.com/vibe-social/infrastructure/blob/main/kubernetes/example.secret.yaml](https://github.com/vibe-social/infrastructure/blob/main/kubernetes/example.secret.yaml). V tej datoteki se nahajajo vse spremenljivke, ki jih potrebujejo mikrostoritve za svoje delovanje. Za lokalni razvoj smo podprli tudi uporabo okoljskih spremenljivk, ki se nahajajo v datoteki `.env` (oziroma `.example.env`) v vsakem repozitoriju.
- Kontrole zdravja. Za vsakega člana skupine implementirajte eno vrsto kontrole zdravja. Zadostuje, da kontrole zdravja implementirate na eni mikrostoritvi. (3T) Smiselna vključitev kontrole zdravja po meri prinese 3 dodatne točke.
  - Kontrole zdravja smo implementirali na vseh mikrostoritvah, pri čemer smo najbol pester in uporaben izbor kontrol implementirali na mikrostoritvi `event-tracking`. Kontrole zdravja so dostopne na naslovu `/health`.
  - Implementirali smo:
    - Splošno kontrolo zdravja, ki preverja ali je mikrostoritev dosegljiva (`/health/general`).
    - Kontrolo zdravja procesorja, ki preverja v kolikšni meri mikrostoritev obremenjuje procesor (`/health/cpu`).
    - Kontrolo zdravja pomnilnika, ki preverja v kolikšni meri mikrostoritev obremenjuje pomnilnik (`/health/disk`).
    - Kontrolo zdravja procesov v mikrostoritvi, ki preverja koliko procesov se izvaja v mikrostoritvi in v kakšnem stanju so (`/health/goroutine`).
    - Kontrolo zdravja podatkovne baze, ki preverja ali je podatkovna baza dosegljiva in pripravljena na sprejemanje zahtevkov (`/health/database`).
    - Kontrolo zdravja pretočnega sistema Kafka, ki preverja ali je Kafka dosegljiva in pripravljena na sprejemanje zahtevkov (`/health/kafka`).
- Zbiranje metrik. Za vsakega člana skupine implementirate eno vrsto metrike. Metrike JVM, ki se že privzeto zbirajo, ne štejejo. Zadostuje, da zbiranje metrik implementirate na eni mikrostoritvi. (3T)
  - Zbiranje metrik smo implementirali na `event-tracking` mikrostoritvi. Vse metrike so dostopne na naslovu `/metrics`. Metrike, ki smo jih implementirali mi, in niso privzete za programski jezik Go, so dostopne na naslovu `/metrics/custom`.
  - Metrike, ki smo jih implementirali sami so:
    - Število vseh zahtevkov, ki so bili poslani na mikrostoritev (`http_requests_total`), razdeljeno po metodi, poti in statusu.
    - Število vseh 2xx zahtevkov, ki so bili poslani na mikrostoritev (`http_requests_2xx_total`), razdeljeno po metodi in poti.
    - Število vseh 3xx zahtevkov, ki so bili poslani na mikrostoritev (`http_requests_3xx_total`), razdeljeno po metodi in poti.
    - Število vseh 4xx zahtevkov, ki so bili poslani na mikrostoritev (`http_requests_4xx_total`), razdeljeno po metodi in poti.
    - Število vseh 5xx zahtevkov, ki so bili poslani na mikrostoritev (`http_requests_5xx_total`), razdeljeno po metodi in poti.
    - Število bajtov, ki jih mikrostoritev uporablja v pomnilniku (`memory_usage_bytes`).
    - Število procentov zasedenosti pomnilnika (`memory_usage_percent`).
    - Število procentov obremenjenosti procesorja (`cpu_usage_percent`).
    - Število vseh gorutin, ki se izvajajo v mikrostoritvi (`goroutines_total`).
    - Število niti, ki se izvajajo v mikrostoritvi (`threads_total`).
    - Število vseh dogodkov, ki so bili poslani na mikrostoritev (`events_total`), razdeljeno po tipu dogodka.
    - Število trajanja dogodkov, ki so bili poslani na mikrostoritev (`events_duration`), razdeljeno po tipu dogodka.
    - Števio odprtih povezav na podatkovno bazo (`database_connection_pool`).
    - Število trajanja queryjev, ki so bili poslani na podatkovno bazo (`database_queries_total`), razdeljeno po tipu queryja.
    - Število napak, ki so se zgodile pri izvajanju queryjev na podatkovni bazi (`database_errors`), razdeljeno po tipu napake.
    - Število zahtevkov, ki so bili poslani na Kafko (`kafka_requests`), razdeljeno po topicu.
    - Število bajtov, ki so bili poslani na Kafko (`kafka_bytes`), razdeljeno po topicu.
    - Število napak, ki so se zgodile pri pošiljanju podatkov na Kafko (`kafka_errors`), razdeljeno po topicu.
    - Število latence zahtevkov (`latency`), razdeljeno po metodi, poti in statusu.
  - Metrike zbiramo s pomočjo knjižnice [Prometheus](https://prometheus.io/) in jih nato vizualiziramo s pomočjo orodja [Grafana](https://grafana.com/). Grafana je dostopna na naslovu [https://vibe-social-grafana-b6ahaxfmhwcvb7ee.weu.grafana.azure.com](https://vibe-social-grafana-b6ahaxfmhwcvb7ee.weu.grafana.azure.com).
- Uporaba zunanjih API-jev. Za vsakega člana v rešitev smiselno vključite en zunanji API in argumentirajte izbiro. (6T)
  - Pri mikrostoritvi `payment-webhooks` smo uporabili zunanji API [Stripe](https://stripe.com/en-gb-si), ki nam omogoča upravljanje plačevanja.
  - Pri mikrostoritvi `backend` smo uporabili zunanji API [Supabase](https://supabase.com/), ki nam omogoča avtentikacijo uporabnikov in hrambo podatkov.
  - Pri mikrostoritvi `location-discovery` smo uporabili zunanji API [IP2Location](https://www.ip2location.com/), ki nam omogoča pridobivanje podatkovnih baz o IP naslovih, ki jih mi nato uporabimo za odkrivanje lokacij uporabnikov.
- Uporaba naprednih komunikacijskih protokolov. Vključite GraphQL (Za vsakega člana skupine vključite en primer uporabe). (6T)
  - GraphQL smo uporabili pri mikrostoritvi `backend`, kjer se uporablja za komunikacijo neposredno z uporabnikom.
- Vključite centralizirano beleženja dnevnikov. Za vsakega člana skupine pripravite en primer zanimive poizvedbe po dnevnikih. Nadalje še demonstrirajte sledenje zahtevkov pri obdelavi na različnih mikrostoritvah. (12T)
  - Centralizirano beleženje dnevnikov smo realizirali z implementacijo Elastic Stacka. V naši Kubernetes gruči torej poganjamo orodja: Beats, Logstash, Elasticsearch in Kibana. Slednje se nahaja na naslovu [https://portal.azure.com/#view/HubsExtension/BrowseResource/resourceType/Microsoft.OperationalInsights%2Fworkspaces](https://portal.azure.com/#view/HubsExtension/BrowseResource/resourceType/Microsoft.OperationalInsights%2Fworkspaces).
- V eno mikrostoritev vključite izolacijo in toleranco napak. Pripravite demonstracijo mehanizmov na primeru. Ocenjuje se tudi razumevanje primera, ki ste ga vključili v vašo rešitev. (12T)
  - Pri mirkosoritvi `event-tracking` smo implementirali izolacijo in toleranco napak. V primeru, da se mikrostoritev ne odziva, se bo samodejno ponovno zagnala. Prav tako se bo samodejno ponovno zagnala v primeru, da se bo mikrostoritev sesula. Prav tako zagotavljamo visoko razpoložljivost mikrostoritve, saj je ta nameščena na Kubernetes gruči, ki se samodejno širi in krči glede na obremenitev, pri čemer sta vedno aktivni vsaj dve instanci mikrostoritve. V tej mikrostoritvi smo prav tako implementirali mehanizem za ponovno pošiljanje dogodkov, ki se niso uspešno poslali na Kafko ali v podatkovno bazo. Dodali smo tudi prekinjevalce toka, ki v primeru, da se mikrostoritev sesuje, prekinejo tok dogodkov, ki se pošiljajo na Kafko ali v podatkovno bazo. V primeru, da se mikrostoritev sesuje, se prekinjevalci toka samodejno ponovno zgradijo in ponovno vzpostavijo tok dogodkov. Za konec pa smo na ravni mikrostoritve definirali še časovno omejitev zahtevkov, ki se pošiljajo na Kafko in v podatkovno bazo. V primeru, da se zahtevki ne obdelajo v določenem času, se prekinejo in ponovno pošljejo.
- Predstavitev (delujoč UI, primeri uporabe, funkcionalnosti) (12T)
  - Razvili smo delujočo mobilno aplikacijo, ki je dostopna za vse uporabnike Applovega operacijskega sistema iOS. Aplikacija je dostopna na naslovu [https://github.com/vibe-social/ios](https://github.com/vibe-social/ios). Slike uporabniškega vmesnika so dostopne v repozitoriju [documentation](https://github.com/vibe-social/documentation/images) in pa tudi zgoraj.
- Opcijske naloge (dodatne točke): konfiguracijski strežnik (12T), vključitev naprednih komunikacijskih protokolov na izbranih primerih - asinhron REST (6T) in gRPC (6T), Kafka (12T).
  - Konfiguracijskega strežnika žal nismo uporabili, saj smo se odločili, da bomo raje uporabili le eno konfiguracijsko datoteko. Prav tako orodja, s katerimi smo razvijali aplikacijo, imajo slabo dokumentirano integracijo konfiguracijskega strežnika.
  - Asinhron REST smo uporabili pri mikrostoritvi `payment-webhooks`, kjer se uporablja za komunikacijo s storitvijo [Stripe](https://stripe.com/en-gb-si).
  - Kafka smo uporabili pri mikrostoritvi `event-tracking`, kjer se uporablja za zbiranje dogodkov uporabnikov. Natančneje, uporabili smo Azure Event Hubs, ki je storitev, ki deluje enako kot Kafka, le da je integrirana v Azure oblaku.
  - gRPC smo prav tako uporabili pri mikrostoritvi `event-tracking`, kjer se uporablja za zbiranje dogodkov uporabnikov.

## Seznam končnih točk

Mikrostoritev sledenja in zbiranja dogodkov:

- Pridobi seznam dogodkov `GET /events`
- Pridobi specifičen dogodek `GET /events:id`
- Ustvari dogodek `POST /events`
- Posodobi dogodek `PATCH /events`
- Izbriši dogodek `DELETE /events`
- Pridobi kostumizirane metrike `GET /metrics/custom`
- Pridobi vse metrike `GET /metrics`
- Pridobi zdravje mikrostoritve `GET /health`
- Pridobi zdravje mikrostoritve (splošno) `GET /health/general`
- Pridobi zdravje mikrostoritve (procesor) `GET /health/cpu`
- Pridobi zdravje mikrostoritve (pomnilnik) `GET /health/disk`
- Pridobi zdravje mikrostoritve (gorutine) `GET /health/goroutine`
- Pridobi zdravje mikrostoritve (podatkovna baza) `GET /health/database`
- Pridobi zdravje mikrostoritve (Kafka) `GET /health/kafka`
- Pridobi informacijo ali je mikrostoritev živa `GET /liveness`
- Pridobi informacijo ali je mikrostoritev pripravljena `GET /readiness`

- Ustvari dogodek `gRPC CreateEvent (CreateEventRequest) returns (CreateEventResponse)`

Mikrostoritev upravljanja plačevanja:

- Odzovi se na plačilni dogodek `POST /webhook`

Mikrostoritev za odkrivanje lokacije:

- Pridobi lokacijo na podlagi IP naslova `GET /geocode`
- Priodbi IP naslov na podlagi lokacije `GET /reverse-geocode`
- Priodbi razdaljo med dvema lokacijama `GET /distance`
- Pridobi vzored podatkovne baze IP naslovov `GET /database`
- Pridobi zdravje mikrostoritve `GET /health`

Mikrostoritev za upravljanje z vzdušji:

- Pridobi vse uporabnike in njihova vzdušja `GET /users/data`
- Pridobi specifičnega uporabnika in njegovo vzdušje `GET /users/:id/data`
- Dodaj novo vzdušje uporabniku `POST /user/:id/update`
- Ivzedi nakup dodatnih storitev `POST /user/:id/purchase`
- Pridobi zdravje mikrostoritve `GET /health`

## Uporabne povezave

Aplikacija je dostopna na naslovu: [http://vibe-social.westeurope.cloudapp.azure.com/](http://vibe-social.westeurope.cloudapp.azure.com/), pri čemer je vsaka mikrostoritev dostopna na svojem naslovu.

- Mikrostoritev sledenja in zbiranja dogodkov: [http://vibe-social.westeurope.cloudapp.azure.com/event-tracking](http://vibe-social.westeurope.cloudapp.azure.com/event-tracking)
- Mikrostoritev upravljanja plačevanja: [http://vibe-social.westeurope.cloudapp.azure.com/payment-webhooks](http://vibe-social.westeurope.cloudapp.azure.com/payment-webhooks)
- Mikrostoritev za odkrivanje lokacije: [http://vibe-social.westeurope.cloudapp.azure.com/location-discovery](http://vibe-social.westeurope.cloudapp.azure.com/location-discovery)
- Mikrostoritev za upravljanje z vzdušji: [http://vibe-social.westeurope.cloudapp.azure.com/backend](http://vibe-social.westeurope.cloudapp.azure.com/backend)

Celoten **zaledni del** aplikacije je na voljo na: [https://github.com/vibe-social](https://github.com/vibe-social), **repozitorij slik** vsebnikov Docker pa je dostopen na: [https://hub.docker.com/u/vibesocial](https://hub.docker.com/u/vibesocial).

Povezave do **GitHub** repozitorijev:

- Dokumentacija - [https://github.com/vibe-social](https://github.com/vibe-social)
- Infrastruktura - [https://github.com/vibe-social/infrastructure](https://github.com/vibe-social/infrastructure)
- Sheme podatkovnih baz - [https://github.com/vibe-social/database](https://github.com/vibe-social/database)
- Mikrostoritev sledenja in zbiranja dogodkov - [https://github.com/vibe-social/event-tracking](https://github.com/vibe-social/event-tracking)
- Mikrostoritev upravljanja plačevanja - [https://github.com/vibe-social/payment-webhooks](https://github.com/vibe-social/payment-webhooks)
- Mikrostoritev za odkrivanje lokacije - [https://github.com/vibe-social/location-discovery](https://github.com/vibe-social/location-discovery)
- Mikrostoritev za upravljanje z vzdušji - [https://github.com/vibe-social/backend](https://github.com/vibe-social/backend)
- IOS aplikacija - [https://github.com/vibe-social/ios](https://github.com/vibe-social/ios)

Povezave do **Docker Hub** repozitorijev:

- Slika mikrostoritve sledenja in zbiranja dogodkov - [https://hub.docker.com/r/vibesocial/event-tracking](https://hub.docker.com/r/vibesocial/event-tracking)
- Slika mikrostoritve upravljanja plačevanja - [https://hub.docker.com/r/vibesocial/payment-webhooks](https://hub.docker.com/r/vibesocial/payment-webhooks)
- Slika mikrostoritve za odkrivanje lokacije - [https://hub.docker.com/r/vibesocial/location-discovery](https://hub.docker.com/r/vibesocial/location-discovery)
- Slika mikrostoritve za upravljanje z vzdušji - [https://hub.docker.com/r/vibesocial/backend](https://hub.docker.com/r/vibesocial/backend)
