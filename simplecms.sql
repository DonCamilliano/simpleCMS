-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 28 Sty 2017, 18:16
-- Wersja serwera: 10.1.13-MariaDB
-- Wersja PHP: 5.5.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `simplecms`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `admin`
--

CREATE TABLE `admin` (
  `login` text COLLATE utf8_polish_ci NOT NULL,
  `password` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `admin`
--

INSERT INTO `admin` (`login`, `password`) VALUES
('admin', 'pass');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `articles`
--

CREATE TABLE `articles` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `summary` text COLLATE utf8_polish_ci NOT NULL,
  `content` mediumtext COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `articles`
--

INSERT INTO `articles` (`id`, `title`, `summary`, `content`) VALUES
(1, ' Drugie oblicze Ludwiga von Misesa â€“ jak naprawiaÄ‡ gospodarkÄ™ w Å›wiecie interwencjonistÃ³w', 'Jest bardzo prawdopodobne, Å¼e Ludwig von Mises byÅ‚ najbardziej bezkompromisowym, konsekwentnym i pryncypialnym obroÅ„cÄ… klasycznego liberalizmu i gospodarki wolnorynkowej w XX wieku.', 'Jego wielkie prace, na przykÅ‚ad: Teoria pieniÄ…dza i kredytu, Socjalizm, Liberalizm w tradycji klasycznej, Krytyka interwencjonizmu, Epistemologiczne problemy ekonomii, Biurokracja, Ludzkie dziaÅ‚anie, Teoria a historia i The Ultimate Foundation of Economic Science, ukazaÅ‚y go jako wielkiego, niezrÃ³wnanego teoretyka, zajmujÄ…cego siÄ™ szeroko pojÄ™tymi problemami natury ludzkiej: ogÃ³lnÄ… logikÄ… i strukturÄ… ludzkiego dziaÅ‚ania i wyboru; naturÄ… rÃ³Å¼nych porzÄ…dkÃ³w ekonomicznych â€” kapitalizmu, socjalizmu i interwencjonizmu; dziaÅ‚aniem konkurencji w procesach rynkowych i rolÄ… przedsiÄ™biorcy; istotnoÅ›ciÄ… systemu monetarnego dla kalkulacji ekonomicznej i koordynacji rynkowej; powiÄ…zaniami miÄ™dzy czasem, pieniÄ…dzem i produkcjÄ… oraz wystÄ™powaniem cyklu koniunkturalnego[1].\r\n\r\nZ pewnoÅ›ciÄ… ta czÄ™Å›Ä‡ myÅ›li i pism Misesa ma ponadczasowe znaczenie i zastosowanie, poniewaÅ¼ traktuje o ogÃ³lnych i uniwersalnych aspektach natury ludzkiej, umysÅ‚u, rynkÃ³w i spoÅ‚eczeÅ„stwa. Musimy jednak pamiÄ™taÄ‡, Å¼e przez wiÄ™kszoÅ›Ä‡ Å¼ycia, zanim przybyÅ‚ do StanÃ³w Zjednoczonych jako uchodÅºca z objÄ™tej wojnÄ… Europy w 1940 r., Ludwig von Mises nie zarabiaÅ‚ na Å¼ycie jako teoretyk ekonomii i filozof spoÅ‚eczny.'),
(2, 'Luxtorpeda â€“ legendarny polski pociÄ…g', 'W okresie miÄ™dzywojennym w Polsce kolej rozwijaÅ‚a siÄ™ bardzo szybko. WÅ›rÃ³d wielu inwestycji i projektÃ³w jakie wÃ³wczas zorganizowano, jeden zapisaÅ‚ siÄ™ w historii wyjÄ…tkowo. W poÅ‚owie lat 30-tych na polskich torach pojawiÅ‚y siÄ™ tzw. luxtorpedy, spalinowe wagony szybkobieÅ¼ne mogÄ…ce osiÄ…gaÄ‡ prÄ™dkoÅ›Ä‡ ponad 115 km/h.', 'Geneza\r\n\r\nWraz z odzyskaniem niepodlegÅ‚oÅ›ci w 1918 roku Polska musiaÅ‚a zmierzyÄ‡ siÄ™ z olbrzymim problemem odbudowy kraju po latach zaborÃ³w oraz zniszczeniach wojennych. Aby proces ten mÃ³gÅ‚ siÄ™ w ogÃ³le rozpoczÄ…Ä‡, naleÅ¼aÅ‚o stworzyÄ‡ sprawny system transportu kolejowego.\r\n\r\nProblem w tym, Å¼e Polska odziedziczyÅ‚a po zaborcach 3 zupeÅ‚nie inne systemy kolejowe, rÃ³Å¼niÄ…ce siÄ™ nie tylko taborem, ale rÃ³wnieÅ¼ rozstawem torÃ³w. Kolejnym problemem byÅ‚ ogÃ³lnie fatalny stan taboru oraz brak krajowego przemysÅ‚u kolejowego. Zaborcy wycofujÄ…cy siÄ™ z Polski zabrali ze sobÄ… wiÄ™kszoÅ›Ä‡ maszyn i wyposaÅ¼enia fabryk pracujÄ…cych na rzecz przemysÅ‚u kolejowego.\r\nZdajÄ…c sobie sprawÄ™ z znaczenia kolei dla mÅ‚odego, rozwijajÄ…cego siÄ™ kraju, wÅ‚adze inwestowaÅ‚y olbrzymie Å›rodki w budowÄ™ nowych tras kolejowych, ujednolicanie taboru, jego modernizacjÄ™ oraz budowÄ™ krajowego przemysÅ‚u zdolnego do produkcji nie tylko wagonÃ³w kolejowych ale rÃ³wnieÅ¼ lokomotyw.\r\n\r\nBrak infrastruktury niÃ³sÅ‚ za sobÄ… jednak sporo zalet. NajwaÅ¼niejszÄ… z nich byÅ‚a moÅ¼liwoÅ›Ä‡ dostosowania nowo-budowanych torÃ³w, zakÅ‚adÃ³w naprawczych i serwisowych do nowych pociÄ…gÃ³w, ktÃ³re dopiero wchodziÅ‚y do eksploatacji w Europie. DziÄ™ki temu polska kolej mogÅ‚a spokojnie nadÄ…Å¼yÄ‡ za najnowszymi trendami, takimi jak elektryfikacja trakcji kolejowej, czy teÅ¼ wprowadzanie do eksploatacji pociÄ…gÃ³w spalinowych.\r\nEksperyment z wagonami motorowymi\r\n\r\nNa poczÄ…tku lat 30-tych podstawÄ… taboru kolejowego w Polsce byÅ‚y lokomotywy parowe oraz nieliczne lokomotywy korzystajÄ…ce z trakcji elektrycznej. W latach 20-tych prowadzone byÅ‚y jednak testy zdobytych na zaborcach pociÄ…gÃ³w spalinowych.\r\n\r\nTesty wykazaÅ‚y duÅ¼Ä… przydatnoÅ›Ä‡ tego typu konstrukcji. ByÅ‚y one bardziej ekonomiczne i Å‚atwiejsze w obsÅ‚udze niÅ¼ lokomotywy parowe, a dziÄ™ki mniejsze masie mogÅ‚y osiÄ…gaÄ‡ bardzo wysokie prÄ™dkoÅ›ci. W 1933 roku wÅ‚adze PKP podjÄ™Å‚y decyzjÄ™, aby sprowadziÄ‡ z Austrii jeden z najnowoczeÅ›niejszych Ã³wczesnych wagonÃ³w motorowych firmy Austro-Daimler-Puch. Inauguracyjny przejazd z Krakowa do Zakopanego miaÅ‚ miejsce 1 sierpnia 1933 roku.\r\n\r\nWagon swojÄ… konstrukcjÄ… przypominaÅ‚ bardziej autobus na szynach niÅ¼ pociÄ…g. WyposaÅ¼ony w dwa wÃ³zki i dwa silniki benzynowe o mocy 80 KM mÃ³gÅ‚ osiÄ…gaÄ‡ prÄ™dkoÅ›Ä‡ okoÅ‚o 100 km/h. Jego testy trwaÅ‚y rok, po czym PKP zakupiÅ‚y testowany egzemplarz w celu wykorzystania go normalnej eksploatacji. W trakcie prÃ³b wyszÅ‚o na jaw kilka wad austriackiego pociÄ…gu, ktÃ³re skrzÄ™tnie notowano i analizowano.\r\n\r\nPraktycznie natychmiast jak tylko informacje o nowym pociÄ…gu trafiÅ‚y do mediÃ³w, otrzymaÅ‚ on przydomek lux-torpeda (lub luxtorpeda). Nazwa zwiÄ…zana byÅ‚a z wysokimi prÄ™dkoÅ›ciami jakie mÃ³gÅ‚ osiÄ…gaÄ‡ wagon, oraz z wysokim komfortem jazdy w luksusowych warunkach (chociaÅ¼ luksusowoÅ›Ä‡ zwiÄ…zana byÅ‚a raczej z cenÄ… biletÃ³w, niÅ¼ faktycznÄ… wygodÄ…).'),
(3, 'WrÃ³ciÄ‡ po trudnym okresie: Arsenal vs Bournemouth', 'Listopad nie kojarzy siÄ™ kibicom Arsenalu najlepiej - to wÅ‚aÅ›nie ten miesiÄ…c najczÄ™Å›ciej weryfikowaÅ‚ londyÅ„czykÃ³w w walce o koÅ„cowy sukces. ', 'Trudny terminarz, natÅ‚ok kontuzji, nagÅ‚a obniÅ¼ka formy: nie inaczej byÅ‚o i w tym roku. Kanonierzy w tym okresie mierzyli siÄ™ z Tottenhamem, Manchesterem United i Paris-Saint Germain, musieli sobie radziÄ‡ bez kluczowego dla taktyki zawodnika i prezentowali siÄ™ poniÅ¼ej swoich moÅ¼liwoÅ›ci.'),
(4, '"Na linii frontu": Trwa walka z ISIS. Nasila siÄ™ konflikt o wpÅ‚ywy na Bliskim Wschodzie', 'Walka z PaÅ„stwem Islamskim moÅ¼e doprowadziÄ‡ do wzrostu wpÅ‚ywÃ³w Iranu i Rosji na Bliskim Wschodzie. Dr Marcin Andrzej Piotrowski zaznacza jednak, Å¼e region pozostanie niestabilny jeszcze przez wiele lat, a kontrola nad nim bÄ™dzie bardzo trudna. ', 'RywalizacjÄ™ z Zachodem uÅ‚atwia sojusz iraÅ„sko-rosyjski, ktÃ³ry spajajÄ… strategiczne interesy. - SÄ… one znacznie szersze i powaÅ¼niejsze niÅ¼ samo utrzymanie ekipy al-Asada u wÅ‚adzy - podkreÅ›la ekspert PISM. Czy interwencja zbrojna przeciwko PaÅ„stwu Islamskiemu stanie siÄ™ poczÄ…tkiem gÅ‚Ä™bszych geopolitycznych zmian na Bliskim Wschodzie? W tej czÄ™Å›ci Å›wiata coraz mocniej krzyÅ¼ujÄ… siÄ™ interesy Zachodu, Iranu i Rosji, ktÃ³re chciaÅ‚yby zwiÄ™kszyÄ‡ swoje wpÅ‚ywy polityczne i gospodarcze. Teheran, ktÃ³ry nie ukrywa mocarstwowych ambicji, skierowaÅ‚ do walki przeciwko PaÅ„stwu Islamskiemu kilka tysiÄ™cy osÃ³b. Od wrzeÅ›nia 2015 roku wÅ‚asnÄ… operacjÄ™ - w Syrii - prowadzi takÅ¼e Rosja.\r\n\r\nU progu interwencji przeciwko terrorystycznemu "kalifatowi" zaczÄ…Å‚ formowaÄ‡ siÄ™ sojusz, w skÅ‚ad ktÃ³rego weszÅ‚y Iran, Rosja i Syria. PaÅ„stwa te podjÄ™Å‚y takÅ¼e prÃ³bÄ™ stopniowego przeciÄ…gania na swojÄ… stronÄ™ Iraku. Z drugiej strony, walkÄ™ przeciwko PaÅ„stwu Islamskiemu prowadzÄ… paÅ„stwa tworzÄ…ce koalicjÄ™ pod przywÃ³dztwem USA. DziaÅ‚ania Teheranu, Moskwy i Damaszku zmierzajÄ… jednak do podwaÅ¼enia pozycji Zachodu na Bliskim Wschodzie.'),
(5, 'Naukowcy piszÄ… bzdury, ktÃ³rych nikt nie czyta', 'Profesorowie spÄ™dzajÄ… zazwyczaj od okoÅ‚o trzech do szeÅ›ciu miesiÄ™cy (czasem dÅ‚uÅ¼ej) na badania i napisanie 25-stronicowego artykuÅ‚u, by opublikowaÄ‡ go w akademickim czasopiÅ›mie naukowym. ', 'WiÄ™kszoÅ›Ä‡ z nich odczuwa dreszczyk emocji, otwierajÄ…c miesiÄ…ce pÃ³Åºniej list informujÄ…cy, Å¼e ich artykuÅ‚ zostaÅ‚ zaakceptowany do publikacji, wiÄ™c zostanie przeczytany przezâ€¦ Å›rednio 10 osÃ³b.\r\n\r\nTak, dobrze PaÅ„stwo przeczytali. Statystyki z ostatnich badaÅ„ wyglÄ…dajÄ… marnie:\r\n\r\n82% artykuÅ‚Ã³w opublikowanych w dziedzinie nauk humanistycznych nie jest cytowana nawet raz.\r\nZ tych, ktÃ³re sÄ… cytowane, jedynie 20% jest rzeczywiÅ›cie czytana.\r\nPoÅ‚owa artykuÅ‚Ã³w naukowych nie jest nigdy czytana przez kogokolwiek prÃ³cz ich autorÃ³w, kolegÃ³w, recenzentÃ³w i wydawcÃ³w czasopism naukowych.\r\nCo wiÄ™c jest przyczynÄ… tego szaleÅ„stwa? Dlaczego na Å›wiecie co roku publikuje siÄ™ niemal 2 miliony artykuÅ‚Ã³w naukowych?     '),
(6, '            Boom kredytÃ³w konsumpcyjnych nadchodzi, roÅ›nie ryzyko i ich koszty', '            Popyt na kredyty konsumpcyjne roÅ›nie i banki zaczynajÄ… udzielaÄ‡ ich peÅ‚nÄ… parÄ…. Mimo wzrostu zdolnoÅ›ci kredytowej konsumentÃ³w ryzyko tych kredytÃ³w siÄ™ zwiÄ™ksza. RosnÄ… teÅ¼ ich koszty, ktÃ³re ujawniÄ… siÄ™ w peÅ‚ni, gdy zacznÄ… rosnÄ…Ä‡ stopy procentowe.', '            Banki postawiÅ‚y juÅ¼ dawno na sprzedaÅ¼ kredytÃ³w konsumpcyjnych, bo popyt na kredyty ze strony przedsiÄ™biorstw byÅ‚ przez ostatnie lata niewielki. Ostatnio zaczÄ™Å‚y teÅ¼ dostrzegaÄ‡ ryzyko zwiÄ…zane z kredytami mieszkaniowymi na zmiennÄ… stopÄ™ procentowÄ…. Nie bez znaczenia jest teÅ¼ to, Å¼e kredyty konsumpcyjne charakteryzujÄ… siÄ™ najwyÅ¼szymi marÅ¼ami.\r\n\r\nBanki wyczekiwaÅ‚y konsumpcyjnego eldorado juÅ¼ od 2013 roku, kiedy to wzrost gospodarki przyspieszyÅ‚, sytuacja na rynku pracy zaczÄ™Å‚a siÄ™ poprawiaÄ‡, a stopa bezrobocia â€“ spadaÄ‡. Lata 2013 i 2014 przyniosÅ‚y jednak rozczarowanie popytem na ten instrument fonansowy. Sytuacja zmieniÅ‚a siÄ™ dopiero w 2015 roku, kiedy nastÄ…piÅ‚ nominalny przyrost stanu portfela kredytÃ³w konsumpcyjnych o 8,6 mld zÅ‚, czyli o 6,5 proc. w stosunku do roku poprzedniego. SprzedaÅ¼ nowych kredytÃ³w konsumpcyjnych w ujÄ™ciu wartoÅ›ciowym ustanowiÅ‚a historyczny rekord. Banki udzieliÅ‚y 9,8 mln kredytÃ³w o Å‚Ä…cznej wartoÅ›ci 78,6 mld zÅ‚, a wiÄ™c wyÅ¼szej niÅ¼ w 2008 roku.\r\n\r\nW 2016 roku rekord zostanie wyraÅºnie pobity. TrwajÄ…ca juÅ¼ trzeci rok poprawa sytuacji gospodarczej zachÄ™ciÅ‚a gospodarstwa domowe do lewarowania konsumpcji kredytem. RÃ³wnoczeÅ›nie program 500+ powiÄ™kszyÅ‚ zdolnoÅ›Ä‡ kredytowÄ… znacznej czÄ™Å›ci gospodarstw domowych. ZamroÅ¼one na osiem lat konsumenckie potrzeby zaczynajÄ… ponownie dawaÄ‡ znaÄ‡ o sobie w coraz szerszej skali.\r\n\r\nWysoka rentownoÅ›Ä‡\r\n\r\nWedÅ‚ug danych Komisji Nadzoru Finansowego (KNF) w ciÄ…gu trzech kwartaÅ‚Ã³w 2016 roku nominalny stan bilansowy kredytÃ³w konsumpcyjnych zwiÄ™kszyÅ‚ siÄ™ o 8,2 mld zÅ‚, czyli o 5,9 proc., a rok do roku wzrÃ³sÅ‚ o 7,7 proc. To znaczy, Å¼e przyrost akcji kredytowej w tym segmencie byÅ‚ o ponad 40 proc. wyÅ¼szy niÅ¼ w analogicznym okresie 2015 roku.\r\n\r\nOstatnie dane NBP pokazujÄ… wzrost stanu kredytÃ³w konsumpcyjnych w ujÄ™ciu rok do roku o 7,4 proc. na koniec listopada 2016 r. To potwierdza, Å¼e nastÄ…piÅ‚ przeÅ‚om. Rynek tych kredytÃ³w osiÄ…gnÄ…Å‚ dawno oczekiwanÄ… przez banki trwaÅ‚Ä… dynamikÄ™ powyÅ¼ej 7 proc. rocznie, ponad dwukrotnie wyÅ¼szÄ… niÅ¼ wzrost PKB. JeÅ›li nie dojdzie do zmiany bilansu czynnikÃ³w majÄ…cych wpÅ‚yw na uksztaÅ‚towany trend (a na razie takich zmian nie widaÄ‡), moÅ¼e to oznaczaÄ‡, Å¼e sektor bankowy znalazÅ‚ siÄ™ u progu boomu nie notowanego od przedkryzysowych czasÃ³w.\r\n\r\nâ€“ Jest rewelacyjny â€“ odpowiada prezes jednego z najwiÄ™kszych polskich bankÃ³w na pytanie Obserwatora Finansowego, czy trend wzrostu sprzedaÅ¼y kredytÃ³w konsumpcyjnych siÄ™ utrzymuje.\r\n\r\nPrzypomnijmy, Å¼e w planach finansowych na 2016 rok banki prognozowaÅ‚y przyrost kredytÃ³w konsumpcyjnych o 8,6 proc. Po raz pierwszy od lat bÄ™dÄ… bliskie zrealizowania dotÄ…d zawsze nadmiernie optymistycznych przewidywaÅ„.\r\n\r\nPoniewaÅ¼ akwizycjÄ™ kredytÃ³w konsumpcyjnych rÃ³wnoczeÅ›nie rozpoczÄ™Å‚y wszystkie banki â€“ i duÅ¼e, i maÅ‚e â€“ zaczÄ™Å‚y dziaÅ‚aÄ‡ mechanizmy konkurencji.\r\n\r\nâ€“ Oprocentowanie kredytÃ³w konsumpcyjnych zmniejszyÅ‚o siÄ™ z 9,5 proc. na koniec 2014 roku do 8,1 proc. na koniec I pÃ³Å‚rocza ubiegÅ‚ego roku. Rzeczywista roczna stopa oprocentowania (RRSO) obniÅ¼yÅ‚a siÄ™ w tym okresie z 16,8 proc. do 14,9 proc., a efektywne oprocentowanie z 13,8 proc. do 10,5 proc. ZmniejszyÅ‚a siÄ™ teÅ¼ ich rentownoÅ›Ä‡. Skorygowana marÅ¼a odsetkowa netto spadÅ‚a z 10,4 proc. w III kwartale 2014 roku do 7,6 proc. w III kwartale 2016 â€“ mÃ³wiÅ‚a podczas grudniowego Kongresu Consumer Finance Marta Penczar z Instytutu BadaÅ„ nad GospodarkÄ… RynkowÄ….\r\n\r\nMimo spadku marÅ¼y kredyty konsumpcyjne majÄ… najwiÄ™kszy wpÅ‚yw na poprawÄ™ wyniku odsetkowego bankÃ³w, jaka nastÄ™puje od poÅ‚owy 2015 roku. WedÅ‚ug danych KNF banki w ciÄ…gu trzech kwartaÅ‚Ã³w zeszÅ‚ego roku zwiÄ™kszyÅ‚y przychody odsetkowe o prawie 1,2 mld zÅ‚, czyli o 3 proc. rok do roku. Niemal poÅ‚owÄ™ tego wzrostu â€“ 502 mln zÅ‚ â€“ osiÄ…gnÄ™Å‚y wÅ‚aÅ›nie dziÄ™ki kredytom konsumpcyjnym.\r\n\r\n\r\n\r\nPrzy stabilizacji stÃ³p procentowych kredyty konsumpcyjne bÄ™dÄ… prawdopodobnie przez kilka nastÄ™pnych kwartaÅ‚Ã³w odpowiedzialne za dalszÄ… poprawÄ™ wynikÃ³w odsetkowych bankÃ³w, a prowizje od nich bÄ™dÄ… ratowaÄ‡ przed zaÅ‚amaniem wyniki prowizyjne. Utrzyma siÄ™ natomiast presja na marÅ¼e. GÅ‚Ã³wnymi czynnikami tej presji bÄ™dÄ… konkurencja oraz obciÄ…Å¼enie odpisami. WedÅ‚ug wyliczeÅ„ Marty Penczar do koÅ„ca II pÃ³Å‚rocza 2016 roku koszt ryzyka na tych kredytach lekko rÃ³sÅ‚ przez trzy kwartaÅ‚y z rzÄ™du, do 170 punktÃ³w bazowych. Najnowsze dane pokazujÄ…, Å¼e w II poÅ‚owie zeszÅ‚ego roku wyraÅºnie przyspieszyÅ‚.');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `articles`
--
ALTER TABLE `articles`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
