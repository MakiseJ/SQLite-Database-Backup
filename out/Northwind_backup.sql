DROP TABLE IF EXISTS `Territories`;
DROP TABLE IF EXISTS `Suppliers`;
DROP TABLE IF EXISTS `Shippers`;
DROP TABLE IF EXISTS `Region`;
DROP TABLE IF EXISTS `Products`;
DROP TABLE IF EXISTS `Orders`;
DROP TABLE IF EXISTS `Order Details`;
DROP TABLE IF EXISTS `Employees`;
DROP TABLE IF EXISTS `EmployeeTerritories`;
DROP TABLE IF EXISTS `Customers`;
DROP TABLE IF EXISTS `CustomerDemographics`;
DROP TABLE IF EXISTS `CustomerCustomerDemo`;
DROP TABLE IF EXISTS `Categories`;
CREATE TABLE `Categories` (CategoryID INT NOT NULL, CategoryName VARCHAR(15) NOT NULL, Description TEXT, Picture BLOB, PRIMARY KEY (CategoryID)) ;
CREATE TABLE `CustomerCustomerDemo` (CustomerID VARCHAR(5) NOT NULL, CustomerTypeID VARCHAR(10) NOT NULL, PRIMARY KEY (CustomerID, CustomerTypeID)) ;
CREATE TABLE `CustomerDemographics` (CustomerTypeID VARCHAR(10) NOT NULL, CustomerDesc TEXT, PRIMARY KEY (CustomerTypeID)) ;
CREATE TABLE `Customers` (CustomerID VARCHAR(5) NOT NULL, CompanyName VARCHAR(40) NOT NULL, ContactName VARCHAR(30), ContactTitle VARCHAR(30), Address VARCHAR(60), City VARCHAR(15), Region VARCHAR(15), PostalCode VARCHAR(10), Country VARCHAR(15), Phone VARCHAR(24), Fax VARCHAR(24), PRIMARY KEY (CustomerID)) ;
CREATE TABLE `EmployeeTerritories` (EmployeeID INT NOT NULL, TerritoryID VARCHAR(20) NOT NULL, PRIMARY KEY (EmployeeID, TerritoryID)) ;
CREATE TABLE `Employees` (EmployeeID INT NOT NULL, LastName VARCHAR(20) NOT NULL, FirstName VARCHAR(10) NOT NULL, Title VARCHAR(30), TitleOfCourtesy VARCHAR(25), BirthDate TIMESTAMP, HireDate TIMESTAMP, Address VARCHAR(60), City VARCHAR(15), Region VARCHAR(15), PostalCode VARCHAR(10), Country VARCHAR(15), HomePhone VARCHAR(24), Extension VARCHAR(4), Photo BLOB, Notes TEXT, ReportsTo INT, PhotoPath VARCHAR(255), PRIMARY KEY (EmployeeID)) ;
CREATE TABLE `Order Details` (OrderID INT, ProductID INT, UnitPrice FLOAT(26), Quantity INT, Discount FLOAT(13), PRIMARY KEY (OrderID, ProductID)) ;
CREATE TABLE `Orders` (OrderID INT NOT NULL, CustomerID VARCHAR(5), EmployeeID INT, OrderDate TIMESTAMP, RequiredDate TIMESTAMP, ShippedDate TIMESTAMP, ShipVia INT, Freight FLOAT(26), ShipName VARCHAR(40), ShipAddress VARCHAR(60), ShipCity VARCHAR(15), ShipRegion VARCHAR(15), ShipPostalCode VARCHAR(10), ShipCountry VARCHAR(15), PRIMARY KEY (OrderID)) ;
CREATE TABLE `Products` (ProductID INT NOT NULL, ProductName VARCHAR(40) NOT NULL, SupplierID INT, CategoryID INT, QuantityPerUnit VARCHAR(20), UnitPrice FLOAT(26), UnitsInStock INT, UnitsOnOrder INT, ReorderLevel INT, Discontinued INT NOT NULL, PRIMARY KEY (ProductID)) ;
CREATE TABLE `Region` (RegionID INT NOT NULL, RegionDescription VARCHAR(50) NOT NULL, PRIMARY KEY (RegionID)) ;
CREATE TABLE `Shippers` (ShipperID INT NOT NULL, CompanyName VARCHAR(40) NOT NULL, Phone VARCHAR(24), PRIMARY KEY (ShipperID)) ;
CREATE TABLE `Suppliers` (SupplierID INT NOT NULL, CompanyName VARCHAR(40) NOT NULL, ContactName VARCHAR(30), ContactTitle VARCHAR(30), Address VARCHAR(60), City VARCHAR(15), Region VARCHAR(15), PostalCode VARCHAR(10), Country VARCHAR(15), Phone VARCHAR(24), Fax VARCHAR(24), HomePage TEXT, PRIMARY KEY (SupplierID)) ;
CREATE TABLE `Territories` (TerritoryID VARCHAR(20) NOT NULL, TerritoryDescription VARCHAR(50) NOT NULL, RegionID INT NOT NULL, PRIMARY KEY (TerritoryID)) ;
INSERT INTO `Categories` VALUES (1,'Beverages','Soft drinks, coffees, teas, beers, and ales ','/       ! ????Bitmap Image Paint.Picture         PBrush         ?)  BM?)      V   (   ?   x             ?  ?        ???  ?? ? ?   ? ??   ?  ?                                                                                      Ppp                                                    %67wwwwwwSS                                                   45wwwwwwwwwwwwww                                                  !awwwwuuu555%wwwwwwwP                                             Awwsv7cwwWgwu''wwwv4a!                                                      P6wWuqpP   pqwuwwwwS4                                               W50             wwwwG                        !                       45    e45wupGttp  wWwqq                AGq5u  w0                      AvWw  gwwwwe`@@746@ $        @     Gvww 7wWwwwSr                  vvGg  @ WtpAgGt!@P CA@40 VQ Q 0 !pp7wwwwWwwq1wwwwwwuwq               G@Dq twwgwwv t%$ wwwGdgvu `% swwwwwwwttw''WGw wwwwwg3p0              B`  wBtwvwwwwugwwtdtefvwwfWFwgWSPqfswws7FwuwwwwW''vw Qwwwwgw`q1A            t@@GvwvwvpggwvtvVsGWPWg7VdtgWwrq%!gqw3w7wgwgugGewWq!7uwwwwgwS         g wgGwgvwwVwgwwww$wg`gwtgGGGggwVRVSww7dwwuvuwwtwwwwvww@4              we@f`PwvwewwgtpwGwwgGfFwsvttvwwwgw757wswGwwwwwtwGpqwwvwwv1qsR             0vwWggupvtwwGtwwttwpGgwegtgwewwwwwwwwww7fwwGetwGwwwwwvvwA7q                WD%geav gg GpGgpgw  GwGsFVDgEgvvwwwwwwwww7Vgwwwwwwwws wwwwwwwSR          wwq!RP0g wwGgBpG$wvWudp vswGgt''wwwwwwww6wwwwewwwwwwCGwuWwSwvvvwrw1             qpp @F wFvtpwAgt6Vww@wvtFVwgwwwwwuwww7Gguqaa$400wwwwWwu!  P         ! %gPpC@g  @vpWWwwgw wtGFFegwvwwwwwwwwwswgwa   7wSP1www7wswPp !         0 gwwaePG`G`tdwdpVVwgpwduttvwwwwwwwwwss7Gwws5wwwwwwwwWwwwwwgA A          wtA@ @gvvvwgwwdwuggwtGptfFvGwVwwwwwww7777vFwtwSRwwwgwwwwwcesSSQ00 0           aGvvtd`@@@@fgvvwwTvwpFdFDDVwggwwwww3ssswgwwgt$Gw7wq''wSWWu4$ @          0 P Ff@  45! egwgwpvwCwggwvwwwww77737VGvWSwpwwwe%''s 0         P  F  %45     t  wDs777wWgwwwww7777w7egWwww71ggpwwwVqw0   !          t                 wwwssswgvwwwwwssss3sVwgww7wwwqwtpRqvs@0            V`   su``             sww73777wwGgwwww73sSvfwwwsw7wqgpw57wWG51           0 e@    T         w7wgswsss7wgwwwwwgvFteeugGwwsw0wvVT5''5w       0p@ f       @             wwQFs73sswwwtvwwwwttdGdfgvwwww''vs7CWGssA C    P  p    gB            wvgww7sw773swgwwwwwgdVvPutwvWa WsWGwcw5RpR P!  p!e   @    gv@gvF@ ACAwwwgfvss73sswwwvvwwwvVGgGFdftwvu''a #1!''!a aAsVw  W G@ G@F   FwpPGwvqsW7Vvwvvw7swssswwgwwwwwedtgeGuvwqvptedts  PRqappwqswt 7p  vg`   @v wpgwwwgggggg3s37777wGgwwwwvvwGBFvtvwwgvwga1371%0swwww uwp   `v  d  dtg@wwwwvvvvvsw7wsswwwvwwwwwgGFvtgGwwt6pS2SRRq53SSCACqaq0wqwwww 7w vvgpGDf@ Gd wtwwwwggggg7s733ssswgFwwwvTggGtvtvSua1w5su%4stp5010 Bwwww7w Gwwpt`pFDD  F@pvpwwwwvvvvvs7sww77wwvwwwwwfVVeggvwupV1S4sps!6CCCCww7www@%w7p ''Dp @    d d g`wwwwggvwgw3s33sswwGgwwwwtgegDdtwgv4wqru7WwuwW5qqqqqqt3aacwwwsW7@7w4 F``     @ `vtwwwwvvgfvsw7ww777wwGgwwwgVVtgtgewq73Sw7wwwwwwwwwwww7uw7W7ww7sw GwsP tF D      Gw@ww fvwgv3333377wwfvwwwwwftvVFWGg`` 53u71wwwwwwwwwwwwwww7wsws7Sww@ qww  f@$d@     dg Gww wgfvfwwwwwsswwwwwwwvwtFFueggwSSsRSqwwwwwwwwwwwwwwwwSww7Sw7p vssP   GFdfVFdD @d  wp ggvww33333777wfvwwwwwgwwfvwegwqq1u!p77wwwwwwwwwwwwu7Sw7Swsww7 ww @GvgvGfvvgFv   w  vvgffwwwwws7wwugwwwww& wa557wwwwwwwwwswSwwwwwSw7sStp  PpDfwwwvwwvwwvVf  ggvww311 wwwfegwugp@@PQ@wwScSqsSqwwwwwwwwwWuwwwwwwwwsSu7w7   w`@@@@@Fggwap p  q      WwvwwvG$ S wq0u57wwwwwqssww7w7wSw752RSvDd&W @      @@ vw@ D  wu u        sGvgwted    0RQ50u37wwuwwwwwwswwwwswwSup55141q7153  FD   D    7p     w41         WwwVv` p   @D!0R153q5ww7w7swuwwwW7Wwww52P1aaqcRW%p  g  B@   Rsq      uw         SwveDt$@   @100rSSw7wWwWwSswswwwwwwp543C1q1s7  g    1u`       wq! 3uFgGFWp S455u7sssSww7wwwww7SwP3S5a410p0RSppC7          w   dsssvtVFwwwwsWsQ74511psswswWww7wWsusW7Www43u7ssg0q1cRs17  ssRq5t            F@   Fs7774Fdwwwwwt 777457sVSsSuwsuswwwwww3SswSWrwSqqcssWw  57wp            ` @gasssttWwwwwwpc 1!111s7w7www7wwwwwwwwwwu7w7wsw757sWGsswawqgwsW             @   3s3FFswwwwwt w373 Sw7wSw7wwwwwwwwwwwswwW7w7wwsgqw7sqgSSC75%w7                   s77D377wwwwp t 113173sWu7wwwwwwwwwwwwwww7swu7W7776qqe75rsg7GSsqt          F        ss6Cw3swwwwt0    !7377wwwwwwwwwwwwwwwwwWwsswsuuusS''3SSWSW77uv0         $@   @  73us3733wwwp          pGwwwwwwwwwwwwwwwwwswsuwSussswwwSW''6s77sSW75p         @`    @@s737ssw77wwp       d7wwwsuwwwwwwwwwwwwwsw77w7www775qqu%sG7!ws@          dF@     C73s37373s7wq  G4 ewwGqwuwwwwwwwwwwwwwsuwWw5w5wwWwWsww7w77Wwqwp     f  d Gg@     ss773w3ssswt wv    @swwwwwwwwwwwwwwwwww7sw5w7ww7sw7swSqwSWW757q      @@ F@`F      73ss737777wp  twB     CWwwwwwwwwwwwwwwwwwwWwwwwwwwwwwwwwwwsw77uwwp     F  `F       s7373ssssswv     P6wwwwwwwwwwwwwwwwwwwwswwww7wwwwwwwwwwwwwww7sww          @   @@  73sss777777p    wsWwwwwwwwwwwwwwwwwwwwWwwwww7wW7wWwwuw7wwwwwwwW4        @       3s73733ssswu     wwwwwwwwwwwwwwwqwwW7Ww7wwwsWww7ww7swSw7w5sW57W7sp       F @``      c73s777w773wpF   wwwwwwwwwwwwwwwwsw7wswwswww77u57Su7wwwwwwwww7qwP          D@D @    cs773s33ss7wtt    wwwwwwwwwwww7WswwWwqwswsWwwww7wwwwwwwwwwwwwwwwwp@          f`   C733s77s37wwpv @@wwwwwwwwwwwwwwusW7Swwwuww7wwwwwwwwwwwwwwwwwwwwww           @D@    sss73s77wwww`tf wwwwwwwwwwwwwswwwwww7sw7wwwwwww7swww7wwSwwwwwwwwP           F`    cs73s73swwwwptdp wwwwwwwwwwwwwwwwwwwwwwwwwwqsqwwwW7swu7wwwwswWw77          Dd  F     3ss73s7wwwsu`v wwwwwwwwwwwwwwwwwwwwwwwwwwwww77swsW7u7w5sww7wWwr@         `d        s77ss7wwwwsvtd @`WwwwwwwwwwwwwwwwwwwwwuwWqs757wWquswSsu7wwWwwwwwP        e@        3s337wwwwwq`ggGggwwwwwwwwwwwwwwwswwww7w7wwusussw6777Wswsssswwsq          F         7777wwwwww7pVGddawwwwwwwwwwwwwuuwwwuuuw5w75775w7WSWcW3WswWwww7wwP       @d`       3s3wwwwwwwq`dv@ wwwwwwwwWwusWwwwuuw7suwwuswwWw5ssw75w7W77Wwwsp        FvFVTd      s77wu7wwwwwtGDFpwwwwwwWwuswsW7qw77wwsww7ssssw5wSSsCpsswWWw757wp      gdt&f@      s3wpttwwwwwwegd''fwwuu7wWw75wwwWwwwuwwwu7wwwuwWwwswwWw7uwW777wwuwp      t`@@        wwqqaswwwsvvfVFGwuswwWw7Wwwqw7wwwww5sWwwsswwwsqsW7w75u777www5w7sp @     fBF        www vwGwwwwggggG@Wwwwwswwwwwwwwsw5swsww7wwuww7wwwwwuw7wusSu5w5www      @@d D       w7AGugwwwv$vvv`wwwwswwwswswwSwwwwwwwwwwwww7wwww7Sg7su5sgvwgsvsGq@$      F@ f      su wruwww @vgvqwwwWwwwwwwWw7wwWwwu7qwwwwWu555wwwWuwwwSWSsWWsW P        @@vDd    ws@WWwwpD vBVwsw7Wu7W5swwww7sw7w7wwwww7wwwwwwqwwwwwwwswWw7uww0   @          g@    ww%wsgww @ ` ge7ww7ww7w7wwwsW5wwwwwwwwwwwWwwwwwwwwwwwwwwwwww7sw57p @      @  @@      wpRWewww @@WswW7wwwswwwwwwwwwwwwwwwwwwwwwwwwww777u7wswVWRwwP          D$$@ d    wr@wWgwp `  susswWu7Suswwwwwwwwwwwwwwwwwww7wsw75wWWwwusWSss7qss p        FFD  g$@   wuVvWwP D@@d@GwswwwswwwwwWwwwwwwwwwwwwwwwuswww7Wsssssssw3wu5u7uw@          @  @d   Gw@wWww @BFF7Wwuw7wwwwwwwwww7wwwwwwwwwwwswwWsWW7WWWW%3rsCrw0  @          F F@   w%%gww GB@CswswWwwwwwwwsw7wwusWwwwwwuswssswssww76scrsssSV7qu           F      wGwwpv eddwwwwwwwwwwswswwwWqwwwwwwwwswsWuwSwuqsqu55qt5%7sssqws p          @`      www5pG`FP rwwwww7www7wwwusW7wwwwwwwwwwsww7swswuwswswsww45t5gssw @@               wqqSVwF $puwuw7wwswuw5sWswwwwwwwwwwwwsWw7wwwwwww7W5wu55wswsqtu''q`                 wq57wvv d@''577u7suw7wwwwwwwwwwwwwwwwwwwwwwwwwusww7w7w7ww5wu7Wssqw @         D       wWwvt `d!CWWwuswWwwwwwwwwwwwwwwwwwwwww7wwwwwwwwwwwwwwww7wssww7Www0$                 wqtwwVvT%775swwwwwwwwwwwwwwwwwwwwwwwwwwwwwwswwuwwwwwwwwsuww7wsSwq                wuwvGg@@awwwwwwsw7wwwwwwwswwwwsu7wwwwwwwuwwwww7sww7wSwuwssSu77w7 @                wqqwwtgv 0SwWwwwwwwwwwww7wwwwwwwwwwwwwwwsssSqwwuwqwu7www7qwWwSuu5sSa  @@@@            ww vp 77sw7swWswsw7wwwwwwwwwwwwwwwwwuwwwwww7w7wwwwwwwwwsw77ssw5wS      @@         wsSwwP@Cuwusuww7wwwww7wwwwwwwwwwwwwwsswwwwwwwwwwwwwwwwwwwwWwww7sswr P@@@@           w5ww  `u7Ssww7wwqwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww7SsWqwW550  @   @ @ sSWwp ''swwu7wwSuwwwwwwwwwwwwwwwwwwwwwwwwwwwwWwwww7wWwwwSwSw''WcwqrRsA  @@       w557w PSSWww7wswswwwwwwwwwwwwwwwwwwwwwwwW7wswww7wwwwswwwwwSu75u''qwQsP   @   @ @  wqqwwP57wssww7wwwwwwwwwwwwwwwwwwwwwwwwww77usw7wwsWw7wwswwsw7ww7qw1647  a @ @  wSww 6wqsuwSwWwwwwwwwwwwww7wwwwwwwwwwwwWWqwwwwwsqwWswwwuwwswsSqwswvSSSq` p @@    5qwwvwuswwwwwwwwwwwwwwW7Wwwwwwwwwwww77swsu7wuwswwSu7swwuwwwwqusrSw7'' %  @@`@ wSwqwwwwwwwswwwwuwwwwwwwwwwwwwwwwwwwwWqwSuwu7w7swswwwwwwwwwqsww7u7pwScwC  RA   @ w7wwwww7wwwwwwwsw7wwwwwwwwwwwwwwwwwwwwswswwswwwwuwusw7wwwsw7wwu77u7qwSuuswWv  4 wWSwwwwwwswswww7wwwwwwwwwwwwwwwwwwwwwwwwSww7wwwwwwswwwwwwwwwww7wwW7wwsw77u77570    @   w7www7wwWuuqwwwwwwwwwwwwwwwwwwwwwwwwswswwwwwwwwwwwwwwwwwwwwwwwwwwwswuwww7wuwwwwqaa!acwwwqwwwwqw7wwwwwwwwwwwwwwwwwwwwqwWswWwWwwwwwwwwwwwwwwwww7wwwwwwsw7wWsswqwqsw7SwwwwwwwwwWwwwwwww7wswwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww7swwswwwwwswWqwSwwwssuw7sw57w5sw77w7wWswswqqwwwwswwwwwwwwwswwwwwwwwwwwwwwwwwwwwwwwsWSu7wuww7uu5sWuwSswswSusWusWWSwqqsW5wSWSw7WwwWwwwww7Ww7W57swwSwwwwwwwwwwwwwwwwwwwwwwswwwsu7W7swww7wwwwwswswsw7ssw7Swww7W57swSw7wwwwwwwwuwW7uw7wwwuswwwwwwwwwwwwwwwwwwwwsWwwwwwwwwwwwwwwww7wwwwwwwwwwwwwwwwSww7wwwwwuwwwq7wqssswwswwwwswwwwwwwwwwwwwwwwwwwwwwsswwwwwwwwwwwwswwwww7wWwwwwuwwwSsswww7w7swSw7wwwqAwwuwW7www57wwwwwwwwwwwwwwwwwwwwwwwwwwwswwww7swwwwwwuwWuwW7wwqsqsSwWW577WSeswww77wwww67sswW7w7wwwwwwwwwwwwwwwwwwwwwwwwwwswuqwW77wuww5u75ssw7wwsw77wwwwwwssswqu3v75sSwwWwwwSwWwwSwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww77w7wW5su7wswwwwww7swuwWw75755wRCwSWsw7wqsssw7w7Sw7SwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwuqSGssssw7qswqsswwwwwwsww7Wwwwww7w7s777w7wwwWww7Swwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww77w7quuwW5w7wwuuqswwwwwsww7575ququwqwSwquw7sSwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwSG557ssqsSqqqsSsswwwwwwwwswwwwwww7sw757577sww7wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww7wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww55                ǭ?');
INSERT INTO `Categories` VALUES (2,'Condiments','Sweet and savory sauces, relishes, spreads, and seasonings ','/       ! ????Bitmap Image Paint.Picture         PBrush         ?)  BM?)      V   (   ?   x             ?  ?        ???  ?? ? ?   ? ??   ?  ?       wwwww7SS171w5C0%S21sCqq57ss1qqqq!Sa1!wwwwpgeGGwegagtweew@@77sw  wwwwwqt55sSS4000!apSS1sS47Sq7qw774P1RwwweDrGgwgttvWpwvGt45uq 7Swwwwwwww1ss571pC!C10S1AqsTsSSsq1p01qwwwpfEvegGdwaGggwgAtG@W3A6wwwwwwsSqqsS7511%50qs771ss571w7775R7wwu$PttttwwwvvWwWGGtV u SQ0wwwwwww7qC5qsSF11103C51q1ssqw1qswSSqspssP1sWww4G`Tpa`G`wwwwwwvFww`Gt0 5!! wwwwwwwqsV553SqsSQSCw45wq0qsqwAq3S7wtv@`GDp wwwwwwwwufupFw`w@@0Swwwwwwwsq%13S75011143A553a7PsS1sq7pq7571st3s7www`@ dvwwwwwwwwwFGt5eGv wwwwwww55asu4qs7Rqqss5q7sW1qqsS75qsSswwt`FGFwwwwwwwwwwp@fwFw`u S0 wwwwwwwssq7RA10q`QS5u53W7741sSsssSsw7wwwpFdtuwwwwwwwwwwdwtWwp 51 ww7wwwu541a75q1c1q75171qssqq#SS555rSwwwwwwwwwsswwVtpd%gwwwwwwwuwwwRFWwwvw510wwsWwwwssPw17Q1Qa75SC0W75sw70wwwwwwwwwwwwwwe@dgwwwwwstwswwwtvwwtwq`5 75wwww550q1qssQ2C5s1q3Sq%qsPs3SW5wwwwwwwwwwwwww`d@wWwwwwwswwwwwBEwugqwAaq sWs5wwwssR%2Q5!3pq3Ss72ssW77wwwwwwww7swwwwvFd`@FG7wwwwwwwww7wugwfWvGB! 5wW77wwWa513sS75SQq11G15qaqw7Swwwww7wwww7wwwwwG@@VttwwwwwwwwwswsqvVwW7ppp! s51quwwsqsAsSSS51wc57qsqsSq7sswwwwwswsw7qq7wwwtD f@FFwwwwwwwwwwwwwugwwGGwAqa 0W7sww71151sSRGsSp7571cu5wwwwwwww7sw73qwwwpvP@`GwwwwwwwpwwssCwwwggGv!a1qq55wwq2SBSCRSS1qssSqqaqq7u7swwwwww77sw3q57wwwtDed@FwwwwwwwwwswwwwGdGtGq05%0wwwW51177u4r57773ssCSwwwwwwwwsw7u7swwwd`FFVWwwwwwww7w70wutwwdGv0! q57ws1sSS 53Sqqe1sqq5s7wwwwwwwsusS3s57wwwFT d vwwwwwwswsP wvvdpv@4 0 5%5!puwRqe51sqas7u3SsS7W1gswwwwwww7sssww7ww` @gWwwwwwww7 wugdt1 Rsww1Rw1q7qSwW7s53S3wwwwwwwwwsw7731153Swwvv@dV gwwwwssq  WfDVeegA!10 5!p1p75701sq5''57s577%5sSuqwwwwwwwwww777qs1qsw7w4Eddf@DDdwwu70 74`gFv@3R R1RqwsSPCsWp3RSs777wwwwwwwww3w7171q353Sww@ @v @gtq  dvtDV@10Rq 0p1!51q051a''3sqqqw1s@qsqqww7wwwwwwwwwsswsS3S7wwtfTpFD Dpep 0 VD@gfSq1 01R1@!qsa50CSQ51!16SSwwWwwwwwwww7753377wwsDf@@G@@  p$F@ VA00!CA0P0q5!w 51!SC@1RQp57S7w5swwwwwwssssqq3s1qqwwqE@D d`dGdTtdGdGFaq!0!1133Sq11p13S01sSwRwwwwwwwwsss7711711w7wvdf    @d d`  Gda!!!cCCA5SSsCS4R@sSSw7sswwwww757q1713Sq7w7wt    D @  FVF 01310415CR3@1%qq52qq101s77wuwwwwwwwsqsq777qq1wCSswwwfFDF  ` dBVFpQ40p !1RS C%155117 qSQ05!qc5sw7wwwwww7773s51113q77W7swWGFdF@eFD$A!01!S101141Qq@q512S ss57wwwwwwww7sssqss153SwSsWwwswwWGFDVRA5Q !!1R1RS% SacC505!1CSQaA577wwqswwwwwws7ss15175775%sqw7577C!! !0111qA!q514S551a SSsSspwwwwwww7w7773175s@SqSqsRW77Qs@ps50! 11%1q%7$0Sqq5R''qp10100p5577wuswwwwwwssW3qqq1q31s5757%pS''RQ3!5qScS10S1s551  sqw7swwwwwwsw73w31q13SSCAr1ps551pq52P00q 1C073557q11`1p10q7qw4wwwwwwwsw7s77153q$355 qpSS qCQ1q0P0Scus1! 1q7777q7wwwwwwwwwwwsw731SqtpSS!pWrSSPs1!a!1!q %103%!qaa7C151sVSwwwwwwwwwwSA0pq3 `10A00S101A!0uswsRQ5%0 51s7sW1wwwwwwwwwuqq17551q %52a1aQ1 001Ps0qp1q!5S51q55q77swwwwwwwww71 QS150 0 q!$0  Q1 000 wswqu1s1501S!053s7Sw1wwwwwwwwwwQ   3S1qCA01001 1! s7w71sS 1aSaP13Su3wt7wwwwwwwS! Vr 11! 1 0 !0 1wqwwqGR70SRS1p7!W7u7w7wswwwww5SU71Q qw101 !   07ww77s57S3151q1P05sSwsw7qwwwwwwsQ53Qq pSa0pP1  wwwwwSq1spqc1SR5#!3Cw7w7SwWwwwwwq1q15771R 1a12!1  0w7wwsqq7113500%3SW5sqswssw7www1wSS53SW11 %!RqQA!cR!!  wwswwV7qs1spqsR1sC41sswwwwwWwwwws11qswu1sqP010Cq3S1wswwss10!! wwww731551p11qs5%wwwe!''ww7w1q5545575uq1 Q52P1Q1swWu%5w001swwwwus5sS1sCSqsq7CSpP @@www7q715wwwS7P  7Q1Gq7wuq4      Au11010Q  wwwwwsE3551%537SC!5517wp   wwwsQqsQSwu5s1 S527wwC@        SQA wwwsw53W1sR3Asq754SSwG gV wGw5772Qu7Ww1w5 1sQgwqa@         0 wwwwww4311q531q04177ww@dVUpGwu1SQwsqq qsww          0wswww7qsSs0Su77S1qwuudgGgefugw7Wuwww7s  q7wwQaP          2r   wwww7wqs5414131qqqp50qsw7wwWG@VUgVpsswCWW  wwwwsW4044  P      ! ! wwwwww57SsSCSSS75CSSwwwp `G`fwg@swwww1su0    wwwu50QA   @p       P  wwwwwssSp730571q7R1sw77wwwtvPFGFVwwwwwwwwwwws     wwusS07Au51s     q q wwwwswu7q5sqa73S5Swwwwwtd@veGwwwwwwwwwuu        wwwu5wWP1RW0p      1 !   ww7WwssCqqqu53Cqsw7wwuvpfpDebWwwwwwwwwwwsp       wwwwsSpwWuav5q       S!   www7wwsS3Sas%773sq57wwwwuPFVDvvtwwwwwwwwwwwq0   wwwSWwSq''B p    0   7WqwssSCq531Qqs57w7wwwGfGFwdGGwwWwwwwwwww7 0   wwwwww5t %      ! 0  w77ww7Rqq2S577770swwwwwwu$$FGegwwwwwwwwwwwwqA   wwwwww0ap     S1 qw5qwwa171qasSSSsswwwwtvTGgDdGwwwwwwwwwwww  wwwwwupWAAa` q    Ap 0q   77wss471q7sssw7wwwwwwwwFtD`Fwwwwwwwwwwwwqp    wwwWwW50RC 4    q 5qws7SSsSq1a71qsw7wwwww`Beegwwwwwwwwwwwsq   wwwww0W%%@ p!     P71   77wW75!5#s5ssqw7w7wwwwwvPFT`FFwwwvuwwwwwww71 wwwwwW0pP P    01   qw777sSWQqs455777sWswwwwwugtfDewWwuwwwwwwwwP    wwwwwuqS0@     1    7sSW577s3q3ssusw777www7vVGE FFuwtwwwwwwwws10 wwwwuwwP4RB     p5!  71qsssSqq451s7SsWwww7swudpDewwwwvVwwwwwu  7wwwwwWqaRR        sSw3Wsw5571s3Ssw7sw77777su7wwDtvpFwwwuwwwwwwwq0 wwwwwSuwA@        p 3   1q5s1w7R1q53qssqqwwSqswvvt`D`DwwwFwtwwwwwq1 wwwwwwuwua41     !!    w3s5ssw7173SSsscW75777sS71wuap FVwwwwWGwwwwwq1  7wwwwwwvqsQAE        q   5sqw1wsSqa537SSsssw51sq7wVTT  FwwwtpwWwwwsS7wwwwwwwSWWR      !   s57sw57sSSS73qsSsssSw1sweg   @wweeewwwwwu11wwwwwwwwu65!A 4         1   qwS57sssqps75qu7777751ssqwurVP tgwWwwgwwwwsq17wwwwwwwwwwWWWP                7s5sw7ww715qs73qsssSSsw1573wg  @ wwvwwuwwwwsSwwwwwwwwwwwW571           1   S53Swsq50S3S577777w7wwpa@t wwWwwGwwwwu17wwwwwwwwwwwusGu7wqt            0    5sc5sW7s''77753qqssSws3sswqa@G7wwgWFWwwwsSwwwwwwwwwwwwwuwWv             1    3qsw7ssqsSSSsG777wwwwwu swwwVwwwwwwwwwwwwwwwwwwwwwwww             0 !cC57sw7''3s7Sssswsw7ww3q@ 77wwwwwwwwwwwwwwwwwwwwwwwwWwwaB                q1sSswssSsq747w777sssw77777wswwwwwwwwwwwwwwwwwwwwwwwwwwwwP!                0C57ssS56s573Ss3wws7773sssssw777wwtt$gwwwwwwsqs0!7wwwwwwu454              1sassusu3SCSsS7w33ww3sss73s773swswwV Pwwwwwwwv  wwwwwwSRR%              ! 015w773q2377s377s373373s773w7sww Gwwwwt      %wwwwW               as5s157wqR5s3w373337377777sswsw7wwCWwptwWwww        SwWwwqaqC               ! 1Ssqsss%33s3733s73733s7s7737swwqwwPwWGww       7wWu7P                1 5sqq%57s50Ws773333333ss73777wswwwwuGW%wwpGwp         WwgwWqpp!             ! 1SS477s3773s33s333ss33sssss77wwwww4p%twwp         wWWwwQ`               0100qq543SSw71qss3333s73337737777wwwwwwwGSRuvWw         PWwwu5q%%A              sww323#3#7333377733ssssw7wwwwww W@w        A 7wwww5q                 0 0q054Cpqw773333333333333ss77777swwwwwwsurW@G         uwuwWSPQ             SQp1s373s333#333s73s3s33ssssswwwwwwwwGtg gwp         t4www7SP              11!!0CSg3w73#33333#33333s3777777wwwwwwwvtv@B@ GGu        WWpWSU1AA           0Rp173s32333#33333333s773ssssw7wwwwwwugw GtwvpW      vwwwwsG        5      P5!pPSs73333#3233323s3333s77777swwwwwFFDd tpwPP qauewp WSW1aS          pq%732s1323233333#3s33777773s77swwwwweg@  tv@ uvw Ae Agwwwuwwwqu5!@    7     BA3SQ0!0s3223333333333#33333333w3w777wwwutt  eepGVR@WGpWwwwwwwWq41   t0    tu0qA2s33232333#23333s73s7773w3swwwwwBFt G  dpGv wutwGtWwwwwwwwu4q1   R   utC1000322333333#333333333733ss3sssswwed@@@ GD Atw$tvwgwwwwwwtsSCQ P5p    d$@133233233#333233#337377377777www@  g    pGwwWptuwWwwwwwugWup Q! 1P    p @a23332333!332332333733s3sssssswwDG   @Ad`gGGwWUgwAvwpwwwwvVtgSA0 aC4   @  F@! 3203321333#333333737777773ssw7tgg@F  dF@gVwtwwguwFuDtwgt$gtrW%1CRPq     d'' G!01!3332332333333#33337333333s773wdD @  @  FwwppwVvwugwweut%dwVpW5pWqqA    F@gg@ 033123323#33323733777777777ww@@   F@ pvwCDuGtCGtuvpVWt dW7wSC !G0      D!0322333333333333373s33s3s7777d    `@B @ggvtw$Wptwew@gvG@Acquu% sP BVE  e !031123#33333333733s3ss773sswwE@ D @@ DwGtuww@P`@wDwGFWeGG`GvDWwwR 5FtG@  F023s333#23#233#3733s373sss77tfD      FgvvvwgpgT$wGrPFVVwe@G`dSQwwwwwp TpG@  G  12333333333333333773ss7377ww       @  vtwggwvWW`vTwd Fp@ wwwwwwwu v     @vF s303#21333332333733737ssssst@@     @dt GvvvVWeedvEeged@ud%g@p@Gwwwwwwww@ dv T De 033331323#21#333s3773ss3777wp        Et gdrG Ag@t $GVpBGGgwwwwwwwwv pDF  @03s#33333333333s33s77777swe@    @ F F @ @ Tpp@` G Gdd G@ Cwwwwwwwwp@pGpt t  t!33173#333333#3333ss3s3sss7wd    @ t `6t @vdt v@E`tepWdtTwwwwwwwwp@D td@Ft`sq323#3#377373373w777wpF@  @ @@  @@gD gdG@RG  tfEdwBwwwwwwwwp ppFp@t017p2233333333#3733ss7377sst       tVr@`  @dpgve`edd @$pDewwwwwwwwp@F Wp` @ g@q13033333333333s373sss7w@@ @   F@Dptt@ed `E@Edte@t@dv wwwwwwwww@ gAGp`@`0p2173323#2#3373s3ss7777w7t   @  @@ p Dd`pvVGP ` @GD G@Ge wwwwwwwwt    GF@d@@10s3333333337333s33s3sssw F `@  pFF@Pade@V VD@Ftedt @dwwwwwwww@ B  v  C@ 17SS7#333332333s7777777wwp @d   D e `F t F eDd Fppdpt@dp@wwwwwwp @ w gD@D0s1''3#23#2337333333sssswFd @D e@` d`FGG@P  F FG@ Dt@dF@$R@d wwwegD @@GwpGD`Vp SSs33333333337777773sswwD    vv@GFT  tdGFT@tpE Dg@@Fte@Gd G@egvVVB@d `wwDg@1''1533333333333333333sswwt  D@ dd FFFGggfte`@@F vwgggwv FF@efvddddD @@@Gw` @`                �?');
INSERT INTO `Categories` VALUES (3,'Confections','Desserts, candies, and sweet breads ','/       ! ????Bitmap Image Paint.Picture         PBrush         ?)  BM?)      V   (   ?   x             ?  ?        ???  ?? ? ?   ? ??   ?  ?       30sW7ww       `` R  1pp@u7cu5qrQ!q5qp57  R  p  Cagwww33sqqw777w  0Wsw        P 3113pPsC @  aat3QCVSuqw1qwqp`@vwgugpd%47wwssWS777SSs7311#Ww  Cq vwsgwwq1SwswpCSapqqwsV7775cwqw7tsWwqw5cw gwGgwsu1373Ssq77S110057P wSGqw171q3wwwpsGrQawwwwsRWWw5swqu7S1swq`''wgwww65g7su33qq575ssSw7q01p1g sgwvw31Q7wwwwpwvwwwwqu7su7sWwsW7W5wwVwwvwwecWwgu3u573sqssS7sw111011111qpGvpwsSS13S1wwwwcwqwqwwwwwsSW7wWww7wsS55Ssw7wwwwwaw7SW3S33S77S77q15!13!17 77wq111qwwwwwwwwwwwwwwsSSw7wwwwwWs6Wwwwwwwgwtvs7s73SswqwwS1q30GvWg317wwwwvwww47wwwwwCuwwsWwwwww75u0sWwwwww`qww71sqs73S7ss771105S11sCwww113q51Swwww57wwwwwwwwwu7sqwwwwwwwww7wwgwwwwwqs13s3qsw775sw11231 ''qs137wwwwwWSwwwwww6Ruw7WwWwwRWSqqww56w%5%ag75531q77qqsu711!111q1  `Ag111q11wwwSSsw6SWw7su7RvwW7w7swwsgWwqwwwvR57533q33Ssu7777s0101''3S11q11qw77w5qu7sRvWvRt7sw7wwsw7ScqwwwwSRsS1ssqq3qsw1qw71!0111151` vPw1qS1wwwqqcv7wvwSqssaacGwWqwuwWwugWwcSa47G3S71353ssssS1s13 %1q31q1q1wsWw7u7SCSswvuue7SW67wswsw5w7w6wwwgvCqs3s1ss53Su7q3S7101!ssq114vwSSS15sussSSu7wwVwCRrSG445vwSuw7WwsWwqpqg1q1s571s3s3q73111!3P0qe1111S11suswuwwst7w77wu6sCqwsSww7Wsswwwwwwwww6SS371ss57113!50033S11!agssSs11Swswwssqu7qwwwwwrSW464wwwwwsuwWwwwwwwwwW733171s13311133Squ7wqq1111wwwwuw7qwwwwwwwv4wWswwwwwwsw7swwwwwwww7w1333sS13311!w3114s111qw7wwSq3q1117wwwwswwwwwwwwwu5wwwWwwwwwwwwwwwwwwwwwwww3q5573111311wq111s13113www1s11wwwwwwwsqwwwww7w7777ww7wwuwwwwwwwwwwsWwq133s1w3q`q!00SC7www111qwwwwwwwwwwwwsWw7wwtw7wqsssuwwwwwwwwwwW731175113wgp 15131w7u111517wwww7wwww555wswwsw7usqwwwu7wwwwwwwwwswsS11113s111q`ww  rC7117qww51q7qwwwwwwwu7www7wSSw5qw7wwwu7ww5wswwwwwwwwq313311gpwp    7113SS7wssQ51611wwwwwwsqsusw7w777qs71w7Sssw7ww7wu7wwwwww73133153Sww44     11!qsWq1q113Swwwwwsu7wswqqqqq7SSW757w77w7ww7wwwwq1s301113w7qwpSp    77q11q1q17wwssW7w57q7777q353r1qsSswuwwwww7wwwwww31W1s44A  q5151577S51q1Swww7wW7uw7swwsSS3S7575777wsqqswwwww13111s3sWSCSc11q733151cw7wSwws1751!11qqq1!31!wwSswwwuswwww131 01qs11u%u1s1SS7q551s1S3wsw757SSqsS31111w5sswswswwq1111q7711ssq7w1sSsQ3SWwWw71s31111su7swwsWsws133131311557sq1!q17q1537q1q71773qs11! 13q577u0wws11313113swS10ww711Ss1q7qq1Wwq1   !wwsw0sw313q11q1P11p501w511q1q11qq1511!1q11s10 1sw5wWq3q3111RRS53s7711111!11! 7w7sqs753533P1551sS531151151q713!!qssw7we1qs535130s1!3SSSS3q5511111557Swww013S3Ss11!7113Q15!3S1qq313!1  1Ss7SpRq133S3S3s3Q1qrSSq1q3Q503s1qs1111R  !p01!53swsqG1131s57711q33311q37qq1111111 1031ww21113113s01!53111q%135171551 111151wu113171q57A1!1111SWsSq11S1! 1011s57ps1111qs31s7SS1q53S!1137swq13011111151q51q5115s1sw31!1!sw103!11sa`3s53113S751s3qs11 11  31qswpwwWu11pp`pp  s1SSQsq51sWs7110   51wWw7sw7wwwwwpSG%51s171SSs1wS1Q 1  # 1wp7wwwwww7wppw%wwwa40Rw555571sq7q7w111311    qswpwsuuwWwwwww6wvqwu sSsq1qw5557171s1 03017swwtwsw47Ww%wwwwwvp6W7u757SsSss17u1q  1 3qwsuwwwSwwwgvwgwpwSsqq7Sw7qqq53107wQ  3  757wwwwwWwwwwwwwwwppw5577ssw51qw773110s1   1!17u''wswwsWwgvwwwwwpRS75773Sqq31311Wq  p    3SwutwwwwSww%pwww%1qSssssqswSWqssQ113q  1 1!1#ww7WwuwwwwrWCe1q77qsu557v77300 0Sww7wwww%5 qwSCSSs5swpquss11  00q7wwwwwrBWv46q%151qswWWssu111111qwquwu5w5u4qwwSSw7sw7sSWww111 01wwsCwwwBacCpvrqqwwwwwwg7sqq111wwwuwwwuRWwwww55vwwwwwwqsW5ss     !swwwwwwWac''wwwwwwVwsWwwwwwwu7w5511      17sSwqquwwRWPwwwwwsswwswwwwwwswsw31!    0a!q011qwqwww''ww''wwwwtwwwwwwwwwww57S1  1q1%1wRW7wwPwvWwwwwwwwwwwwwwwww7sq7  01u7wwWwww''57wwwww7wwwwwwwwww57Sq5q1!    10!!54!7u7SwSWvWCGwwwwwWwwwwwwwwww73555 11 5!Sp03wWwwww57t7wwwwwsw77wwwwwwwWqq1ws311Www711a560w7wwwwCGAg6Ww''Wwwwwwwwwwss17111sw7w1SS65qs1q7wWwwwwt746uerw7Wswwwwwwwww77151 w7wWs 1!3C7!pswwwwwAAasswvwswwwwwwwwwwwwq1111ss117sw''1 1q51S!1uwwwWww46!agVu5wwwwwwwwwwwwqssS17wu711wq1su!qsq1q11Sq377wwwwwAaRPqcRw7wwwwwwwwwwwww110sQ3S553pSsq57uS0WwWwwww!aRwwwwwwwwwwwwwwwwssWsQ13S051w''w7wq%77051!17wWwwwwwRPu4wwwwwwwwwwwwwwwwwW37s51A0!%Q7sS10Sww5!1p!7wsWwwwRvsGwwwwwwww7wwwwwww7qq1u111R1!Q1%Q4ww1Sq1qR1q3WsWwwwwu4st7ww7wswwwwwwwwwww77553q3111S51S7www55wvsuwwwwwwwwwwwwwwwwwwws0S1!1!1%15 1Q1q0101%wwwWww7stwcGwwwwwwswwwwwwwww7wq11S11!11170501wwwwWwwuw7W7wswwwswwwwwwwwwwsS10!!!0wqss1011!qwwwwwWwcW''Wwwwswwww7wwwwwwwwwwq11q117sSq!q0!0u!1wwwwwww7WrW''wwwwwwwwwwwwwwwwsw7151001!wwq000s!sWwwwwwwwW''u5ww7swww77swwwwwwwswSSqqp1wwqWq01sqq7wwwwwwwrW''cSwwwsw7wwwwwwwsw7qw77SsQ 11w7170SQ17101wwwwwwuwu5Wwww7wwww7wwwwwwwwswww 1wsS1Rwq121CqqsSwwwwwwww''cswsw7w77w7wswwswwwwsWw11q1%5007w11!!515!0!130q1wwwwwwwwWwwwww7wswwwwwwwssssw7wq01qw1Rs!0P1S7q7wwwwwwwwswwwww7ssw7wswwwwwwwww3wwS11!wqs1011q011!wwwwwwwwwwwwww7w7w7wswsw77w7777ww115SQs!r%0!7wwwwwwwwwwwwwwwwsssW7wswwww7wwww7www!110q7!7q5%5!0q1q0175wwwwwswwwwwwwww77w7swwqssww777qwww1W7sS5q1sW1111RQW7wwwwwwwswwwwwwwwsssCw7swwwswcwssswwww11sW551!0w1qRS1QpsR1sW773wwwww7wwwwwwwwwwsw55wwwwsW7sw77w7ww1wws5551!  1w50500153usWwwwwwwswwwwwwwww5ssswwwwwwwwwqsssw1wwqss51sSq0p01 P1qR!51p7S511aqS1swwww7wwwwwwwwwwwsw''77wwwwqwws77wwww1sw1sS1w1!!SS131swwsw7wswwsw7wwwwwwSW545ww7wqqwRsswwwwww1S1sW51s1Aq011!Sqw557wwwwwwsSww7wwwwwwwwsw77''7747uwwwqsswwwwwwww1sS755500!57qw7qq7www7w7wwwwwwwwwwwwwwpwsSCesw7SW77wwwwwwww17qswSSSsQ1q100qqwSqw3Swwwwww777wwwswwwwwww7s52wwqAw7''7wwwwwwwwww3SSsq77w0001sq157sw7wswwswwwsww7wwwwwswwsssv3SSQw0PsSswwwwwwwwwws7557Ssqsq7703qw51qwW53SW7w7wsswsswwswww7wwwww7w451r7''w541swwwwwwwwwwwwsSSsSqwSw1105WWsSSSq713W73q1wwwwwwwwswwww7wwswwwwws67557swu577wwwwwwwwwwwwq17qqwq7575sSCSq7w777577wq3Rwww7ww77swwwswwwwwww7wwwqpscW502RV77wwwwwwwwwwwwwwQ77swqw53W51qqqu5757SqsSwSWwqsqcqwsww77wwwww7wwwwwww7ww7ww7%7#cSS517wwwwwwwwwwwwwwssSSu1w7SwsWwssSqsSu777357qsSqpgRBGwswww7sw7wwwsw7wwwww7www7qw7%!cwwwwwwwwwwwwwwwwuwsw7w1sQ757w75u77757SWS131ss $sCwsswwwww7w7wwww7ww7wwwww77wwwwwwwwwwwwwwwwsgwSSsqsSqwww3575qqw7s17   t4w5wsw7sww7wwswwwwwwww7wwwssswwwwwwwwwwwwwwwwwwsGW77pqu7577usWSqsswss5551!at!0    7sqw7ww7wwwswwww7wwwwwwwwwwwswwwwwwwwwwwwwwwwuw4rwusqwSqsSSs73qsSu1qqusss54q  BqbG677cswssssww7www7wswww7w7wwpwwwwwwwwwwwwwwwwswSWwwwwpsS77SsW57w773517 pqBS`  wqw7swwwwssw7www7wsw7wwwwswwwwwwwwwwwwwwwwwwvqwwwwwP@`1!1qw7qs1wq11414t54AawrvSccqw7777w7w7wwwwwwww7w7wswwwwwww7wwwwwwwwwqgwwwww''7Wgsw1`7cCC@4w7vwa qa pwW77qwcugRqsSwwswwsw7w7w7wpvwswwwwwwwwwwwwwwwwwwwwwwRVwSg151w`rwwt4wgwwtvpww7gwarr3w7777swwwwswwww7W7w7aswwwwwwwwwwwwwwwwwwwwwwwwwsWu''wqrSpqusugcrSw4wwwwru4wwvwwp7wWsssR5#swSwswsrwsSSww5wswsww7wwwwwwwsw7wwwwwwwqwarWwwwvppwvwwswVGwwww SgewwwwpP327Cppsw5ws67wsww46wvp vw7wwwwwwwwwwwwwwwwww7wwwwAv''pwgw0pwswgwC7''wwwwQ$7vwWwrwe05777Swqp7t7sSR swswwwwwww7wwwwwwwwwWwwww6!GwwSW@%%wwv4PPCw`qw''P  43 55677u7wcGv7vp u''7sw7w7swww77wwwwwwwwwwwa ''c   %v   twg`6 SG   c407 qpwu%57 swwwwwwwwwwwwwwwwwwwwwwws u%4 0CRCpPpWg`  P ''pC@@QCppPC7@pwrsCvppp Cw577wwwwwsw7swwwwwwwwwwwww wrRawg @6Ww$cg7# rpRW  w0ppqcp`  SgwwswsswwwwwwwwwwwwwwwwwwwSu`!qvwaaS''vpwag''pvqPp%%rW%pP@p40wgwppg777swwsw7qgwwqqqwwwwWwSWwwwRRRP``qaapR!cWp4rWwwwqawwww% p0pwp qaawwwwwpsswwwwwwwww77wwwwwqwwwwwwwwwwwwwwwwwwsW5wwwwwwww5wwwwwwwwwwwwRWw4                �?');
INSERT INTO `Categories` VALUES (4,'Dairy Products','Cheeses ','/       ! ????Bitmap Image Paint.Picture         PBrush         ?)  BM?)      V   (   ?   x             ?  ?        ???  ?? ? ?   ? ??   ?  ?       wwwwwwwWswW7w7swwwWwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww44qat65psSCeqqsw#W  wwww7ww7ww7e7wusww7Su7wwwwwwwwwwwwwwwwwwwwwtvW%!$4wwwwwwwwwwwwsWw7St6%426W''wwwswwww7wwwwwwuwuwwsW7wwwwwwwwwwwwwwwwwwww%$  @`@     wwwwwwwwcSG6Spw5''WwWww7WwwwwswwsuwqwqssswqwwwwwwwwwwwwwwwwwwwwwpRC @              wwwwwwqwgsqr7pRprqsW5gswssWwWsWw7wwwwwwuwSwwwwwwwwwwwwwwwwwwwRQeA @`                  wwwwqqugWWs7g4sqwwwwwwsWwwwswwwwwwwwwwwwwwwwwwwwwwwwwwwwgaA B                      wwwww7scpu5%%asWsuvsWwsWww7WwwwSqsW7wwwwwwwwwwwwwwwwwwV   p @ @                    wwwwww7vww7erWrswwwwwswwwsW5swwwwwwwwwwwwwwwwwwwwwvSawwwwe `      @@                   wwwwW7vqqpu7wwWuswswwwwwwwwwwwwwwwwwwwwwwwwwwwwwww%wwwwqww @    @                  www7WuwwwrqqwssWwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwVu7wWgwV $qB `@@@@@@                     wwwwssppuggwtw''wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwWW%6Ww''uw  d%                             ww77ug7sqsSw5wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwV7cWaggWwwp  P                              wwwwqt4wwwSRqwwwwwwwwwwwwwwwwwwwwwwwwwwwww7CWcW7WagR u`@         @                    wuswswwguwwwwwwwwwwwwwwwwwwwwwwwwwwwwwvSt5t4wpwu!a%pCBF  @    @@                 Gsw4ucwpqsswwwwwwwwwwwwwwwwwwwwwwwwwwwwwQaCBCe%''wwV @4  B           @@             wuw75awwwVwwwwwwwwwwwwwwwwwwwwwwwwwwwv64''RVwWwwwwwp    BR   @    @@ @             ssRV''sSwwwwwwwwwwwwwwwwwwwwwwwwwwuAC@VAgGwww45v    u$@ @ @      B$             wVwsaWwrWwwwwwwwwwwwwwwwwwwwwwwwwwwwpsc@p1gp% wur%   R   @@ @   @ @          sR56477wwwwwwwwwwwwwwwwwwwwwwwwwwg%FC @CCBuq PrQ    p         @@               wwWCStwGgwwwwwwwwwwwwwwwwwwwwwwwwwrCRt!$ BB $ ABp` RG4    B           @@@           qr56SqsSwwwwwwwwwwwwwwwwwwwwwwwwtw4%@  C`t a%0Ca    @d            $        vwRSwwwwwwwwwwwwwwwwwwwwwwwwwwwwe74qrBB$ 0C@VB@C4    `            $           sPw%4455wwwwwwwwwwwwwwwwwwwwwwwwsFwCB@ @ 0e!`@      !`4   %                     ''CCSprwwwwwwwwwwwwwwwwwwwwwwwpt556 ``4@pCG    @ BAC@    ee                qCcRw5wwwwwwwwwwwwwwwwwwwwwwwwSGvQ`a @rE$ P@B        00P`    aa`                  4qqwwwww7w7wwwwwwwwwwwwwwwWwg4w$$ @pE%!`  @      @ @ p    BG @      `@         aRpw1gwwwwwwwwwwwwwwwwwwwwww7RWwRFPcG%$ @@@        @ @@!%      G $     !@        VuwwwwwwwwwwwwwwwwwwwwwwegwA`u!VaRCC             @5s@    P              %5surwwwwwwwwwwwwwwwwwwwwwu7wv$tp%arV% @Dd                 qg   RB   @t  @      rScurWwwwwwwwwwwwwwwwwwwwwwvVqgP2DpvWVRP                 ae  `T`         Wrwwwwwwwwwwwwwwwwwwwwwwwsqgude&E!wqa`p!e%gGt0                pw  4a  p       pprWu7wwwwwwwwwwwwwwwwwwwwwvVSRSRGwCCAtpu57S                 pPw@ F Sd       7w7wwwwwwwwwwwwwwwwwwwwwwqst$BG5e447Cw6vW0                  rRWww  @d7@       pquwwwwwwwwwwwwwwwwwwwwwwwwvVSCCAe 4w6tsCt5qwwA                    1wwwBwt      %$''7SwwwwwwwwwwwwwwwwwwwwwwSstp$0GgpW4wSvwqw0                  4!wwwu  Vw     RSuwgwwwwwwwwwwwwwwwwwwwwwwvWC CA1wsewqgWww                 0 awwwv `  BV    aRswwwwwwwwwwwwwwwwwwwwwwSct%$$!GWe%6Www''sWg                 !7www p    B@   aCWawwwwwwwwwwwwwwwwwwwwwuu%BPRRu7VSrW5wWsW0                      www w        %0  !awwwwwwwwwwwwwwwwwwwwwwrwr%%%6t54uwww''wwA                   www         p@4Wwswwwwwwwwwwww7wwwwwwwwuwBRBVwvwrsGwwGw                    !www@        CC@444wwwwwwwwwwwwwu7wwwwwwwp%$%%cWRWWwuwqw0                      !www           pSscwwwswswwwwwwwwwwwwwwwwqg&4sWcwruswwwtq                       Wwwp          aa%5wwwwwwwww7wwwwwwwwwwwwwvqAaA`aug5rtswww0                     ''ww            wv7wssW57W5wwwwwwwwwwwwwwu4"PrApwCwWuwuuwwP                 $      !w`           g45uwwwwww7wwwwwwwwwwwwwwwwgE$%qvSg''qwswsp                       @@p   @  @   ww7sWwwwwwwwwwwwwwwwwwwwww0pbPBQgewWvqgWWp                           v w p5%%4wwwwwwwwwwwwwwwwwwwwwwwwvV%%$5cRpwwww''wq                         R@ a t vSw7wwwwwwwwwwwwwwwwwwwsuwu0t CF5''WwWu5wpp                           %$   p p  wauwwuwwwwwwwwwwwwwwwwwwwtqgsweSAe$Vu''gwguwp                        aB          ''wwwwwwwwwwwwwwwwwswqvtwwp$6R`t6Wu7wwrWs                               %WpRwwwwwwwwwwwwwwwwwuwwWwea@VAae%''ewuwwq                        Vp`    swCR  a5wwwwwwwwwwwwwwwqwwpspRuaw4s`V%vSV4wwpp                     !a     47wwwwu5wwwwwwwwwwwwwwwwwwwuww %6gaaBRAe%wsewq                        6         $447v0qwwwwwwwwwwwwwqwwwwrGWWwrP64%$6RRWwww                      @@              W''wwwuwWuwwwwwwwww5w5wspQ t0e5$PpABRAae%GC                           `            tw7Wwwwsw777wwwwwwwuw5vwwRPpGw@rC@RVsqw3                      @  p          wvwwwuwwwwwswwwwww7wwwqqat5aFW$`PRVV6ss                       uw  7@     ww%wwswwsW7Wwwwww5ww7wp sBp5%seppR@ $45qs73!                      wv w  `  u  t7V7wwwswsW77www5wwwvSp5%a`p''%$%%`pCAGsw6                    www w@ p v wt!guwwwww7sSWwwww7wpu4 `!rRPWwRR@pp`@t47332                 7wwp w  gp w WwBV!wwsswwqssswwwwCwwwAw0%aAe%%Ru%v@CGCBww720                  7www   p w ''wpVswwWsSsQqu7wwwpPSw644A`put4444ppV7sss!!                wwwt0   W  waeww0Wsw6447wwwu0''wprSCA`46stppaa6abRRC@a%asw776              wwww        uBSgpV7WsqrsSpswwsaAwwAA A'''' @RU5%4`RP$7sw7371             wwvt    @p%vwsG6wwWuwCAwwpRWw!qaew''40@ %45! v!ag7agSB3swsv1!            7wwww     @ Ru4pCGqr57scwsswww%''uvPqwwPA%5B R@R!GPpwwwws3s3s73         wwwuvp   !Ae''RC%cwwwu5usuwRwwRWww7wqq 0 PvpPGw%7!a!%''Agwwwsww7w7rs3      7wwwww W@  `  V4Ru57sSw75wsww@0wgqwwwrQA wwwwWa$pA''wuswssw373sss2P    wwwwvw ''   t uw gRwuWguwsuwSwGvqqwwwsq 7@Bw@!w7rp`  0@wWswsW73wsw77#s341  7wwwvWvWP  w w@$RwsS57qsqwwswswu5wwwwweuqv0qA5aCCC 7wuwwww3s3ssw7733# 07wwwwwwW`p   w@0PWs %WgwqwtwqswwWwwwwwwwuss@ AvQ%CB%4 7wW7qsw7w7w7733sscs73wwwwwWwrwp7  w  &wt  cW57wg57uwwwSwww7wswtp 0 wW$4  W%swW7wwwSW3w3777v7733swwwwwwwGuw     w Qwr 4rwqwwwwwwwswwwwwuqwwWp u  a ww7u55swswswsss3s3w77wwwwwwwwwwp      $7t CuwwwqsW57wwwwwwwwww7Qs@  v0 7pp@@ p7w7wst5577777s7s7wwwwwwwwwwvwe     GC@t7wwwwwusWwwwwqwwwwwu5gr7   t05 7B Puvwwsrqsssss7s7wuwwwwwwwwwWp      0v twwwwwwwwwwwwwwwwwwwwsC  S@  `1 4 w7wSwwSRw77SCwwwwwwwwwwwwwA     CA VswwwwwwwwwwwwwwwwwwwwR4P7p       qswSuqrq6cRs0w1wwwwwwwwWwtwwr`  `  p t6  twwwwwwwwwwwwwwwwwww$A5pr    p pwW767SssSqSpWwwwwwwwwuwwwuu     G  t7wwwwwwwwwwwwwwwww7SwwR$wrww        p  7Sct5cSqR1pq%715s7wwwwwwwwwwwwpav  w  w $7  Vwwwwwwwwwwwwwwwwwww!CA PCAp `     u''5sw577VSSRSC1pwwwwwww7wwwwwvC  w G@SWp 4swwwwwwwwwwwwwwwwwsSAcP40u!B %  `     0sqwSSAsQ3W6551t1wwuwwwvWwwwWwpt  wp wp$vq CewwwwwwwwwwwwwwwwwWvrPwawBCq `       psRq''776S%541rRCwwwwwwwwwwwwww@w  wp wpWv 7wwwwwwwwwwwwwwwqswat7 0@pPpPa  % w57SRSaq53S1rSww7wwwwwWwwwwt0     wp`wu BVwwwwwwwwwwwwww7wwpqqp  u !a ! aA%!sG57qsSCRWG1ppvwwWgwwwwwwwvWs       ''7v !awwwwwwwwwwwwwwwwqq $6  pPuuv@ptWcwrW437u1w#RwCwwuwwwwwuwwt0       P''  RVwwswwwwwwwwwwwWqg S     0`0$As wt47Wppq#RqSRpwwwqwwuwwwwwwwB       p0 5wwwwwwwwwwwwww7wqa  P$a p 5@0$5$wwSpsq17Q5r5qq5wwwWvuwwRwwwww      V acswwwwwwwwwwwwuwwq` ! 0 aar@pA awwwrSSRVQsCa1sQ!!C%wsWgwvwgwuwWuvr      p   twwwwwwwwwwwww7w   qa  pww7qap717%0w%#qs5wwwwuswqww7gww w   ''    Pwwwwwwwwwwwwww7w00 $%      00tewwwwwwSqsgQ2Swww7swWwvwwwwwtu`  p p  $$wwwwwwwwwwwwwWws@  004 4P 4swwwwwqps15''7R16qcQwwWwwwWwWuwwwgp  p  Gt  swwwwwwwwwwwwwsu4    C!!w P1wwWwwu5w1GRQap1saa6wwwvWwrwwwwwws@  wp  7R `twwwwwwwwwwwwwwws     541qsA!Gqwwwwwswq01ccsaAwwwwwGuvwwguw T0  7v  ww PwwwwwwwwwwwwwusW     !SSV75w5ww77w7wwwpqaCRrP7wwqwwwwwsGwwwp    w w `pwwwwwwwwwwwww7ws        5155rqw7wuwwqww1ap7swuwwwgwwwu7wWsWww       w  pwwwwwwwwwwwwwWsP      !3CW''57sWwWwswwwwas!cWwwwwwwwwwSGu7wewwwwvwa     p  $  wwwwwwwwwwwwwwswp       1p1qwWqsssuwwwwwSWsswW7wrwwwwsvuwwv7Wwqw       0R0`wwwwwwwwwwwwwwSs        !0557sqw5uuw75wwwu!sw7www7wwuwwwwuwwuwwvqwwa`     $At#wwwwwwwwwwwwu7wp         aRPsu%w5g777uswwwww57w5swwuswwwwwv5rv7wwwwwwp    $  RP4Twwwwwwwwwwwwwww      1470SSsVqus4wwwwwwqqw5wwwuwwwww5wwwWwpwWgww@ g C@ BpCwwuwwwwwwwwwww4          5#35sw757suwwwwwwwww7wwwwwwwwwuwuwwewwsuwpwp uw Rt0Rww7sSwwwwwwwsWw         1ArQ#P57RW7wwwwwwwwqwwwwwqwwwwwwwqawwwuwwpRw ''vtwV wG%uwwwwwwwwwwwwswp        007Q75#pq77SuwwwwwwwwwwwwwwwwwwwvW''wwwwSgwwpwRwGwaewppR7swwwwwwwwwwwwS          QqqqpaSW7WqsCwwwwwwwwwwwwwwwwwswu7Wwwwwwwwaec@wwD%wRCwpp''wwqwwwwwwwwwqssP        1##5a0qS17wwwwwwwwwwwwwwwwwuwwwwwwWwwwwp!Gw!wawe$wwwwwwwwwwwwwt5!          a#Q553tw3SwwwwwwwwwwuwwwwwwwwwwuwwvwwwwV!B!BPwwpppqwwwwwwwwwwww1p        RQ56SE3cWwwwwwwwwwwwwwwwwwwwwwwwwwwwWwwsC42R Rwwwwwwwwwwww!a0C     q51p5uqq5wwwwwwwwwwwwwwwww5wwwwwwuwwwwt CCDp% Ra`$4wwqv7qwwwwwwwP5pR0  Sq5u541!4S57wwwwwwwwwwwwwwvuwwwwwwwwwwwwwwpp44CPCaBpawwwwWwqcwwwwwu5a%  qg553asW5qwwwwwwwwwwwwwww77Wwwwwwwwwwwwww a`4 ''0a%qvww7wwuwwwwwwwwRp5cRVw#Ru47WwwwwwwwwwwwwwsWwwwwWwwwwwwwwwwtw V0`%wwwwwwwwwwwwwwwwww0pAawwwwqqq5%5sSsSqqwwwwwwwwww7wwSwwWwwwwwwwGwwwwwwvw`AGwp``wwwwwww7wwqwwwwwwwwwA0wwwwwwwwwqqp%47wwwwwwwwwuwwwwuw7Wsw7wwwwwwwwGwp%pw$0w`aBwA`Raww57wuwwwwwwwwwwwwwwvwwwwwwwwwwwwwwq''wwwwwwwwqwwwwww7w7wwwwwwwwwwwwwwB@Gwu$4w4wwwu77wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwWwwwwwwwwwwWwwsVwwuwwwwwwwwwwwww7aa wpRCwv &57wgwwswwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwSuwwwwwwwww7wwwsSwwu%wwwwwwwwwwtvw%%w@Pwuwu1wwuwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwggwwwwwwWw''wwwwwwwwwwww`w!`Rw4 2@wwww7wsSwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwu55grwwWswSawwwwwwwwwww   ` @@''wuwww7wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww55uswwwwWwwwwwwwwwwwCCCC!`pa$wwwwwswwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwswwwwpswwwwwwwwwwww  @$ `B   ww                ֭?');
INSERT INTO `Categories` VALUES (5,'Grains/Cereals','Breads, crackers, pasta, and cereal ','/       ! ????Bitmap Image Paint.Picture         PBrush         ?)  BM?)      V   (   ?   x             ?  ?        ???  ?? ? ?   ? ??   ?  ?       wwwt Cs@t77777wpCpwwwwwwwCwwwwp S@@g5wwu t  @ P BP  wwp B7777sww03w0ssrP 3t0  7777w7vCwwsGsswv7wwwwwwTwwwww@P%swwPSPp P     ww7ssssw3p@ @@pq!Cw776r  swwwwww7w@D''Cs7wwsCAwwWwwWGpwWwww@P wuwwp@aC@       ww  wssw7ssw @  777sSas  77ssssu @@@E7tww777wwwgwwwwwwwwwwp GpGw7wwp        wwp777sw77   @@@qsssw7774  wwwwww6D@BG77wwwswwWwwwwEvwwwwu wwSwwu e   @    ww3sssw3sw @  cw7sssss   @@ssssw7p www77swwwwWwwwwBwwWuwwwwWwuwwvs@      wwv7777sw0!@  @77777774 @@  wwwwsu6RD@@@G777wwwwvugwwwu4uuww7wtwwwwwqVPCQu       w Cssw  0@  ssssss7r@  sssswcE4 BDswww7swwuwwwwwwgRpw5wwqw7wWuwwww@ 7q      @Gwpp3sw"Ss70@ 7ssssv@ @@ wwww67D@CwsswwwwwwwWwwwwWwWGw7wwwwwsqwww@  u1v       wq 73Q''7s3Csa`77w7sP` @  @ss76Sw7ss@@w#ewsswwwwwwwwWwwVwwWwwpWvwwWww P sWq @     w@63W0 as7p 7  @ wwwe47cwsD''7wwwwwwwwwwwwwWRwswwwpGwswww0u7P        ww @ Csssp7#q`''7s73s44 @776@Cgw7ppw74Stwwwwwwwwwwwwewu%%wwwquu@wWww@ 0ww       wwSw1  7s ss7` S6`%cR  3Pwepsw7psww$7wwwwwwwwwuwWgwTWwwsv w7ww W7w    P     w4q7R77737 3@@737%447 @C@GVpwwssRPwu''wwwwwwwWwwuwV7wwwwwq@@wwsWwpSqWp       4 sCQ P! w77w77sp  qw70ssp@D''`7777wwwsFVWwwwwwwwwwwueTwwwwWw  wwwu qg7P         Wu3WPq0cs33s4 @@63Cw750@ `Gwwww7sstauvwwwwwwwwwwwqcw5wt''p@Awswwwq1qw        @ P%q0Sqww2@   CT0w3sr4@D@Dcssw7swt4ugwwwwwwwwwwu7VWuwwq@t u57wwsu          sAP4 3p @#swsss @@Awww7wwstCGVWuwwwwuwwwVtwwwwww7C@twwwwwwwwp          w75At0u!    @ Cs77777@DD@@w777w77wagCgvwwwwwwwuegWwwwwww@Rw7wwwww    P   A7uwRqA7!w@@@77sssss@ 7cwww7wwRWEwWWWwwwwwwwwqwwwwwwu5@C`@wuwwwwwq P%       AgRqPpwPq0@  @ sw77777D@t@sT$7ssrwwrVwgwwwwwuwwWVWuwwwwwpq@Tw5qwwww P     GW5PQA@qpqq1 @73ssssv0 gw6SGswwW77wuewwwwwwwwwvwwwwwwwwwwaw7ssSWww  @@  pwwW0%Sw 6 7BSsss@t@w77@t2wqcgwwwwwwwwwwwwuwuwwwwwwwwSSuwWewwu7www5      B wPSW1AA6P453 p ''7723gsww4 GvwwwwwwwwwwwwwwuwuwwwwwwwwwwwsWww5www P  V   W4!VQpsRps70BSw5#sWw7w77swsSDwwwwwwwwwwwwwwwwwWwwwwwwwwwtpwwswwpP  @   PSuaS4q5177sR@70BPs#swwwsw7w$@erwwwwwwwwwwwuwwwwwwWwwwwwwwwQwwu7ww   0@w6SPs1qqAwSC73ssC0@ 077w7sswsw$DRwWwwwwwwwwwwwwwwwwwvwwwwwwwwPgWswwwq P@ qAu w1A%pRW7q$sws67r@ @CCqwwwww7p@@t@ewwwwwwwwwwwwwwuwwwwuwwwwwqwwpW''wwwwwRP  qpwPsS4e%SSCR7s7   4ss777qt$CGGwwwwwwwwwwwwwwwuwwwwwwwwwwwwqwwwwpC  s  4p5`sAPQ1p1ap  wwwwwv7t@dt7wwwwwwwwwwwwwwwwwwWwwwwwwwwwvWwwwwq  PT   @@qpSC5gWv557q    @w77ssqae%4dwwwwwwwwwwwwwwwwwwwvWwswwwwwwp@wsWwwwq@       wRqa qSqq  pW44 @  3wwwwV7ssdBSwwwwwwwwwwwwwwwwwwWWqtwwuwwwwwuWwwwwp @P  @''VSA5@PqpqCA $  swssqsaswwSTGwWwwwwwwwwwwwwwwWvwewCGwswwwwwwv55Swp@     Tse5DC151  7 @763wwvw77v7wwrWwwwwwwwwwwwwwwuwwVT5wwwwwwwwputp @p@ P@qEwsawu@s@3`0 pBqscSwvw7sGwwwwwwwwwwwwwwwwwWwwVwwwwwwwwwt0@q!t  P ppWQsA@SA501Bw Sw 0v@DvRswwwwwwwwwwwwwwwwwwwwwWwuacWwwWwwwwpCTwqsS@ PR pWqD pasS014wAC   4w33 @@BCwWwwwwwwwwwwwwwwwwwwwwwwwwwWwww7wwwwu7wp7wWw7wPRS3WPu57pBV5@0S wv@D@7wwwwwwwwwwwwwwwwwwwuwwwWWuewwwwwwwqwwwwuwswt Wpu%Awr@QqAq% @BP7PA@  76S@DBDww7wwwwwWwwwwwwwwwwwwwwwwwwwswwwwwwwwwW755wpvuww45pQAv4qA0AA   @ sss @@@V7ww7wwwwwwwwwwwwwwwwwwwwwuewWwwwwwww@%wwWvw7sWAGswwwQ@C$QAq5Q % 1 77 @DBD$7w7wwwwwwwwwwwwwwwwwwwwwwWwwguwwwuwwwwVaA@pvWwwwqACAS0Aqq0 QAsq@ @r@WsvwwwwwwwwwwwwwwwwwwwwwwwwwWWwwwwsWwww aaa@D w51t7wwuwACAqaA  G@ P72@Dst5''7wwwwwwwwwwwwwwwwwwwwwwwwwGWwwwwwwqGPpa PegSSCSWwwpCWp q @1 A@ $  r@wswBVWwwwwwwwwwuwwwwwwwwwwwwwWwuwvwwwwwwpCCCw57u7wqqwwwu54Fs 0P  @ P05swsuaawwwwwwwwwwwwwwwwwwwwwwwwuwwWwwwwwwuA@@P@Aeqqe7wwwu57wwqqPqpR@  0sr wswswswwwBWwwwwwwwwuswwwwwwwwwwwwwWuwwwwwwpp44%!wSwSSqwwwwwWwwww5SpPAq350swswswwwatvwwwwwWwuwuwwwwwwwwwwwwwwwuu7qwwpA@PWAgu53WwwwwwwGewqp%54a7  ss2 wswsww7$Gwwwwww7qwwwwwwwwwwwwwwwwwWwwwwPgwG0w%wqwpwwwwwwwwww54wSQ@@t  @P  42Pswsww7tTeuuwwwwuww7wuwwwwwwwwwwwwwwWwGWWW5psTW575w7wwwqsGwwwSPww1@PP   !Cswswswwse$wgewww7wuuwwwwuwwwwwwwwwwwwwWw%pw%gWGwswwSwqsSqSwswuwW5wWwww@W a q w7swswsVRWtuwwwwusWw55wwwwwwwwwwwwwwwwwWWwWWSwWwwvW5w1uw7wwwwwwww50 Q  73swswsvswwugwwwwuwwwsWwwwwwwwwwwwwwwwwwwwwww7u3aww3Sqwwswu5wwwqswwwqu7W@  w77swswqwswwuwwwwwwWsu7wwwww7wwwwwwwwwwwwwwwuwu1qqwW5swwuwwwwwwWVWW41@P@  rsswswCg''wwwwwwwwwssWwSW5wqwwWwwwwwwwwwwwwwusswq5wwsusA77qsqqwwwwwquA@CP 67677swpSWwwwwwwwwwwWws45wwwuqwwuswwSwwuw7ww5u5qR5wwwSu7pwWuww5wwwww5 R507 sswCd6w7wwwwwwwwusw7qwswwwwwuwwwWswwusWs1sSqw7SwwwswSsSwwwwwwWWqP 1 r@ 77p@@DwwwwwwwwwswsCWwwSWqu557wwwSwSwspqwqqqqqu75qwSwWwSRWwwwvqwqWw0s1 prdtWwwwwwwwwwWw555su1qw7wsSwwu7wSuu70111wswwwQwwu7755%gwwwqwPw7 WQ7r0 4 @@DRBwwwwwwwwwu7usSww5su5qwwSWsuww57wS1S0qwuqqu''wwwuuwqSpwwwwAD50 us753p  @Fuwwwwwwwwwwu75wSWqR7W5557swSSWwqu3qq0sP1QwqsSwqGw57SsqwqGWuwws Asss6   Dt7wwwwwwwwwqwuwSws1qqqqqaquw17u7sWqu77wwWw7Sw1uwsquwqw%7wwwAsss6  @Fc@GwgwwwwwwwwwqwwsqSWqwWwq51wqwS5qqqww7Su1qq7WW7qu7wpPTu5wwwqq777S  @ u%7wWwwwwwwwwwwu57wsWqw57su57w5us3qwwwswW7wwswWw1w7wwgwwRWRWssp    @c@Rwwwwwwwwwwwwquwsqu557SSusp1Ssu1wW71q5SSp1wwu5qw3SW55ww1770G7sww5 Psr P  u%wwwwwwwwwwwwww5uqcWwu57S715777W51wwwww5u5q7wwu7WSSP Cw7wwwq@S 7673   Rw7swwwwwGwwwwwuqww555q7w705wSW5w5571CqwwwqwswSSSwW3u51@ 7sA''7w642C3Cs@ wwwwwwwwWwewwwww5qwsaww7SsuwSSSSq51u71q1qq151swwwwqwSqcwwwSsWSSB7ww7wwsP C730 777swwwwwGgWWvwwwqw7WwsqsW7710Su5150sQ1wwwu5557wW75q751  Ssssw7w4  7C'' sCwwwwwwwwVvwuwwwwWW7usWwWswWQsQ5151%7A11177wwwsw7Ww7WSwQsS7777sw6@  3Rss7wwswwwwwuuvwwwwww5wsSww5qu7531q0155q1wqqS!wwwwwqu5qswwwswSw sssss770  @@@#773wwwwwwwwwguwwwwwwW555Qswqq751QSSSS55!wwwww7wswuwwu7SCq s''7777sBP@  ssscsswwwwwwwwuwwwwwwWsWsqsqwSq2SQ15q15SwwwwwW7qwwww7qsqR P77700 @  777777wwwrwwwwwwwwwwwwsWsWSQqp5wqww55aq1SWwwww7qwqwwwwwuw51sp 7723@  wssss77ww7GGwwwwwwwwwwww757501wwsswS1qqq10q057wwwuw7wwwwWwsqsSA70 7%$rs7 ! 77770wrD4VWwwwwwwwwwwuuwWWCSqWwwwwqqaqsq0517wwWwwwwWwwwwwqwSQ!sr 0 ''3s@ 77 0sw0 7GCG''wwwwwwwwwwwwsu77Wswwwqu71%w5q1q30usW7wwwwwwwwwwwu1W3s72 @a70CsP7723D4dTuGwwwwwwwwwwu7WSSqa55awu7sSSQ5%q5qsw7sw7wwwwwww773w77   CC3sc  3r rCG%gvwwwwwwwwuwwwSswqsSwqSSqqQ70S7q!53SquwW777wwwwssWWsWw3sp    @ 7w77p  3dTtVuwwwwwwwwvwwwwWSW5q51w57A75SSu57Wsswuwwwwwwwuss33w7  @@  3s3ss7p @s%qegwwwwwwwwwutwwu757WsqqSuq7sW51%17Sww77Wswuu7Swwww7uw7w0p @  @77sw7sp @    tVwrWwwWwwwwwwwwwwwusSswu5511543SSW%q5wSquw77swuwWvu3s3p0q    !#s73s7   @@ qetwwwwwwwwwwwwwWwwwwu5wqsQ3SSW#q3SU051715svsSwwswwSWu7Cw7 swps2P !777ssw1`    wrswwwwwwwwwwwwwwwwwSSSwW3Q1u''Q5q3SSwwSSwuwww7w55u04 0s470 r@ 2770`    7twwwwwwwwuuwwwwwwwwqwwwsqu5CSRS7SsSSspwqw7wwsqsqqqwssws0 ss sw  ssp%3 sswwwwwwwwvvwwwwwwwwwswQwWSq51q554555553Wqwue57WwuwswW5s@7#0p72p  74%67  140wwwwwwwwgWWWwwwwwwwwWWswwq55sS1%571qp4qwqcwwwwSsqu7qs7qsw5  P073s044 Rss !r  wwwwwwwvugggWwwwwwwwwwuqqwq55!qqSSq1wq4qgSSu77WW7q7uqvsp 0ssssss0  7%''7  wwwwwwwwVwWWgwwwwwwwwSw7qsSS571%GSqwW7qww7wWwursWw7qw55s@7777770@   `R3sr wwwwwwwwwVwewwwwwwwwwwwwqqtqu57SSQ51a3ugv7WWsasuucpqsSRSw77777` @  w772wwwwwwwwuewwwwwwwwwwSquwSSwwsS7RqSWsWAussqqswwuwWsSWSRRu5su7v7777773     s7ssss`wwwwgwwwwwwwwwwwwwwwwwwwwwSuwu515q1q1qwWswSuugww5%7wqeu5%55qs77p4@ @ s7s7770 ww44wwwwwwwwwwwwwwwwwWqqu1uq7swW51sWwwsusCG7qavWWwup146!rw7Rssp0 @ s3w3w3s@ wwugGVwwwwwwwwwwwwwwwwwww7u07Suqq7qwwqquwWuGwv7wSCWqWVqu5PsCsp!c7701B3w3G   w4$4uwwwwwwwwwwuwwwwwwwwSwqSuswSS57wwwwww5sCqwquww5w5p RCAq%t555 3s w  C7s02B ugedt6GwwwwwwwwwGwwwwwwwWwWqq%ww557wuwuu%5vuwWaqwsqwww%''WRsSss ag7 770  3aq1 $PGE5wwwwwwuetwwwwwwwwwSswSSqw7wu7ww7wwaqwppwWupspSR5p PS!uaqapP007ss` 4 7#r edw4dvwwwwwwwwvwugWwwwwwwwu5squ7wwWWuwwwSAWCGuww7swW51RSSA%WS0@CCw77752  @Ss1PG7u4wwwwwwwwWGgTwwwwwwwwwsW77WwwWp%gwwWww5545suwquwWqaeP1454445t41S 73ss3s@ @  4 cw4wCGwwvwwwwwwwutwwwwwwwwugwwWwwwwwWuwwWRRW5puwawsqwSq0@SRQ rQR51R577w77w    @ @37uw7wwtwwwwwwwwCwwwwwwwwwuewwWwWwwu6uwuwswSRWwwu7Ws@ S@rSPP5%7Q%!03s3ss1  @  @33wwCtww7sqwuwwwwwwwwuwwwwwwwwwewwWwwuwuwww5wStw4upW7  SA440qAPq7w75`     7w3w77wwwwwwgGwwwwwwrwwwwwwwwuwwwwwwwuw5wwWwSWSAu7wQwC@  4!aaqA pq%''77@   73#stww7wwwwttwwwwwwwwWwwGwwwwwwwwwWwwwwwwuw7qwsWuw7wu  Ap  Qq@7rP73   6777wwwwwwveE47WwwwwwwwewwwwwwwwwwwWwwuwwwwWVqucGWwewS@  GpPapqe  01%0g6p  srs  0  3sw7wwswwu`V6GFww7wwwwwSewwwwwwwwwwwwWwuuwwwsWcu55qsGwt  SeP!APuQs@77702p  7 wwswww66VAdswwwww6FGVWwwwwwwwwwwwwwwwwwwWquwwwU557Pu6wq  RP 1q%   7 w10   wwwswwGW4d4Cwwwwww6u5t5gGwwwwwwwuugwwwwwwSwwwWwu''wGt4RRSSQaVAA  4P   sw2sc1   swCww7sswPD7V4wwwtuwFVpwwwwwwwVWgwWwRTwwwqw5wWSW7W4WvRQaru @  Qqe    77s773   wst77pwwp77wasCwwww75uaGwwwwwwwwwWWgWwsGWww7uwv7gwwWw5sPqquWR@P  P   cw7ss7    Cww`G77wGsstFww77ww%GwwwwwwwwwVwgWwuwpuqtuwSWSWqw%%vWugVqaa51!@  P 0@ 73ss7p    t7wp@agsCswwsqspewwwtw7swSwwwwwwwVWwwwuwrwsCwwtsWquww5qpVa@Pp A  700@7 rw77s     wp77ww77wtFV''ssswwwGgwwwwwwwwwwwwwuuuut1Ww5wwPuw5wWSSRW S@ 3s@ 1q  w7    wpt@D$''w77ww4Pwtw7wwsWwuwwwwwwwwwwwwwwwSWwwuwvWw74wSwu%e%Pt4@e g777#@@''3prs  p @@Swwsw7w`pd47wwwswwtrVwwwwwwwwwwwuwSe%sWquawWSVu%wSupqCpSvP@ 0@sss  s@57 t@`DT7sswst4tDGw7wsww6uuwwwwwwwww7wwwSAegwevusWWwwRW5q @@ @@7w777sw @usrc6 `7g7ww5cC@BBF77w7wwwEevpgwwwwwwwwtuwwwwwqqAAAGSWusrRwuqeqwRW  73ssw3@   sss`D74Cp G77rSw7@DGwww7sarRAGPwwwwwwvtwvvwwwwwwwwwpwwtTuuwsGswG!@  3sw7sst @@@@pssss spsppwBV77qwsppswwGwwug@wwwwwwwwWGWWwwwwwwwwWGWww7w7t770sw1` 7Rw777p@   777774w sw47p@awsG77BV7st7777prwwwwsu%44%wwwwwwwppppsw7w7w5$t27 C`  7sa44 @@qsssssspwsssssp 6swww5awCwwwwwwwuwwwwwwwGGWwwwwwwwGEeeFWwwwsssp   ssp1s70 sRss0 3ssssw                 �?');
INSERT INTO `Categories` VALUES (6,'Meat/Poultry','Prepared meats ','/       ! ????Bitmap Image Paint.Picture         PBrush         ?)  BM?)      V   (   ?   x             ?  ?        ???  ?? ? ?   ? ??   ?  ?       s41$wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww%wwwwwwwwwwwwugwP5wwwqvwwwv477sqrscscS773srs  $Gw7wsw7wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwvvwwgwwwRGuwwwguv777#srsqsqsw77w677s4wwwwwwwwwwwwswwwwwwwwwwwwwwwwwwwwwwww7wwwwtwww7wwwwvwwggw`CWwwug3rssssw77777773ss3qss$wswwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwswu$       Aewwwwwwwu''u5gwww74ssqsss7777''7''63G73swwwwwwwswww7wwwwwwwwwwwwwwwwwwwwwwww6             @PwwwwwwwpWwwws77''677csscssssq73sv7wswwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4     @A`tg@    @ewwwwwwRAgww7w777773srsw77757ssr77wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwsR   Ggw7wWsSwwwe @  Cwwwwwtwww7rSssSg7771sqsr3777sswwwwwwswwwwww7ww7wwwwwwwwwwwwwt7   w7SBG4ttwsp  @wwwww Cwwww777773sqsw67''7wcss77wwwwwwwww7wswwwwwwwwwwwwwwwwwV7   WvPda@tt C@``@t7v   Wwwwu$wwsssscsw7763ssss35''5sswwwwwwwwwwwwwwswwwwwwwwwwwwsww  w0RPp   @%%u4  SwwwS@wwww7''771sssw7777W3sscwwwwwwwwswwwwwwwwwwwwwwwwwu44wp   wupG @ @ @ @ @@@@e$w wwwtpwwsw57rw6773ssss#w7773wwwwwwwwwuwwwwwwwwwwwwwwCrCw%  wrRB@@ @    @      @ PA$w  wwwtGwwsss3s7676SsCsws7777wwswswwwwswwwwwwwwwwwwu764gP  Gu        @   C@wp www www7''w7ssSs677737scsCwwwwwwwwwwwwwwwwwwwwqv7%wtwp  wrRW @  ``ptT$ @   @aaw  Gwwtww7ss73qssw777''w%777swwwww7wwwwwwwwwwwv6%4v4sp  gtP@@   WGWWuwWwwWwwp@   @w wwwuGwww7Sw''7''3ssss3g76WGwwwwwwwWwwwwwwwwwSSu6g5gv  GqC@ @$VSSwwwsu''cwwuwt    @CCp Gwwp7wwsw63sssw773qwsVWrswwwwwwwwuwwwwwwsSrp6WcVRRq @wVD @$W77erW0WwWuuwWwwwv@ @ Pw` wwwAGwwssw7771rRu6rW''75wwwwwwww7wwwwwssC`qgSdt3cw  r4 @ ewpqawW5Gaw47w77vw7wt   @ CAp@wwt4www73ssscs76qw7wecGwwwwwwwwwwww%%47vqds2VWt w@@  GSRWpsRwpwu%%rSuuwWt    BW0wwwwwwww75%swGw7pw777wwwwwwwwww5!7V7gt7s5eww  wt  @usg!qevSwsSsW5wWwwww`  @t wwpwwssqcsswCsqgrsCGwwwwwwwww7qcvV%pu''Cq%gwgv w`D VSCWSpqg7S45%wCrw7wuw@   BP7`www www77Gwswewsww77wwwwwwwwPsuvw''rWwtwvp pV@  Wpq%47asCW%4ww551e77ww   @w WwwwWwwww7Wssru7w#ws7wwww7s''4rwv1!qwGwVvww  wa 4wVV@sSG5cCWRqpsCw@   C@7 wwwwwwwwg656Ssg7Ww7www744vwG7AacvvVwfwGw` u$ @ SG14sw%4qr7rq%45tqagu   Gp wwwuwwww7www7ssw3sw7wwrpsww4t674wwwggWgwep w S@  GwCRCWPSSCcqrWq7pSRp7`    w WwwwewwwwwWw77w77w77S7AwGFqcCGggVugWgWt7  wV@@@ 453V77w0Wqw5''Gwwwwuw   P`@wwww''wWWGwwssw7w7sswrpw`rscwwwWugvvvtr7v p   wt1ppupq@s''sSe61qqCWwwwuwwwt  pwww7WWwww7Www7qcv5v7Awg40pvevwggwggu77F WU`  wRpwSSw447wW1qwwWww    @Gq wwwwwwwwsu7wsw7wwsWw`qagwwwgGtvvwW6477p sA`  EvCSwpu%77a7w1cww5w6Cagwp  w wwwwwww7 ww5g7sswwgagwvwegwvwweg4qcGtw w   7qc441pSqRSVSV5swpSs7ww    @pwwwwwsPq@Pww7wwtrsqwugGVVwggrp75''6u''c Cpu`@ TsWCRRt40677!wS%!uw%471rSCauw@  4pwwwws%  wwuav5wagvvwwgwvV5CvtwRts @@  cqu1!sWsQqqWw3SWsq55!RW477sp  @ApwwwupRCGp www7swwwwuwGggwrW1cw4ew%2340@  uw''e45!v527gsu446Wa%7%!sCrRWt   B@q wwu! Wu wwwwwwwvvvwwe''0g@ve652S3p wG  RSQsCRQrU05%54ssSWw1t0qqpSqS7wP  w WwwV%u%wp wwwwwwwwGwsCRprG5g7%2a!c760 sB  uersuqa4rW2WWw''1q%wCSRps6`  `S ''wwqaCwrT7twwwwwwvwt4saCusFsBS73a3s t%@  @SqRW04%5w0%7quwawv5%%5$6SAqswP  g Wwwwt5GwRWwwwwwwwwws3s%''tbVq41''3rsS773@qD4 AtV5!wSRG5sqqcwsq7wqqaCSSC`Q''5wp   B0wwwq`5wt0wpwwwwwwt4adwV7W!&ssc73''3ps0r@   tsusRPqq4s''VWuw%6446U7%qpst  @TPwwwwWCGwGwPwwwwww3sWsds@!cq71s5sSs37 uG  Ce%7vWCqucWswwW7SSqq2PRsu     wwwwwwpWw WwwwwwadbVS43773s''2s#63sss Gp`P  @`GSu!qwgWR1wwSqgwcpSCesSqss5p  t''wwwwwtvWu wpwwwwwWsW3%#ss''3s53ssR71s@p$  t0t7Upw75wwwww!a575u%%%%%wp  Cpwwwwww5waGtwwwwwbV pss6''3a73s5371r3 u% @  pWqqGgprpSSCCusWuwSuqv5''p753Rt   @0wwwwwwtVwtw wwwwwW3ss7573s72s63csr770rC@  GgV7qqw6Ruw75wwwwsw1t5wPppRP5w   @$Pwwwwwww%wwpwwww p33a2s63cs72S75#3qs pT  5qwCAce5qWsV7wwwSVS!sq''75''wp@   PS wwwwwwwTgw`twwwwss63w1s3q73s35727 p$@  GvWAsWsUsGw#W7SWwWsv77cV47SSCSpwp   ''Gwwwwwwwwwuw wwww333ss3r73ss63s''2qw3pw  @4qsrS%7W45%A%sww7wwqwSW5sRqappww@   PW wwwwwwwwaGw@wpGwww6s67C73c''3ss''3s73#0 q`d  G6WpSau''uws7Su0qwwqwswssCw7Swqu    3 wwwwwwwwwwwpWt7www3s3q33c1s63s71sssrp7P   Guwau0Uwe5t2RWwwwwsvW%u7pqaguww   @@4 wwwwwwwwwwAwwwwwws663w77#s3q7''5s''3c32 G@`@  r5swp52SrsW77wwwSsScu7www04    q wwwwwwwwwwtwpwuwww3q3r3ass''073s273a72ss p @ W wCS4u5uwwvwwwwwwWwwwwwwCS   pwwwwwwwwwwwPwt7wwww63s737sss''771s73s5 p`T  wqe''upsSwcsesSSWwwwwwwuswu0t     wwwwwwwwwwwpWwGwww73r3c3Sc6''3S1c63s61r'' 5  @ WqpusPw%7wwuwwspstwWC    Pq Gwwwwwwwwwwwwww7RSgss7673ssqc7''3s7416Sp W$@  u wp%7wwwwwVwwwwwuwVww5%   @@ q wwwwwwwwwwwwwwwwcwwW3c7s3q37373sq73GCc''W pS@ 7Sw!0RPqqwu67wwwwwwwww5 @   $p wwwwwwwwwwwwwsCsWwwws7r6567''sss#a%G25uqc 4@  GppqpA!057wsSuwwwwWwwwwwwRQp   P wwwwwwwwwwww7wWwgrs73s3s3s770rVR6V667@ w p   wWRSRRwSwwwwwwwwwwww%6@  @@ q gwwwwwwwwwwwSGwwgw57Vr6s563w7350vwwvww5w7 Ct`@  Gqaqp 57guwwwwWwuwwwwwsSq  @ @Cp wwwwwwwwwwSsgwww7%www3s7#3s44&w555swuwws@7 P@  w0wwuu7Wau7GWwuqEsWwwwwwwt   @  wwwwwwwwwswWwwqauwwvws53ss47%aCsqcSCrsuswwwwp W$  Wuw6t!sCV7wwu4sWwwwwww  q wwwwwwwqcSe6wu47wgwvww7#43CpC#BV5''757susw7ww pA`  wuwwuwSWGw7W7u5wuwwWwS@   7 wwwwwwwwwwwww''wwwwwwww3s3aar6qG75w7Ssswrwwwwwp W$@@@ wwwWwwwssw7Gwu5WWwwwwWt@ PBq wwwwwwwwwwwG7Wwwgwgwvw43@rRW4qc sqsw757ssWwwww@SA`P wwwwWwwtsGSwu5Suwwuwwsa @wwwwwqewwwwwwwwwwwwwwwS73a7%''!cswg63Csaw7swwwwp@w wwwwwuwwu7wWWRuwWwu7qwu Aa@q GwsRVRSWwwwwvwvwww567G@rrRV0ss7Rw377sqw7wwwww wAB@ wwwwwwuqwwwwwU5wu6WWWSG%sv P07Wwwwwwww%vwww7%5%#aw4wwSss77wwwwwwt rAB@wwwwwwwwutu7wwU5wwt%`Sp     @AA%7wwww7wwwwwrR3qw7#sw7w500tqepu77wwwwB@WQd4  Wwwwwwwp RWWwagWw@w P       RRuwwwwwwW%435%sss3s77sq0cw7777rTwWwwwu we@E%%t4RT @4WwwwWQwwPG@Ww       wwwwwv7ssw377rsw77RP4771swwwpwWwwwt w@R@        PsWWwqwwTpp7           0q!Wwwwu77ssssssc57CS1%75CAC1puWWewwwwt CwPP@@C@    5eswwt%pRTwP          !ASP1wwssw27777773arwpCsGwug@qwwwwwwpwpAae$ @ CWWWwWV@w0        P!%www7usssssqrV%!''S GtGvWwt5 Wuuwwwww@w4Ae!$qwwu4 E7w F             !0q7sww77''770cacsWu0WwpdpGu5twpa5wwwwwwww@ ww @DDT%uwR@usu  Dq@        AaqWwssssssqg7ce0 CtGvFRWDCwwwwwwwwt  ww5      uwwt  Gw@         Sq1wwsss0c7Ccp47Cp@tw@`VW5eeq`dpuwwwwwwwww@ wwwvqcPtwwww%  Gww@   PAACP7psw7w77gw6wp4 wV wDv@@CSwwwwwwwwwwD   Aau7WwSRPp  wwwp  5% 5!Ppqsw7rs7!%%wwwP aw VwWuwetduwwwwwwwwwwww@@          @Gwwwww  pq0APp5qGwsw7wwwwwww$pwPv WaGGVvWwgwwwwwwwwwwwwwwvVD$egGwwwwwwt%0 SPqquswsss!%wwwwww5 B Bd@evtpuwvWwqwwwwwwwwwwwwwwwwwwWwsWwwwwwww4       QS1q0q5%T7wsw77wwwwwwwt6WpBECGGegvVWwwwwwwwwwwwwwwwwwG0CTwwwwwwwwA          aqSu!wswscswwwwwwwsP@ A`pp%$$`VVWeegwwwwwwwwwwwwwwue5 47wwwww            P 1qpsPswsssswwwwwwwtp t  AGgwuwwuwwwwwwwwwwwwwwwwpRq4SuuwwwwwqA          445557wswsswwwwwwwww5@@@@w GBVuwwwW4uwwwwwwwwwwwwwwww''wuwwwwR        QCSW0sw7sr7wwwwwwwwp `@ vwuvuwW4qwwwwwwwwwwwwSt4ppBsAsGwwwwwwS        A40540w7Cs5wwwwwwwwwR@ @d A@RGuwWuwu5U5uwwwwwwwwwwwSWe1utsswWwwww@   @P0ASAw7Vwwwwwwwwwwwq$`@D$$4SvSWV7CRWwwwwuwwwww sAp@qutWwwwwwwP 0  @ AA0aswwwwwwwwwwwwwwwR@ @RP$ CAeupu4uwWuwwwwwwtwwww q@0pPpsswWWwwwwppP 0Rwqwuw7w77wwwwwwwww0 @ P%$5qauqu7W7Cuwwwwwwuwwp%BPw eGqwwwwwwwwP Caa!ACwwwwvw''wswwwwwwwwwwwqt$g@DPCWRuuuuwwwWWWwwwwwP5   sG!wWwwwwwwwwqa  PR7wwWwswwswwwV7wwwwwwwwwwGwww 4UpRwwwWwwwww7wwww@0  @qGpspWsWwwwwwwwwwpqa%%%%wwwwwuwwsww77wwwwwwwwwwwq%wwwW@$SqaawuAuwwwwwwwupwwww@4  @rqG6Wquwwwwwwwwwwwswwwwwqv7sw7usWwwwwwwwwwwwwv56SPtu PBQqgW5ewwCuuwwwwwwwSWwu` 75wqewgswwwwwwwssw7wwwwrSgwwwwuswwwpwwwwwwwvsqqvwp44r paPq0uEw7wwW7wwwwwwwwsww@ rSgSAw5uwwwwwwswwwwww7swww7ww7swwspwwwwwwwRStwvwgwsPup4@%4wSsW5wvWwwwWwwwwuwwA  qG4qwt5wvw7wwwwwwwwwwwwwww7u76wwgsGwwwwwwg6wewvw7GwqGCu7300wWuuwswwwwwwsw4t as 7qapw7vqwWwwwwwwwwwwwswswW7wwwg5wwwwwwwwuwWww%4ugwwvwqsw3q5q1q5wwwuwwwwwwuwR  4uwsWqwwswWwwwwwwwwwwwswswwwqsWwwwwwsSg6vw''cawgvwvwesBW6Ss`e7Wwwwwwwwwww`R qaRWwqe4wwuuwwwwwwwwww7swWqwwwswwwwwwww7wuwwwsuvWwwwwgwWsS3wssSuwwwww5wwwwpr7asRSGvwswwwwwwwwwwww7wwwrWwwwww7W7wwvwt7Gwwgwggwww`w75cw#gu0147wwwwwwwwwwwpAqatvwqwuwWwwwwwswsw7wwrSwwwwwwwSwwVwwwwwwwgwgwwgqvrSc57qASWwwwuwwwwuw@sPwg5wpw7wwWswWwwwswwwWwgswwwwwww''swwtwt7wgwvwwwsqqgaw7SawGe!01q3qCwwwuwwwwwwwtB#e0wqCvrWqw7uwwwwwwwwwwsSwwwwwwrsqgvqg3vwwwwvwwvwWgww477v535w5757wwwwwwwwsw7pA`WS7puqwu%wuwwwwwwwwwwswwwwwwsw7WwwuwstwwgwwwwpwwgwggWu''w2Q6ws!0CSwwwwwwwwwwww571%wpsww7wwwwwwwwww7wwwwwwsv7wwgvsrWwwwwwt7wwwwwSqs''SqwsSsQqWt!%1wqwswwwwSwwsVqGw0wWwqwWwu7wwwwwwwwwwwww75wGwqqvWwgwwwwwwgww7677Wsscqc07pSgwVuuwwww7w7wwsgw7sGWsCwwuwwwwwwwwwww7rWgwww77wwwwwgwtwwwww3sCsrs75%1''57SCq51wS1%wwwgwwwwwwwwwwwqawqspwWwwwwwwwwwwwwwwCwwwwgsewvwwvW7wwwww57Cs777''w3SSCw15SSwRwwwwwwwqwwwwwwqvpwwAgu%r7WwwwwwwwwwwW57wwwwqsGwgwwt77www7%rsswssssWw07qqqprp1s51%wwwwwwqwwwwwwwwqw7qww5w7uwwwwwwwwwsrwwwWcRwwwwwwsspvwwwsGw77773csssw34w51w5uSwwwwwwwwwwwwwwwprwwqwwwwwwwwwwwW7wwwrwwwwwws%74wwrw7wsssw7cwsrss45#q0wsGsSp47141GwwwwwWwwwwwwwwwwWwqgwsvwwwwwww77uwwtw7wwwvwcwsewwsWsGswww77777776ssVCGsu0wwwwpWwwwwwwwwwwwwsu%7wwwwwwwW7wuvwwsuwvwwwsW7Www4v7wswsssVsSssqss773q7sSw05305waWwwwwwwwwwwww77wSwwgrWwwwwwu7wtwvwsRwvwwwsCw7gw7wcqwsww7ww77757757sS5sRScW!cS4pwwwwwwvwwwwwwwwwwwwwqasuwwwwww7wwwwsw7wwwvww7wRwswv5wwws7Ssssscrscrs3cs%755''1s45rSgwwwwwu7wwwwwwwvsWwwwvwwWwwwwwu7wvwwvw5gwwww57qruwWrSwwwww7sw7777777777cs1W73C!srqsWwwwu7wswwwwt7swswwsqwwwwwwucwwwwwsqwwwwww7sagwww6wwwww7Sw7srssssssss77''5!R73cw51wwwwscwwwww7wswwWwwgRwwwwwwwsswwwwu7wvwwgqpwwwur47wwwwwSswss%7575757sSsscw%u51qasw7svuwwswwesWwswwgswwwwwwwrwwwwgw7wwwwwwsv7www7r5wwwwwww7w7w7ssrscrs''6767773s3awqswwwcVwssswwSswgwwgwqwwwwwwsswwwwu7wgwgwwRwqvww7RwwwwwwrScss7sw777777ssssssss777Cwww7%!w7w7wwVqswwwwwG47wwwwwwru''wtwCvwwwwwwcu4wswCwwwwwwqcW7Ww7w77ssssss7777704rVRswCCaasws77w7777wwww777wwwwwww77wgvsswwwwwwq''''w6Wsswwwwwwq77sw77sswsssssssssssssww7sw77w77777w7wsswwwwwwwwwwwwwwwww7wwwwww7wwwwww77wwwww77wwwwww77wwwwww7                ��?');
INSERT INTO `Categories` VALUES (7,'Produce','Dried fruit and bean curd ','/       ! ????Bitmap Image Paint.Picture         PBrush         ?)  BM?)      V   (   ?   x             ?  ?        ???  ?? ? ?   ? ??   ?  ?       3''3s3ss73s!wvVw4w!&WwwvVwvwwwtpwwwwwwwwwwuwwuGWwwwwwwwww7wwwwwwwwwww7wwwwwwww!6w w  73s72373s7!sa7wvwsawrWwwgwwvwwwwwwwwwwwWwwwpwFuwwwwwwwwwwwwwwwwwwwwwwwswwwwwwwRA%vp`3''s71sssr73ss07cGwgVrs7gwwgwgwwwwwwwwwwwwwWwtGWVwwwwwwwwwwwswwwwwwwwwwwwwwwwwwwwRcv733s73733s773ssswVWwWGw''Vwwgwgwwwwwwwwwwuwwp`pueGwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwpCws7s72ss73s#773su#cw''gwavw7CGwwwggwwwwwwwWwwwtwew%wwwwwwwwwwww7wwwwwwwwwwwwwwwwwwwww03s72s77#ss73ssc755''WRwwu6swwGwwwwwwwwwwWwwwtwtWFWwwwwwwwwwwwwwwswwswwwwwwwwwww7wwwwps7sw3s773''3sw7373ss1#7VVvutsswvwwwwwwwwwwuwtTgFu tuewwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww723373s3ss73237sw777sCswwvwtwssWwwwwwwWuwwu`eBWuwPGVVWwwwwwwwwwwwwwwwwwwwwwwwwswwwwwwwwwswsss''3w3737sss733rs7747wwwaewswwwwwwwwww`GVwpdeuegwwwwwwwwwwwwwww7wwwwwwwwww7wwwwww337373s3ssv37773sv77sssswvwwwwwwwwwwwwwwpRS@@GGR@CGV''gwwwwwwwwwwwwwww7wwwwwwwwwwwswwwss3rs73r733ss7#s''3ss7777swqwwwwwwwwWwWuwtdRVVdWVtvq7Ggwwwwwwwwwwwwwwwwwwwww7wwwwwww73773q73r7773s77773ssssw7swwwwwwwwwwWwwq@BP5a@D@gtGTu''v5wwwwwwwwwwwwwwwwwwwwwwwswwwsw3rs3s7#s73s7''7sss7777773sw7swwwwwwwwwwwd$ @@@D GwwFV5&rRGwwwwwwwwwwwwwwwwwswwwwwwwww777773s71s73s3s77776777w77swwwwwwwwWwwtP@BA    t@wwpGWGGRW57wwwwwwwwwwwwwwwwwwwwwwwwwws33s3s73s63s7s7s73sssss3w77swwwwwwWwwp@g  @  @wutttwebG!gewwwwwwwwwwwwwwwwww7www7ww777673s63ssss3s3sg7777swsww7w7wwuwwwwtuvEe   D WvV7etRwwRVswwwwwwwwwwwwwwwwww7wwwww3s3ss''7373737''7''73sssw7sw77wwwwwwwww@RGGu4pPW wutGu vTCGw%$gs gwwwwwwwwwwwwww7wwwwwww76w7733ssw3sssssssssw3sw7wsw7wwwwwwpD$gWGDew`@wwFDgtGed4$wqpwsWwwwwwwwwwwwwwwwwwwwww3s33sss733r73ss777773w7ssswwwwWuwwtpBPEv@G@wtD Ep@VTwvw@FsVwwwwwwwwwwwwwwwwwswww77w772s677773sssss77sw7wwsswwwwwt G@@@RFu E@@@up@d EBegGcscBVwsDsvwwwwwwwwwwwwwwwwww3333sss73s3s773s776sw77ssswwwwwww@TdBD44@WvD@@Vq@tEGu%cGGrV%cwwwwwwwwwwwwwwwww7w%!777sw777''7''7''73w3ssw7wswuuwwp @a`@@V@Dt@ww@  D@@DFTVRugse&sG5cF$0f7wwwwwwwwwwwwwww33sw!#S733ss33ssssw3w77sw77swwwt B@GA4 GPwVt@  peeGwgSq$vVtqe''Vwwwwwwwwwwwwwww%!tpw73s7w37ww777737sw77swwwWwt D4 Gp Gwteu  @tuwDeeewvRS!&vSe$cgwwwwwwwwwwwwswsw4pr703ws33ssssww77wswswwws@ dwQ  t  Fwt@t    @GwqGBVvwwvVcGtvwrspWwwwwwwwwwwwtp5swuasS#Wwssssw3swssw7wswwt4 @A` d  WwpAWp   wwvueegwwwf0rGw4 605wwwwwwwwwwswwCgRswg''33sssw7w777wsw7wwt  G 5@ D@ w`tevw     @wwwuPFTtvvvtwvS%rwVVWC''wwwwwwwww5rwt7Wwwv7u67sssswwwswwwww t@P@   Wt@VPt@  D$wvWe$GVRWgGgdgwCGecv4v2SwwwwwwwwwC547wrRw57ecqswwwwsssww7wwp  G  @v$V w @ @ WuuuW eedwewwvwwwsrtGqd6sGwwwwwwrww7Rwwtvwswww77sswwww7wwww @GC@  wTte @V@@ GwdwBPueVVwvwvtvwww''q`gwCFc0wwwww54sww7%7wqwwwwww7wsww7wwwwwp   @ @ Wpg  V  Ew`S`Gt@EdtvwdvVwgggvw Cwqcc4gwww7wsswwwwwwwwwwwwwww7wwwwwwq  @ @P@ GwtDA  @D   vqEvTVS@GpGGCVwwgdvwGGwa 6vFGg6RCrgwsw37w7ww7wwwwwwwwwRTFDdwwwwww @w wC@ t  @BPtwuDu  D wDt7''gwwewvvwwsSqdqg7$1wwswwwswww7wwwwvu`@@     evwwwv    tTt   @wwwst w  wgG4u7Vwvwwegwvtpq&gGGesC37s7ssswww7wwu%      @ @www   Wt`@D    wwAD@GP   wtwG''ag4wggVudgggrQ!44qrtvswwww7wwswwwwe  @P%eerW @Swp  Dqee`E @   Wwu@q   DwupGvwVsV6VwgggwtvwvsCs&gGsVs7vwwwwwwwu  uwwwWvwwu% w   GtG   p @dww@GP ww wVwgcWGwvvwwGGwtvcFeww7sswwwwwu  WwuwGWweuegWwwA`p  p@@A@@P  D Dw D   wwD 77vVut624''qegfvvegggaa756vwwwwwwwq@ wvVVWww5wvTuduwwA@G   @B@t@   wDged A   u@  swwwvweecSvtwwgVwwgwvSC7swwwwwww wGGwWwupVSWdWgWwp@  G4 P @G@@WP@q  u  wwwwwVVSa`vCgGwfwWGgwvw3wwwwwwwwt  twtWpwS57WDeEgwWe    P@w@@@t@gP@@@ut@ wwwwwwv7''egwat6qgwggvWggFGwwwwwwww  wwDwdRWu%40PqtPWWwwtP  @@@@@  De@e`V@  wt   gfVwgwwugSwC`vrSe''gvwgVwwvwwwwwwwp uCGDSEwWQA Vegeeeww    @  G@GP @P G@ut   TtPdegwgCwWGgRG''74gwwgwwgwwwwwwq EwVt@Eewu1Wsp@WWWWWWwwu   D  Wtq  R@7wWC@ GfFFGdtF@B@ww@csFT6sCBCqGgvVfVwwwwwwt 7vFVWwWqwSQR7wwwwwVWwt   Dts@D   DGae  DttugVVGefTdFwpCs''ettw42sqgewgwwwwww wduwuw5wUq55Wwwwwwwuww   wtDa    D wT  VvvVgFdgdtVdtB@dw`50rvgegGacCrwwwwwwwt ttugWtuwww40AwwwwwwwwgWt  GP`P   p@GP@@ GtttedwGVVfgGFtddursRV56%6GwwwwwwwGGuwwwwSQqQwwu5wW7uuww   t`@   GTpu  gGggwwvwgguttgFTd d53%#rVevVpr00wwwww wuwqwqwwwuwwwwwwwwwWt   w  `G@@ gwwwwvvwwwwgggttfVF@Gf73p0qrVagGgwwwwt wtwWwau5wwquSUwuququwwwwww   EpDa@P@@W@  wwvwgvwwvwgwwwvvvVedtas3s!vTg%6wwwwpwWwwu57www51!P''wW77SQwueuwt  D  `@w@@  wwwwwwwwwwwwgvvwwwvVed`Dd''773r1''4Wewwww GuwqqwwuwwwQW1 WwwuASSGuwwwwp  p @wT  wwwvwwwwwuwwwwwwwgggvVed`ps3733RRrVwwwu vuww5qusWwq01quw15eqqwuwWw    @@Ww@  wwwwwvvvFfVttwgwwwwwgefVF@F773qss3!%''wwww wuwu5pwsWqwvC!wwuSCwV5sGuwT  p@wT  wwwwwed@TAG@t`egwgwvVee`D`sp367773wuwp wWwSwWsVu0QqSQu5w5wwWtuwwp  @Ww@  wwwwv@Au7wsQEBFwvwetd E#7733#373wwwPwwwwPuwsuqsq!CwwqP7wwuwuwpGp  DT  wwwwd Ag7wwq5us5PDgwvdVTcs373SsS7wpwpwWW5quuwwqaqSppqqW5wSGWGqgww w      wwwwd 55w7w113S7WwwFd G3rSc3#63wPwPwwwuprSWwwqW!u  ww5wwA5u5twWuwPWp    wwwwtAqqsuwwqS%s51w@Gvuadd3373s3swpw wWwSqQusWwws0uwwww7w0wwuwWw`w   Wwww`@wssw75Q1Sw''vtgDc77373s3wPw WwwqpW7V5wwwqAqpwP uwwqWWWVwwwPWwp wwwd5wQq57wu07q!sQ11151w0gv@g@Css1c5#7w w uwWq1qaqWwuwWSpwwwusWwwwwWWwpww4wwwwA%7sSW7s11SS15w wwD`D32w7373w w GwWwWPWwqSSuquu5 WwuwW%wwWwwWwwwGwwwDSsqq13Sw!105q1177spvpeCs33s3sw w twusSW5wwQ!QCw7P5wwwwwWtuwwwuwuwwwwwtq%usCQ711SS1P755 gvD$777''73w w Gwwwu5wWwu1Q5uwu5u7wwwwwsSRuwWwwpGwvwwvAq753qS11C71501qpwp vv@C3r3327w w quuwwwwws 4wwwsWwwwwwWPASwwuwwwuwwu7Sw71%1q43QqSS1SswPtds773w wwwwwwwwwu7wWWQwvWCWwww54twwwwuwwwwD5sqp1111q!0111015w77 gt@3s33sw w@wWwuswwwq1  WwwwwwqqSGwwAAquwwWvwwwt75Sss11!7SQqs0s1uwGgcs7673wwwwwuu7wP PwwwwwtP4wu5GwwwwqWwwwA55sq!SsQCSsSSwqvD3c3s''w@wp wWWSwwww1wwwwww sRP7WuwtwwsAqs7S51sA57sq551!57wwbCs773wwt wwuSWwqq u1q7wuwWwu4Wu4WwwwuGwwT11Sq1Wqq17wq1q7sw10Swpt7333swpws uwqwww1PWwwu7wS@7SAwwuwtwwCSSq71173sW71q7Cq1q15%7w vC3ssc3wtwu wwW%ww57wwswqSp u5%wuwwwwp1ss7s1051sSq1s70WwPv7273swsww w7wwwqp5Wwwutq4AspSWvWwdwwT5!505337715SWw1AswwpR3sss7wuwwp wWWVwwqS P5sWvqq7 euqewwwwQwwaq153S1111sqq!11S55517wwQ5wwwwRe#3373wwwwp ucw7WWwS 1SuwQSssWswuwuww5515111qq71157wwwq7s5577 p53swwwww  SsQqwqGq 5q75AAwuusuuwRWwpSs1!5wSq110755111SQ1uwgB323wwwwwp  EwwCSwPS5wwwuwvwwtwT7Qqwq3q1s11w1q1Cq7BG12wwwwwu  @ Stq @G5%5q wawWwWuwwQwwpsq31170S111sss1q7u7Cw4 awwwwww   SPAw55a1wQ wWWwWvWwuwwq5311ssqqw51101wQQ57wsCCVwwwwwwp  wSeqpwtwwu5uwuwqwwUwwdwwCS55701Sq3w557S05qq15RwWw 44sacwwwwWww   WwWwQuwQwwwwwwpWu5vwwuQwwtS1q513S7751s7w111Spwsq57wPccwwwsrwwt  BVU7wwpwvWwwwwwwW5wUwupwwu%q1S1RQ51175ssSq053ww51qusWwwt5c`wwwwwSgs  W AeuwwwwqwwwwWtwwptwwVwwwpS1q1q311p11SS15115w5''5SS737wwp''sR4wswWwwqwP  u GSwwWP@wwWWwWuSWWwqaSwwwCqSS0Q577Qs17ssQSWWwqw7sSsww3wwwww7   wFWSPwp$wsqu5stqwwtPwwwwtw11151q0110sq3S0W1wqwps337wWw477wwwq@ w0 BWSu TFWuwpTwwp@wwwwPwS57q1q1!53wwC7wrs3w3sqgwvww0  u5C5$5CGttwwtwwwwwpq1114141Q!17SW0Pss77w4w777wuww@  wu5 FDDdDPQuwwP@CWwwwwwq53S1ss30555351q5731%3QWq''2ss33s3rssrSsgwsP  www51QAaSSwwww wswwwwp!1515111s1ss51q5u!Q77q1t q47sw7w777775sWsp   @Www7wwwwwwt@@ WwwwwwwwV51511uqsq1wwSwsqS5SWww3rW3r3sssss3r5''7wp    @VWWWGD@@  swwwwwwwwpW1S3SSPsS11wW3w11qaswwQ110swpcF2w77sssssw7s7%7w             Vwwwwwwwwwwps1QWw1SWsq1ws1wwu115wpw5a6%3ss777773s7ssscqw5!      twwwww7SwwwwwpG61q75551uwS7571!ww1wPag7CV7s7773sss73ssssrwwwwppq477wwwwwwwwwsw%wwwsAww3w7WwSq10sqq5w`rRRv7s7sssw72sss777773wwww7gwvwwwwwwwwwwwswuwSWsQq71C515wwq151wS50w5%''RR773sss77677w77777swwwwwvSsswwwwwwwwwwwswwq111773Sq3ws11w5577wQqGww5!ass77''3ss3sc373sss7spwugwwwwwSuwwwwgwwwwww0wsS01q1111Q51wSWw75517wwwwwww73ssssw77s77w''sssws7747sGswgWwswwvwwwwwwwwqGW511!sSS1111S1sqww73wwtwwwwww777773rs73s3s77737sssp4stwwvwwsGwwwvwwwwwt3sS11115s11q1SwsS0wwPwwwwwwssss77sssw3w7s777s3w77s3C0swwwww77wwwwvwvwq1q53s310q1q57wq1!wu''wwwwww773sss73s#73s7sss7w3ss77775#Rwwwwwwwwgwwwwp7S11!q111w171Swuw371wvWwwwwwwsss737sw7sssw3s7737ssw3ssssw747wwwswwwwwwwu551qqw73q7151qq1S1wwwpwwwwwww3s63ws33s7773w63sv3773ss73s3sssCVwwwu7wwvwv1Qsqqq3S7w1q11u1wwwwwwwwws717#3ww3sscw3sw737ssw''3s77w777ssWuwww47wvww1505SS5311w7Ww51R1W7wwqwwwwwwww63cc73w7773w73sss''73s67sc3sss777''6wwwsswwtsqsSs1151SSq1wQ%wqqsS7wwwtwwwwwwww17wacss73ssw3ss77777s7s3s7sssw77ssSsgwwwqvw`u55511517w7WsSq51wwwwwwwwwwwwccswwu%''1g773s77c3sss7s7s7s7773ss3ssqqwwgvqsSSSsS11SSS1wwwewwwwwwwwwwtv7swug3777ss3g73sw3s3s3w77''srwssssaauwwwt q511!q550sw1S50sS5wwwwwwwwwwwwsw7CGwssVq3ss7773s773w7''3w3sss77377''77767wvwpsSSSS77S1q 1qwwtwwwwwwwwwwtvwwsrRwwsvu47sss7rsw3sss7''77777w7''777ssu''5cw@w511q11s10w7qSA5q1wwwwwwwwwwww7sssw7w7sRs2r7773773w7763sssssS3ss773773sC4w0w555S51w1S1WwTwwwwwwwwwwwwwpssswssGwwue7Cssssw3w777777773w3ssswssw3ss0u Gw11113Swqs7wwwTW6wwwwwwwwwsssvwWww7sGrw7G7t45773w3ssssscss73W7773773w3773s ww5557W77w51qwwsCv4swwwwwwwwwps47277sssu''w7g7w''#S3w77777776ss7773w3ss3wssssp gs50q0wsSQ7swwWCcCCawwwwwwwsvwwwGSswwwsqaawwswwW''73s773ssss763scs#s77s377777SS1ue5qw1WwSwp cvwWww%''swwww47qew7''aqcsww7746tw7rRR3ssw7777ssss3ssscs#scs''3''7 5q17w1!7wu55wwwUu56ggw''4444wwwww7Gqw''77777wsq7Gwwwpr753ssss777773w3s3w7373sss70 WwuwWuu5wwwwwwvtGgwapsugVtwvs&qewwspwwwtwCGsswwsssCw7wuars7777ssssss3s7s3ssss737777 wwwwwuwwwwwwwGwvwvwe''qgcGwGprw7wwww44t7777%673wswptscw%%!css777777773773s73sss73s7@DuwwwwwwsVVvwvvvwvwwcCCTw`vWewwwwwwwsswwwwwsswwsww7swwwwww73ssssssssssss73s7373s73s731aCEettueeaacwwvwwwgwvwwvwcrWwvwww                ��?');
INSERT INTO `Categories` VALUES (8,'Seafood','Seaweed and fish ','/       ! ????Bitmap Image Paint.Picture         PBrush         ?)  BM?)      V   (   ?   x             ?  ?        ???  ?? ? ?   ? ??   ?  ?       !1!! 0 Q        4''Pa1aq3RRCAa!@0                      !!C%%  p0p       1!S4046CSQC5#BR`               !1AP0p04R 0s      !  10q@prSSSqsAu%467acCR5%%$p   !             0 !! CC 1!!q       p!1aa0''544746sw75%%vqq6   !  p            !BP0%Cv      0SCu qssSWsSGSSwwqt!eQp                 !Q q !!#040q        a$%!4417Cwu777wwswu7Sw7wwu2sS''@                !001Rq!7P       CQ3SCqwp7SswSSwsGww7w7SucG4qdR              QC A a%0  Cw       T06577G7ww7ww4wwwwwwwV5wwwqw%!A                !00001!!41w       SQsCSwwpwwwwwwwuwwwwu @   CqgRRA              CS % 00 4w     !@p6su7w7wwwwwwwgg%% BADt p@F A @550p!  @  0       !  001Q CRABP57w    0u5swwtwwwwwwRpTdFFvf@DdddFFCGP            0 !!A000 7Wp    esusswwwwwwww@@dDfVv @d     GgFBD !%40             0 1R$cP1CS7p   0!a45swwwwwwwttdt`@`@ @ F    @$gP@@P                !  1ap0@!Cwp  ! Gsw7wwwww'' ggd   pGd  DFDd   Fdd              R1!1A1S!Ssw    41!pw7wwwwwv DFd@@@   u        d V  gD B               RP`0a a !q57w    !qswwwwww@@Ggg@   d d%gR       @ d@  Fvt           1!1!!A1 Q%7p  $! 754wwwwwdgd@   G@@www         tv gF@ Ft              R  ! p!1swp  qsSwwwRDvwv pF@@s1ww1      wwp@@   FdA!       !1!pR1!570 @0474wwDFvF  d d!1Sq310    wp   g@  g@           A  $0 !0!C3qq  aqswWudwg@ G@p Aq33q11S1          PFt`  @        $0R3 q5567 1C45777gGfvP Bv  eq37313s3ss         d FT         $0aC51%0SsQq  3SSSwtvd @g`t @GwR1533w773733         f           0Q 1a!!S453Ssp pa7577wvFw DF`  wv371ssswqs110     v@ `     @ 0!!aBSPq0S57  71sswwvwwd Ft  G''wp!1sRq 3w31w03q0   w@         0QP 53A75'' TsW7wwwwFF@  d` www01 111 7w71rs010    Ft @         !01%!A61qsSs77wwwvv@  P   Wwwv13ss71 wsw1rq71011   F       B  10@q!%ssap 7Swwwwwgg td` sssw01773w0qp  3ws7!s010   g@       000%407 u7''wwwwwvt @wsw7sPws71  0  ws3s10011  t     0    1!ApCCSssc3wwwwwf@ dp1331sw 1ww7p   s    w773 113103  v@        !R ''0pr7wwS7wwwwgP   S11sqsss77wsw3   CsS 3757! @wd    0  5!rQ1wwwwpsq7wwwtw`` 373770 1ww7ww      31  1177s w@f@       0  ! a#77Wwwqwwwwv e s33773sw13wwwws     13su   0F G@       5015!pq%0wssswwwvfDdas7307s3p 3psww0p  1170 77s    1   `        !!50qSwwwwwww@ d 7s!373qs0 0Q77ws3! wpC  wsqqp  0vR     0!Rq1%0uwssqwwv    ss7775!37p  10 4ww0s ww   w7771 Fv@       !!0002!CRpGwwwwwwvgv 353s35133qs0  w71w1  ''w7wwp! pv    !  0p ww7wwwGv ta73s73351q33p   0 7s7S03sp 7w7w7gG@       000!0C10qp7 pqw7wwf  1ss73ssq003RSs   131w11Sww 01  ws7  d      A!   !0Pw p w swwwv@t@C3s71s313!33   01ws37www77s   d   P  ! !%A0q%7qwpwswwt   1u3S7753q000550   11w1577ww 1w0 v@     00   !417ppspswwvg t''S3s7s33q75#3S  1135773swwssq1  g`t`       % !p0s0p wwwww@ @D!Sw3773#   3ws17w777sw3 @p gA    !!   40pSw s w w77wv@   S33sss710131!11 !5#3w7wssw7s1!  dVDf    A @ @ 15!srppswwwF G@1qw73q37a7 !103537s33ss3ssr743  fBvA  `  0p41qcpuwwvt $dd773sSs3qq135!110q07ws1#ww73sp3  @e`0    P   !!qssp%`P 77wwg @`Ss3151330s1!001q1!#S0773w11120qw553   v@ 0   !!!!411 CpSp7 qswwtgdp  S7777371qs3S!37s33 1  @   P    @a3Sss0 pswwwvtF@Fe3SsS11q7312q%!1210517771!sq         0 V D0!   $41!555 p7777wv@ g  B133ss3Ss11100s#013w0         B dfv50B !sA!ss q CSwwwe` V@Dssqq17133S#313q73ww 5        t@ vCGwwwww5 `0 P!3q!p01sswwvp ` d%133sq773s3s1!1011!q31113w       V @g gwwss777w50   A4!!sBp p57wwGd  R fSSSS73s373SS1!3S7311157p 0    Fd`  $wss3sss73ae% ` q31s 0!Cqswwwg  e @3377753s731703!s3 ww3  d tDGw73s3333372a C !!!A''p@1057swv@    W573qssss71qs1711311113w7wwwr F  F`vssss77773s31 $Bpqq3Q!P  qasswwt   FFcS15373s53s31s3s1110s173wwwws11  F@ Ggwss7333373s0 0!!C4S p#57wwG`P   wSs3s73s7771!sSS111 vqwwwsB$   gwwsss7777333   ppq01q414101sSw7vgd a!''753ss1q733s33Sqwwwsw 11   aFwww73733333'' fv !P6C 0SR7wuv  p AS3s3sS71sssS5113wwwpww1111 vwwwssw3sss3gvGGGgdaa@0103Qp0pq41sSw7vd G`` q#s7711s771111375ww7pwp  0 wwww7737333vvvVGgGA`7c3PR577ww@ @  0153ss3sss7357111ww3ww@  1110 1  gwwwwsssssrvvwgvvvvV$4 00341ap1aqsSw5wv`@ pS1353757777715313wwwwp    111`dwwwwwww7337wFwgwww`47q R11a07SCwswug    a3qs333s13s3S s17w      0wwwwwwwwwwwwWVRRtwvwtP@ 0q5CPRqsSsWGwd` v@ ss377577s73SS 771 @      10ggwwwwwwwwwu%  wvG 0 q5 C#SS57sssV  dw173S33S3S5311!#110 G    ` @DwwwwwwwwwwrR@@@apppawvA qq%7!a%4$ssqswstwwwD  `573ss1ss3s311 7W t` @ gtgwwwwwwwwwwDB@ RG@0  5 P0BR1q7qaqu7wwwwwwwtv@ q5733337! @`F   fgwwwwwwwwwue%`@@ACPquppt 0q3Qa550q%777wwwwwwwwwFp  qq53qqsSs33  @ e g g@BFwwwwwwwwwwwvVFe''BDpt7 P0CSCsSW4cwwwwwwwwwwwt` Cs1557333Q37 gPde`''wFgwwwwwwwwwwvEdeGFDRTRRWu  3Q#5P571sWwwwwwwwwwwwwt@D 1111qqq3 dD`p  GfwwwwwwwwwwwwGvVVF$ %''55%7t  0ps7wwwwwwwwwwwwwwwwgg`  5753S111`  `G   @tDgwwwwwwwwwwwwwwwwwtd@`@aaPgapWsAa #5r777wwwwvvwwgggfwvwtFV  q53q13 PF@      wfvwwwwwwwwwwwwwwwwwwwttRV7G%w A01qaqwwwwwwdwwvvwwGGvgvwtdwvS511q1wPdg    ffGwwwwwwwwwwwwwwwwwwwwwtSErSWwprSssswwwwgwwwwwvvvvwwgvwwtdg@sp`  `  wvGwwwwwswwwwwwwwwwwfgegwwww@e%rt5ww1qsR7wwwwwwwvteDTeDeDvwggwwFFGgu!v@ v  ggDfFwwwwww7773sswwwwww EdFGFvwwwRWGwP 57777wwGwwtdvvggFgFe''fvwgwwtvGFTggBGg@Dtdvwwwwwwwwsssw77wwwww EdDtveGGwtaepRSggwpsRspwwwwwwwwGgwwWwggtvVDG GvwgwwtwgftdeDtdvGewwwwwwww77sss77wwwwtfFggedddwwV%ww 555g77wwwwGgwwvdvVVFVDvtt gvwwwGwwwwvvrWEgw7wwwwwwwwss777sswwww FTeggfVFDFwV5pW4rwwPasp73SwwwwwvwwtvTvVGe`edFFGdD$vwwwwwwwwqwWg''wwswwwwwwwsw7sswwwt vdvvvvdtdGubStsUww 55qt7swwwvwwwGd&D$$DBG@edFvVGvwwwwwwqgpwSe7w7wwwwww77rt4wwwww@eggggdtdBFVgC7wu%!7373Swwwwwwtdf@DFT''e$B@GGe wgwwwwpupw7SVwwwwwwwwwt7wwwwp vVvwgggFDd@@w55gww 2qtstwwwwwwvFp@G t@g@dp FVVdvtvwwwwVws`wwSv5wwwwwwwwvAwwww@ggwfvtdeFDdduwCWwt!737swwwwvtd@ Dg Ft eg`dt$gdwwwww wWwwvBWwwwwwwwe!AwwwwFgvgwggvfddD`sCWwwp 00RstsqwwwwwG` dB DGFFtFBGEwPdwt''gwwwWvwtu%w77wwwwwvwwwtugwgvvgfgD    uwwwtAC77wwwwwtd@F  $fpgGddttfdefTwdwwwvRwWusswawVwswwwsPwwwvwgggfwgP      wwwr RCsqsqwwwwF@t`dD@@d@`FttpGu''wwpw7spWw''swwwwwuRwwvGegwwwwvvd      wwwA  @7w77wwvV@ d`    d$gFW$GwGwwu$wtuspwpw7wwa  wwqevwwwBF         wua   ! sqw5wwwtdD `Dt$ d`@GDG$Gtegdwwpwswqqgvwwwww4!% 0!7wVwgwT @      aC    73wwwwd BF@FfT$  edvFvVE''BVGwwwttwwwcwwQw77wsAWvvw` `R$pt!`B       w5u7wwwG@@ptfE`  FVdvGgvVtpwGwswwww7swgCww74RBwwVwp@AE$WFpp @    3w7qwwv`tt DBDdFv  ededw` dgwwtwwwwwwwe7wwa!PQp7pww@g$rBVBVAGG  p% a 0 Au7swwwuFFF `dG@F@  GFpBv4vRWVwwpwwww3s7w3t1ss7S@40! 0 WTw`vCAe t$4v   0p p 07q77w7v`G  a@@dddp`r   gFAGadvgwwwwwwwwwwwwW751u  Ascpg`V%P`vGBWBW G  %! swSuwwuGDDFD @Dd@d    7wwvttwtwwwwwwwwwswsrQswsu WVV4G$5`t$vp17777wwvF @ `t  vtVv  3wwwwwGtwwwwww7ws7wwww6w7!B !!w G`tC4RPFCVt B p C a`Su7w7w@gDd gF@`F B  Gwwwe@gGvwwwwwwwww7!7sSswSt@   pCeCGcCD$Bpt4aeds @077qwwwwF DDdFt@@wGa gwwvvwvwWwwwwwwwwuGwsu''7w   P0!CRRRp4444CCEad4pet P  4775swwDp`FPe@BFB@ddq gwwwGVtvwwwwwwwwws13W5sWwsp    4`tpVGBC@`t4e&SFVw00!qw6W7svFV$dFDd@`$RF0wwwgeewwwwwwwwwww7w1sw7qwu`  !PVRa`t4444a`VRGCGw    q@7577wwted@g`gB@dt dwp@Wwwwtvwwwwwwwwwww7wwesu7w7     !$aaeC@eaFWpGu%gu$! aP16sGw77w@v@F@@`$@Rgwe3wwwvwGvwwwwwwwwwswww5sw6w  05dadpRpRV0cB@wr  a747wwwD`D ` DD$dVgww1wwww@vWwwwwwwwwww3wwvRqaeu%aaAavBSFtRudt%%epwwu!!! r#sGsWsSwsqd $edDdd`FFDVwwswwwtggwwwwwwwwwwwwwsu7p3S7swwwwwVGCBRPa@Rc@GwC@0A0P45%57swwGt@VFD@@`dvwwswwgtwwwwwwwwwwwsww7P%%swat5`tDe%GRP `RVa@ww00@p0CsWRRww7wwvFFd@ fF  FFPGww4wvwGGwwwwwwwwwwwwwwsrRRGRqwBWBp V g$ 6wwpa4@P045%3Gqqssut@ DT @@ Df`wwwwtgvwwwwwwwwwwwwqwww0pP1!Cw57wt$B TprPRSVT www5!a !RRWqswwW6wdV`@vd  EFwwvvtwwwwwwwwwwwwswwwq%57Wp1@@@B @@$$$ WGwa Aq60R3G0pw5777W7Wf ddDBF@v@etGwweGwswwwwwwwwwwwwww2PR1pcSaw!s4  !  wegwA2Q# Ap!WG5sW''W7D@d   tDVdwwww''wwqsGwwwwwwwwwwsp4 prSRqepa  @@a%pgFWeaa`1!pR0p0a51s3V7swwG`G@  FDdGFwwwEsqww5wwwwwwwwwwp%#PSq6q!%!   BFtwRRR%000RP!aecCG5sAC57u4ud`@@ BFtgwwcww5swwwwwwwwwww!pP6%''SF   dG$ P%  !!a R0a51a%''7Sqsw6VDtdFDucWsvqssSwwwwwwwwwqpRQ@q5!sS$!Q0$Bpp0 !1a!# aR0Sae4psCqaq66ewsGeAeg657qe74qsqtwwwwwwwq0445RR0P2PB44 0C 1ppSSSsp754577w7Ru4swsCRpwwwwwwwv%5CT51arW0a0q%!1 CA04p4$%cA#p1q$CrSsCSwsqg53pG5q50q4!u7wwtwsRRSS0p0%! !p q 0C!p040  q$%5V%5%5''CcW sR4657 G0sw7wPqAp50pCC5%0aA !A!!0@ 04 q!a!A04$% a07BSsCS5%!aq''qp%7SqSaasw40F23CsRRS@00 BR a !00 Pq  q@6 pRPSaCAqa%%1asCpCRR5`rSaq qqsw3R50p0$441q!%c  !!0r P!%4Ca0C$%2!  32@qqa0qqpa5554351q07''0p1`00! q5qCSSC 04q a Q AA0140 P%! @6CCP%%%%CCpCGRRP$1pSG4C$''BCRCCBq 0 00RQBSApR4$!! 01q0q57 q50q517SSA5!01! !!0qsPq51p1! 0!  !010 !! 0CC                ��?');
INSERT INTO `Customers` VALUES ('ALFKI','Alfreds Futterkiste','Maria Anders','Sales Representative','Obere Str. 57','Berlin',NULL,'12209','Germany','030-0074321','030-0076545');
INSERT INTO `Customers` VALUES ('ANATR','Ana Trujillo Emparedados y helados','Ana Trujillo','Owner','Avda. de la Constituci?n 2222','M?xico D.F.',NULL,'05021','Mexico','(5) 555-4729','(5) 555-3745');
INSERT INTO `Customers` VALUES ('ANTON','Antonio Moreno Taquer?a','Antonio Moreno','Owner','Mataderos  2312','M?xico D.F.',NULL,'05023','Mexico','(5) 555-3932',NULL);
INSERT INTO `Customers` VALUES ('AROUT','Around the Horn','Thomas Hardy','Sales Representative','120 Hanover Sq.','London',NULL,'WA1 1DP','UK','(171) 555-7788','(171) 555-6750');
INSERT INTO `Customers` VALUES ('BERGS','Berglunds snabbk?p','Christina Berglund','Order Administrator','Berguvsv?gen  8','Lule?',NULL,'S-958 22','Sweden','0921-12 34 65','0921-12 34 67');
INSERT INTO `Customers` VALUES ('BLAUS','Blauer See Delikatessen','Hanna Moos','Sales Representative','Forsterstr. 57','Mannheim',NULL,'68306','Germany','0621-08460','0621-08924');
INSERT INTO `Customers` VALUES ('BLONP','Blondesddsl p?re et fils','Fr?d?rique Citeaux','Marketing Manager','24, place Kl?ber','Strasbourg',NULL,'67000','France','88.60.15.31','88.60.15.32');
INSERT INTO `Customers` VALUES ('BOLID','B?lido Comidas preparadas','Mart?n Sommer','Owner','C/ Araquil, 67','Madrid',NULL,'28023','Spain','(91) 555 22 82','(91) 555 91 99');
INSERT INTO `Customers` VALUES ('BONAP','Bon app''','Laurence Lebihan','Owner','12, rue des Bouchers','Marseille',NULL,'13008','France','91.24.45.40','91.24.45.41');
INSERT INTO `Customers` VALUES ('BOTTM','Bottom-Dollar Markets','Elizabeth Lincoln','Accounting Manager','23 Tsawassen Blvd.','Tsawassen','BC','T2F 8M4','Canada','(604) 555-4729','(604) 555-3745');
INSERT INTO `Customers` VALUES ('BSBEV','B''s Beverages','Victoria Ashworth','Sales Representative','Fauntleroy Circus','London',NULL,'EC2 5NT','UK','(171) 555-1212',NULL);
INSERT INTO `Customers` VALUES ('CACTU','Cactus Comidas para llevar','Patricio Simpson','Sales Agent','Cerrito 333','Buenos Aires',NULL,'1010','Argentina','(1) 135-5555','(1) 135-4892');
INSERT INTO `Customers` VALUES ('CENTC','Centro comercial Moctezuma','Francisco Chang','Marketing Manager','Sierras de Granada 9993','M?xico D.F.',NULL,'05022','Mexico','(5) 555-3392','(5) 555-7293');
INSERT INTO `Customers` VALUES ('CHOPS','Chop-suey Chinese','Yang Wang','Owner','Hauptstr. 29','Bern',NULL,'3012','Switzerland','0452-076545',NULL);
INSERT INTO `Customers` VALUES ('COMMI','Com?rcio Mineiro','Pedro Afonso','Sales Associate','Av. dos Lus?adas, 23','Sao Paulo','SP','05432-043','Brazil','(11) 555-7647',NULL);
INSERT INTO `Customers` VALUES ('CONSH','Consolidated Holdings','Elizabeth Brown','Sales Representative','Berkeley Gardens 12  Brewery','London',NULL,'WX1 6LT','UK','(171) 555-2282','(171) 555-9199');
INSERT INTO `Customers` VALUES ('DRACD','Drachenblut Delikatessen','Sven Ottlieb','Order Administrator','Walserweg 21','Aachen',NULL,'52066','Germany','0241-039123','0241-059428');
INSERT INTO `Customers` VALUES ('DUMON','Du monde entier','Janine Labrune','Owner','67, rue des Cinquante Otages','Nantes',NULL,'44000','France','40.67.88.88','40.67.89.89');
INSERT INTO `Customers` VALUES ('EASTC','Eastern Connection','Ann Devon','Sales Agent','35 King George','London',NULL,'WX3 6FW','UK','(171) 555-0297','(171) 555-3373');
INSERT INTO `Customers` VALUES ('ERNSH','Ernst Handel','Roland Mendel','Sales Manager','Kirchgasse 6','Graz',NULL,'8010','Austria','7675-3425','7675-3426');
INSERT INTO `Customers` VALUES ('FAMIA','Familia Arquibaldo','Aria Cruz','Marketing Assistant','Rua Or?s, 92','Sao Paulo','SP','05442-030','Brazil','(11) 555-9857',NULL);
INSERT INTO `Customers` VALUES ('FISSA','FISSA Fabrica Inter. Salchichas S.A.','Diego Roel','Accounting Manager','C/ Moralzarzal, 86','Madrid',NULL,'28034','Spain','(91) 555 94 44','(91) 555 55 93');
INSERT INTO `Customers` VALUES ('FOLIG','Folies gourmandes','Martine Ranc?','Assistant Sales Agent','184, chauss?e de Tournai','Lille',NULL,'59000','France','20.16.10.16','20.16.10.17');
INSERT INTO `Customers` VALUES ('FOLKO','Folk och f? HB','Maria Larsson','Owner','?kergatan 24','Br?cke',NULL,'S-844 67','Sweden','0695-34 67 21',NULL);
INSERT INTO `Customers` VALUES ('FRANK','Frankenversand','Peter Franken','Marketing Manager','Berliner Platz 43','M?nchen',NULL,'80805','Germany','089-0877310','089-0877451');
INSERT INTO `Customers` VALUES ('FRANR','France restauration','Carine Schmitt','Marketing Manager','54, rue Royale','Nantes',NULL,'44000','France','40.32.21.21','40.32.21.20');
INSERT INTO `Customers` VALUES ('FRANS','Franchi S.p.A.','Paolo Accorti','Sales Representative','Via Monte Bianco 34','Torino',NULL,'10100','Italy','011-4988260','011-4988261');
INSERT INTO `Customers` VALUES ('FURIB','Furia Bacalhau e Frutos do Mar','Lino Rodriguez','Sales Manager','Jardim das rosas n. 32','Lisboa',NULL,'1675','Portugal','(1) 354-2534','(1) 354-2535');
INSERT INTO `Customers` VALUES ('GALED','Galer?a del gastr?nomo','Eduardo Saavedra','Marketing Manager','Rambla de Catalu?a, 23','Barcelona',NULL,'08022','Spain','(93) 203 4560','(93) 203 4561');
INSERT INTO `Customers` VALUES ('GODOS','Godos Cocina T?pica','Jos? Pedro Freyre','Sales Manager','C/ Romero, 33','Sevilla',NULL,'41101','Spain','(95) 555 82 82',NULL);
INSERT INTO `Customers` VALUES ('GOURL','Gourmet Lanchonetes','Andr? Fonseca','Sales Associate','Av. Brasil, 442','Campinas','SP','04876-786','Brazil','(11) 555-9482',NULL);
INSERT INTO `Customers` VALUES ('GREAL','Great Lakes Food Market','Howard Snyder','Marketing Manager','2732 Baker Blvd.','Eugene','OR','97403','USA','(503) 555-7555',NULL);
INSERT INTO `Customers` VALUES ('GROSR','GROSELLA-Restaurante','Manuel Pereira','Owner','5? Ave. Los Palos Grandes','Caracas','DF','1081','Venezuela','(2) 283-2951','(2) 283-3397');
INSERT INTO `Customers` VALUES ('HANAR','Hanari Carnes','Mario Pontes','Accounting Manager','Rua do Pa?o, 67','Rio de Janeiro','RJ','05454-876','Brazil','(21) 555-0091','(21) 555-8765');
INSERT INTO `Customers` VALUES ('HILAA','HILARION-Abastos','Carlos Hern?ndez','Sales Representative','Carrera 22 con Ave. Carlos Soublette #8-35','San Crist?bal','T?chira','5022','Venezuela','(5) 555-1340','(5) 555-1948');
INSERT INTO `Customers` VALUES ('HUNGC','Hungry Coyote Import Store','Yoshi Latimer','Sales Representative','City Center Plaza 516 Main St.','Elgin','OR','97827','USA','(503) 555-6874','(503) 555-2376');
INSERT INTO `Customers` VALUES ('HUNGO','Hungry Owl All-Night Grocers','Patricia McKenna','Sales Associate','8 Johnstown Road','Cork','Co. Cork',NULL,'Ireland','2967 542','2967 3333');
INSERT INTO `Customers` VALUES ('ISLAT','Island Trading','Helen Bennett','Marketing Manager','Garden House Crowther Way','Cowes','Isle of Wight','PO31 7PJ','UK','(198) 555-8888',NULL);
INSERT INTO `Customers` VALUES ('KOENE','K?niglich Essen','Philip Cramer','Sales Associate','Maubelstr. 90','Brandenburg',NULL,'14776','Germany','0555-09876',NULL);
INSERT INTO `Customers` VALUES ('LACOR','La corne d''abondance','Daniel Tonini','Sales Representative','67, avenue de l''Europe','Versailles',NULL,'78000','France','30.59.84.10','30.59.85.11');
INSERT INTO `Customers` VALUES ('LAMAI','La maison d''Asie','Annette Roulet','Sales Manager','1 rue Alsace-Lorraine','Toulouse',NULL,'31000','France','61.77.61.10','61.77.61.11');
INSERT INTO `Customers` VALUES ('LAUGB','Laughing Bacchus Wine Cellars','Yoshi Tannamuri','Marketing Assistant','1900 Oak St.','Vancouver','BC','V3F 2K1','Canada','(604) 555-3392','(604) 555-7293');
INSERT INTO `Customers` VALUES ('LAZYK','Lazy K Kountry Store','John Steel','Marketing Manager','12 Orchestra Terrace','Walla Walla','WA','99362','USA','(509) 555-7969','(509) 555-6221');
INSERT INTO `Customers` VALUES ('LEHMS','Lehmanns Marktstand','Renate Messner','Sales Representative','Magazinweg 7','Frankfurt a.M.',NULL,'60528','Germany','069-0245984','069-0245874');
INSERT INTO `Customers` VALUES ('LETSS','Let''s Stop N Shop','Jaime Yorres','Owner','87 Polk St. Suite 5','San Francisco','CA','94117','USA','(415) 555-5938',NULL);
INSERT INTO `Customers` VALUES ('LILAS','LILA-Supermercado','Carlos Gonz?lez','Accounting Manager','Carrera 52 con Ave. Bol?var #65-98 Llano Largo','Barquisimeto','Lara','3508','Venezuela','(9) 331-6954','(9) 331-7256');
INSERT INTO `Customers` VALUES ('LINOD','LINO-Delicateses','Felipe Izquierdo','Owner','Ave. 5 de Mayo Porlamar','I. de Margarita','Nueva Esparta','4980','Venezuela','(8) 34-56-12','(8) 34-93-93');
INSERT INTO `Customers` VALUES ('LONEP','Lonesome Pine Restaurant','Fran Wilson','Sales Manager','89 Chiaroscuro Rd.','Portland','OR','97219','USA','(503) 555-9573','(503) 555-9646');
INSERT INTO `Customers` VALUES ('MAGAA','Magazzini Alimentari Riuniti','Giovanni Rovelli','Marketing Manager','Via Ludovico il Moro 22','Bergamo',NULL,'24100','Italy','035-640230','035-640231');
INSERT INTO `Customers` VALUES ('MAISD','Maison Dewey','Catherine Dewey','Sales Agent','Rue Joseph-Bens 532','Bruxelles',NULL,'B-1180','Belgium','(02) 201 24 67','(02) 201 24 68');
INSERT INTO `Customers` VALUES ('MEREP','M?re Paillarde','Jean Fresni?re','Marketing Assistant','43 rue St. Laurent','Montr?al','Qu?bec','H1J 1C3','Canada','(514) 555-8054','(514) 555-8055');
INSERT INTO `Customers` VALUES ('MORGK','Morgenstern Gesundkost','Alexander Feuer','Marketing Assistant','Heerstr. 22','Leipzig',NULL,'04179','Germany','0342-023176',NULL);
INSERT INTO `Customers` VALUES ('NORTS','North/South','Simon Crowther','Sales Associate','South House 300 Queensbridge','London',NULL,'SW7 1RZ','UK','(171) 555-7733','(171) 555-2530');
INSERT INTO `Customers` VALUES ('OCEAN','Oc?ano Atl?ntico Ltda.','Yvonne Moncada','Sales Agent','Ing. Gustavo Moncada 8585 Piso 20-A','Buenos Aires',NULL,'1010','Argentina','(1) 135-5333','(1) 135-5535');
INSERT INTO `Customers` VALUES ('OLDWO','Old World Delicatessen','Rene Phillips','Sales Representative','2743 Bering St.','Anchorage','AK','99508','USA','(907) 555-7584','(907) 555-2880');
INSERT INTO `Customers` VALUES ('OTTIK','Ottilies K?seladen','Henriette Pfalzheim','Owner','Mehrheimerstr. 369','K?ln',NULL,'50739','Germany','0221-0644327','0221-0765721');
INSERT INTO `Customers` VALUES ('PARIS','Paris sp?cialit?s','Marie Bertrand','Owner','265, boulevard Charonne','Paris',NULL,'75012','France','(1) 42.34.22.66','(1) 42.34.22.77');
INSERT INTO `Customers` VALUES ('PERIC','Pericles Comidas cl?sicas','Guillermo Fern?ndez','Sales Representative','Calle Dr. Jorge Cash 321','M?xico D.F.',NULL,'05033','Mexico','(5) 552-3745','(5) 545-3745');
INSERT INTO `Customers` VALUES ('PICCO','Piccolo und mehr','Georg Pipps','Sales Manager','Geislweg 14','Salzburg',NULL,'5020','Austria','6562-9722','6562-9723');
INSERT INTO `Customers` VALUES ('PRINI','Princesa Isabel Vinhos','Isabel de Castro','Sales Representative','Estrada da sa?de n. 58','Lisboa',NULL,'1756','Portugal','(1) 356-5634',NULL);
INSERT INTO `Customers` VALUES ('QUEDE','Que Del?cia','Bernardo Batista','Accounting Manager','Rua da Panificadora, 12','Rio de Janeiro','RJ','02389-673','Brazil','(21) 555-4252','(21) 555-4545');
INSERT INTO `Customers` VALUES ('QUEEN','Queen Cozinha','L?cia Carvalho','Marketing Assistant','Alameda dos Can?rios, 891','Sao Paulo','SP','05487-020','Brazil','(11) 555-1189',NULL);
INSERT INTO `Customers` VALUES ('QUICK','QUICK-Stop','Horst Kloss','Accounting Manager','Taucherstra?e 10','Cunewalde',NULL,'01307','Germany','0372-035188',NULL);
INSERT INTO `Customers` VALUES ('RANCH','Rancho grande','Sergio Guti?rrez','Sales Representative','Av. del Libertador 900','Buenos Aires',NULL,'1010','Argentina','(1) 123-5555','(1) 123-5556');
INSERT INTO `Customers` VALUES ('RATTC','Rattlesnake Canyon Grocery','Paula Wilson','Assistant Sales Representative','2817 Milton Dr.','Albuquerque','NM','87110','USA','(505) 555-5939','(505) 555-3620');
INSERT INTO `Customers` VALUES ('REGGC','Reggiani Caseifici','Maurizio Moroni','Sales Associate','Strada Provinciale 124','Reggio Emilia',NULL,'42100','Italy','0522-556721','0522-556722');
INSERT INTO `Customers` VALUES ('RICAR','Ricardo Adocicados','Janete Limeira','Assistant Sales Agent','Av. Copacabana, 267','Rio de Janeiro','RJ','02389-890','Brazil','(21) 555-3412',NULL);
INSERT INTO `Customers` VALUES ('RICSU','Richter Supermarkt','Michael Holz','Sales Manager','Grenzacherweg 237','Gen?ve',NULL,'1203','Switzerland','0897-034214',NULL);
INSERT INTO `Customers` VALUES ('ROMEY','Romero y tomillo','Alejandra Camino','Accounting Manager','Gran V?a, 1','Madrid',NULL,'28001','Spain','(91) 745 6200','(91) 745 6210');
INSERT INTO `Customers` VALUES ('SANTG','Sant? Gourmet','Jonas Bergulfsen','Owner','Erling Skakkes gate 78','Stavern',NULL,'4110','Norway','07-98 92 35','07-98 92 47');
INSERT INTO `Customers` VALUES ('SAVEA','Save-a-lot Markets','Jose Pavarotti','Sales Representative','187 Suffolk Ln.','Boise','ID','83720','USA','(208) 555-8097',NULL);
INSERT INTO `Customers` VALUES ('SEVES','Seven Seas Imports','Hari Kumar','Sales Manager','90 Wadhurst Rd.','London',NULL,'OX15 4NB','UK','(171) 555-1717','(171) 555-5646');
INSERT INTO `Customers` VALUES ('SIMOB','Simons bistro','Jytte Petersen','Owner','Vinb?ltet 34','Kobenhavn',NULL,'1734','Denmark','31 12 34 56','31 13 35 57');
INSERT INTO `Customers` VALUES ('SPECD','Sp?cialit?s du monde','Dominique Perrier','Marketing Manager','25, rue Lauriston','Paris',NULL,'75016','France','(1) 47.55.60.10','(1) 47.55.60.20');
INSERT INTO `Customers` VALUES ('SPLIR','Split Rail Beer & Ale','Art Braunschweiger','Sales Manager','P.O. Box 555','Lander','WY','82520','USA','(307) 555-4680','(307) 555-6525');
INSERT INTO `Customers` VALUES ('SUPRD','Supr?mes d?lices','Pascale Cartrain','Accounting Manager','Boulevard Tirou, 255','Charleroi',NULL,'B-6000','Belgium','(071) 23 67 22 20','(071) 23 67 22 21');
INSERT INTO `Customers` VALUES ('THEBI','The Big Cheese','Liz Nixon','Marketing Manager','89 Jefferson Way Suite 2','Portland','OR','97201','USA','(503) 555-3612',NULL);
INSERT INTO `Customers` VALUES ('THECR','The Cracker Box','Liu Wong','Marketing Assistant','55 Grizzly Peak Rd.','Butte','MT','59801','USA','(406) 555-5834','(406) 555-8083');
INSERT INTO `Customers` VALUES ('TOMSP','Toms Spezialit?ten','Karin Josephs','Marketing Manager','Luisenstr. 48','M?nster',NULL,'44087','Germany','0251-031259','0251-035695');
INSERT INTO `Customers` VALUES ('TORTU','Tortuga Restaurante','Miguel Angel Paolino','Owner','Avda. Azteca 123','M?xico D.F.',NULL,'05033','Mexico','(5) 555-2933',NULL);
INSERT INTO `Customers` VALUES ('TRADH','Tradi??o Hipermercados','Anabela Domingues','Sales Representative','Av. In?s de Castro, 414','Sao Paulo','SP','05634-030','Brazil','(11) 555-2167','(11) 555-2168');
INSERT INTO `Customers` VALUES ('TRAIH','Trail''s Head Gourmet Provisioners','Helvetius Nagy','Sales Associate','722 DaVinci Blvd.','Kirkland','WA','98034','USA','(206) 555-8257','(206) 555-2174');
INSERT INTO `Customers` VALUES ('VAFFE','Vaffeljernet','Palle Ibsen','Sales Manager','Smagsloget 45','?rhus',NULL,'8200','Denmark','86 21 32 43','86 22 33 44');
INSERT INTO `Customers` VALUES ('VICTE','Victuailles en stock','Mary Saveley','Sales Agent','2, rue du Commerce','Lyon',NULL,'69004','France','78.32.54.86','78.32.54.87');
INSERT INTO `Customers` VALUES ('VINET','Vins et alcools Chevalier','Paul Henriot','Accounting Manager','59 rue de l''Abbaye','Reims',NULL,'51100','France','26.47.15.10','26.47.15.11');
INSERT INTO `Customers` VALUES ('WANDK','Die Wandernde Kuh','Rita M?ller','Sales Representative','Adenauerallee 900','Stuttgart',NULL,'70563','Germany','0711-020361','0711-035428');
INSERT INTO `Customers` VALUES ('WARTH','Wartian Herkku','Pirkko Koskitalo','Accounting Manager','Torikatu 38','Oulu',NULL,'90110','Finland','981-443655','981-443655');
INSERT INTO `Customers` VALUES ('WELLI','Wellington Importadora','Paula Parente','Sales Manager','Rua do Mercado, 12','Resende','SP','08737-363','Brazil','(14) 555-8122',NULL);
INSERT INTO `Customers` VALUES ('WHITC','White Clover Markets','Karl Jablonski','Owner','305 - 14th Ave. S. Suite 3B','Seattle','WA','98128','USA','(206) 555-4112','(206) 555-4115');
INSERT INTO `Customers` VALUES ('WILMK','Wilman Kala','Matti Karttunen','Owner/Marketing Assistant','Keskuskatu 45','Helsinki',NULL,'21240','Finland','90-224 8858','90-224 8858');
INSERT INTO `Customers` VALUES ('WOLZA','Wolski  Zajazd','Zbyszek Piestrzeniewicz','Owner','ul. Filtrowa 68','Warszawa',NULL,'01-012','Poland','(26) 642-7012','(26) 642-7012');
INSERT INTO `EmployeeTerritories` VALUES (1,'06897');
INSERT INTO `EmployeeTerritories` VALUES (1,'19713');
INSERT INTO `EmployeeTerritories` VALUES (2,'01581');
INSERT INTO `EmployeeTerritories` VALUES (2,'01730');
INSERT INTO `EmployeeTerritories` VALUES (2,'01833');
INSERT INTO `EmployeeTerritories` VALUES (2,'02116');
INSERT INTO `EmployeeTerritories` VALUES (2,'02139');
INSERT INTO `EmployeeTerritories` VALUES (2,'02184');
INSERT INTO `EmployeeTerritories` VALUES (2,'40222');
INSERT INTO `EmployeeTerritories` VALUES (3,'30346');
INSERT INTO `EmployeeTerritories` VALUES (3,'31406');
INSERT INTO `EmployeeTerritories` VALUES (3,'32859');
INSERT INTO `EmployeeTerritories` VALUES (3,'33607');
INSERT INTO `EmployeeTerritories` VALUES (4,'20852');
INSERT INTO `EmployeeTerritories` VALUES (4,'27403');
INSERT INTO `EmployeeTerritories` VALUES (4,'27511');
INSERT INTO `EmployeeTerritories` VALUES (5,'02903');
INSERT INTO `EmployeeTerritories` VALUES (5,'07960');
INSERT INTO `EmployeeTerritories` VALUES (5,'08837');
INSERT INTO `EmployeeTerritories` VALUES (5,'10019');
INSERT INTO `EmployeeTerritories` VALUES (5,'10038');
INSERT INTO `EmployeeTerritories` VALUES (5,'11747');
INSERT INTO `EmployeeTerritories` VALUES (5,'14450');
INSERT INTO `EmployeeTerritories` VALUES (6,'85014');
INSERT INTO `EmployeeTerritories` VALUES (6,'85251');
INSERT INTO `EmployeeTerritories` VALUES (6,'98004');
INSERT INTO `EmployeeTerritories` VALUES (6,'98052');
INSERT INTO `EmployeeTerritories` VALUES (6,'98104');
INSERT INTO `EmployeeTerritories` VALUES (7,'60179');
INSERT INTO `EmployeeTerritories` VALUES (7,'60601');
INSERT INTO `EmployeeTerritories` VALUES (7,'80202');
INSERT INTO `EmployeeTerritories` VALUES (7,'80909');
INSERT INTO `EmployeeTerritories` VALUES (7,'90405');
INSERT INTO `EmployeeTerritories` VALUES (7,'94025');
INSERT INTO `EmployeeTerritories` VALUES (7,'94105');
INSERT INTO `EmployeeTerritories` VALUES (7,'95008');
INSERT INTO `EmployeeTerritories` VALUES (7,'95054');
INSERT INTO `EmployeeTerritories` VALUES (7,'95060');
INSERT INTO `EmployeeTerritories` VALUES (8,'19428');
INSERT INTO `EmployeeTerritories` VALUES (8,'44122');
INSERT INTO `EmployeeTerritories` VALUES (8,'45839');
INSERT INTO `EmployeeTerritories` VALUES (8,'53404');
INSERT INTO `EmployeeTerritories` VALUES (9,'03049');
INSERT INTO `EmployeeTerritories` VALUES (9,'03801');
INSERT INTO `EmployeeTerritories` VALUES (9,'48075');
INSERT INTO `EmployeeTerritories` VALUES (9,'48084');
INSERT INTO `EmployeeTerritories` VALUES (9,'48304');
INSERT INTO `EmployeeTerritories` VALUES (9,'55113');
INSERT INTO `EmployeeTerritories` VALUES (9,'55439');
INSERT INTO `Employees` VALUES (1,'Davolio','Nancy','Sales Representative','Ms.',"12/8/1948 12:00:00 AM","5/1/1992 12:00:00 AM",'507 - 20th Ave. E.
Apt. 2A','Seattle','WA','98122','USA','(206) 555-9857','5467','/       ! ????Bitmap Image Paint.Picture         PBrush          T  BM T      v   (   ?   ?         �S  ?  ?                ?  ?   ?? ?   ? ? ??  ��? ???   ?  ?   ?? ?   ? ? ??  ??? ?�� 		  
 ?	    		��?	 
��   ?????????˜��?????��?��??�� ?  ?	 ?    	
 	? 	 ?   
 ��������? ��  ��?  		  ?	 ?  	  ? ?????????������????��????��??
  ?       		
  �� 	  ?	 ?	 ���� ��    ? 	   ?	��	 ?    ? ?????????ϟ��????��?��?��?�� �� ? 	      ?  ��	��?  ? 	?����  ? ?  ��	? ?	 �� ?	 		
  ?????????��?����????��������?��
 ��   ?   	
?
  �� 
  ?	 ��? ? �� ? ?  	��  �� ����   ?  ?????????��????????��??����?			 ? ?     	
? ��? ?	  ? ����� 
��   �� �� 	 �� 	?  ?  ????????��޼����?????����������?
   ?      ?	 ?   	 
  ?    ���ʐ		�� 	
?	  ��	����? 	 	??????????	�Ͽ�??��????����?
��
?	           �� ��	 
  ��
��?	  	��	  	  ?		 ?	��?     ????��??ꞟ���??????������? ? 	           ?	 
 ?	  ?	  ? ?
	??
 	
�� ��?	 	  �А�  ? ??????????��������?????��?������?		 	     ?    ?      
   ��
 �?	? ? ?	? ?
? ?	����?	?  	?????��??����??��???������	 ?   ��        	 ?  ?		�� 
? ���� ? ? 		�	?	?	 ?   ��? ? ?	????????�����������?޿???��?
�� 	 ��        ?	      ? ? ? ��

��? ��   	 
?	? 	 ����	ɐ ? ?????��?�����ߟ���?????����? ?               	     ?   ��?? ���ɠ�
��?	? ��
Щ 		
?  ��??????????	?���ﯾ��?��????? ?   ��       ?	     	 	?    ? 
��޹?  	 �а����	 ����?    ???????�������ߟ���??��??����?	  ?  ?         	 ?   	? ?  ? 	  ��ܭ? ?   ?	ʜ	? ?	
�� ? ?	?????��?	?	����?�????????�� ? ? 	        	 ?   ?	 ?
?  	  
?
������ ڜ�����ɩ�	 ?		��    ??????���ڞ���?��?��?����?????	��   		         ?	   ? ?  ? ?   ����ϼ��	��		����
��	 ��    ??????? ������?������???????��	   ?                ?		  ��   ?������ �� ��?	�� ��?		  ?	?????��? ���߿�������?����????�� ��?	        ?  	  
А? ?   ��	?����ۭ?	����? ?		��    ?????��?��������������?��?????  ��   ?              ?  ��  �  ������?
����	й?  ? 	   ?	?????К ����?��߼??��?��?????��    ?               	 ?  ��  
����������	��������	��    ��????��		?������?������?ϟ????? 			  ?      	   ? 	?	?   	�����������	? ? 	  	    	??????	
ɭ����?��???��?????��  
                 ��  	 ��   ����?����鰰�	К��	? ��   	 ????�� 
���ｾ��������?��?��????   	 		             	? 
��   ?	?
����������	 ?	�� ��			     ???�� 	?������������???��???�� 	    	           	  	   ��? ?��������?
��К	 	       	?????	 ?	������??��߿?����????��  ?               ?  ����			?   ������驹�	ېЛ	��	 		   ��????? ����??��?��ߟ��?��??��    ?	            	 	 	  ?
?  �����?��?��?	驩� ��	       ��???��	 ?߿����?��߿����????                  	?   	�� ?		��	��ɯ��н��𰐐��?
	  	    		???��? ��?��?����߽��?߿��??��  ?   ?         ?  	?	 	�� 	 ��?������ۿ��ڟ? 	 ��     ��???? 	?߯��???��?�޼���?��                 �� 	 ��	𐐰		��˭�𽭩����� ?	��? ?  	    	��??��������????��??�߾�???	                ��? ?		 ??  ���������ߩ��	����?  ?	       ��?���� ��?��????��?��������?  ?            		 ?
?�� ? 	��������������?	�а�	 	     		��?? ?	������??������������? ? ?            	?		�� ��?
 ��������Ϟښ��˚?		? 	  	     ��????	���޿���?��?��������ﭭ�? 	             	��  ���А�
?����������뽽���Й��	 	        	?��?  ��߿?��??���߭�������н  ?            ��? ?��
  	�����𹭭�˼��ښ������? ? ?  ?   ��???	����???��߿����?������?	 	            	? ?	��
	��?��?	����˞���ې�	��	?	    	    
���� 
?����߿??����߼���������� ?            ?	����	 ��? ?	 	��	𰹼��鰼���?	 ? ?        ����? ����?����??����?��������		  ?           	 ��	�� ��	?  
��������۞����	?		 			 ?   ?  		��?	������?��������������?? ?	            ?	 ��		��? ?  �����������?		     	      ���� ٭��?��???������������?	  ?            ? ? ��   ?     ?������۟��?���� ��?	   ?   ���� ��������???�ޟ�����˟��   ?         	 ? 	?	   ��				? 	 �����м���������	 ?     ?      ��?	魽���???��?��������𾞝��             ?	   ?  
 
 
  	  ?�߾���������ː���� ? ?    ?  		? ��������?��??��?��?		��  ?        	 	  		   �� ��	   	��?�������۾������ ? ?   	      ��Р���߭�����?�������ڞ���ڞ	              ? ��           	 ?��?��ۚټ��?	? ?   	       		�� ������???������������	  ?        ?		      	  ?   	������ߟ?����ۼ������			     	      ? 	���߿�???߭��������               ?	 ��    ? ? ? 	?˟��?�������������� 	? ?	       	?	������???����������?	 а	         	 �� 	          
�������??��˿������? ? ?      ?  ��  	������???��������? ?	?           ?	 ?        ��			����������鿩�?		 ? ? 	        		 	 ?��?????����������?	  	            
 	  ? ?		  
��		���������������۩���?	 		  	          ?����??????��?�Щ�?	 ?	            ��?  ?     	 ? 	��?�����۞��������ۚ�?	 	   	       		  ?����???�������ޚЩ��� 	          ?          	  ��������?����������鰽��� ��		         
 ������??????����?������ 
	            �� 	  	 		  ?	 ������?�����۽�����?	 ? ?          		  ���???����ښ� ����	  ?         ?  ? ?	 ?   ?	
?��??ߟ�����鹩����? 	 ? ?          ��?????�����?��??
 ?            	         ?	 ������	�?���������а�	 	 ?    ?  		 	�ɽ���????������	�Щ�?	? ?          	     ?	   ��?	�������?˟������?	?				  ?	  	        ? ����?????ߟ���
?	 ��?
	          	 	 	     			
?
������������?��۾��?	𰚚? ��           	  ?��?߿?����˭��?
?
	  ?         	    ? ��   ��	��?	���鯟??�����ڛː?? 		 	   	   	    ���ߟ�?��??

?��ʜ                     ��	
������ʟ���?��������ɹ? ?	
 	 		      	 	����?��������鬜�?����	
?         	 ?    ? ?	 	 	������?о�޽���������������		     ?    ? ?����������ڞ	?��? ��                  ?   ?��������?��������������˙?  ?  	           �٭�??�������??	����? ?              	  ��?
��ɰ����???
����ߟ����?��?		 	 	  ? ?    ? ?	���??��ߞ����?	?��	 ? ?          ?     	    		��
???��������������?	��?	?	  	 	        ����???����	�ɠ� 	������?                  	ښ������???��?�������된�٩ ?	  	  ?      		?��???�����?	�ɠ�?	 ??	         	    		 ?	  ? ������???�����������۝�	 ��	 ?  	       ?  ����?????������м	?? 	?
                  				����???����������?	����?		  		       ����??????�޼�?	�� ? ?  ��               	�� 
 ��?��???�	�齯������ ? 	 ?  ��         	��???????����?�ڐ�??��? ��       	     ��  ������������??����������������?	?	? 	  ?      		��????????��������?? ?   ��             ?  	 
  ���������?𽬟����ۛ����? ?		 ? 		        ?????????����ߚ��	�� ?			?	
             ?	 ���А�?ޚ��??? ������������?			 ? 	  ?       ��???????????������𐜼	����
А      ?    	      ??����?��? ��ڽ����۟����? ��?  	       ????????������?͚��	�� ����               	 ��? ��?�ޚ�����	������������	���� ? 	         ???????????��ݭ����?	������ 	?           ��	  
 		 ��?��? 
��?��������?	 �� ? ��      	??????????������?��??ʐ
 ?               ?		 
	��������? �������	 ���� 	 	      ��???????????���������м�? ? 	       ?  ?     ? ��??��
ڰ��������ޟ��鰰���	?  	      	��???????????��������?����?ʜ?	          ? ? ?
? 	 ����������?������??� ��	?		  ��      ???????????������?	���ڜ�ڞ��?	 ��        	    	 	  ?��������  ��?����ʙ��?	 ?	   ?    	??????????????ߟ����	����?	?	��? ?           	  	  ? ����������	��������𿛙�а��� ?	      	��???????????����ڹ?�頰�ڜ���ɠ              ?
? 	 ��ʟ? ?
	��?������	 		 ?  	     ??????????????����������˚�ڐ       ?   	 ? ?
	��?
����𠜰ڞ�����	������?	   ?    ????????????��������	�
��ڜ��?            	       ?	��?�� ������������۟����?  ? ?     ??????????????�٩�			���?	�魠����	?        ?  ?	 ? ? ���Щ���	����?�������魩	? ?	  ?    ��???????????������? 	�?	鞞��ɩ���
                 ��	?	?? ���� ���������������	       	???????��???��������? ���?	頼�? ��?     ?   ?	   ?  �� ?��?	? ��? ����������?		  ?       ??????��???��?��А?	  ��??		����            	 ? 	? ?������? ��
��?�����˛К���		  ?   ��????????߿?�ۙ�?		 ��? 	����?�� ? ��          ?   	  	 ����?�� ? ��������������			        ???????����? ���˼�			 ��
����?
         ?     		
������ ? 	鬚��߽���?���� 	       ��?????????? ��?����?    ������������         ? 	  	   	?	��?	  ��?��?������	?	        ????????��?	 ��????	��    ��������?
           	  	 �������  ? 	��鿿���۟�ڐ� ��     	��???????��?  ��������?  ?  ����а��?
��         ?  	   ��?	? ??  ��	����?����к��	?        ��???????����	��а��	 ?  ���ګ�����Щ�         ?  	 ����		ڞ    ? ��?��??ۭ?����?       ????????������? 		 	 	    ɭ٭ ����? ?              
 	���� ? ?	�� 	��?Ͽ𽟹?��?	      	???????��????		��? ?	? ����?
н����

       ?  	   ����?	��? ��
��? ����?��������	       ��???????��??ߙ����?����	м? 
��	��?             ? 
?  ��	  ��?	����?������?��?       ????????��????�����ɹ��� ??	�����?         	  ?				���ɩ�
����
 ��������ښ٭��		      	��????????��??????߽��?����ܰ? ������?        ?       ��	
�а�ʐ��? �� ??��������А?       ��?????������????����	������?	?           	 ?	��?	? ���� ??��?��ښۛ����     ????????޿??????�齼?	 �К����鞚	 ����   	          ����?	����?
 ��??���ڟ�����?       	��??????����?????��	
?��?
������	?       ?    	 ??		�� Я������?	��?�߿𼛛�?		      ��??????߿ߝ?????��	�О��а�?			��? ?   ?          ��𞐠??�?
 ??	���?�۰�А��      ��?????����????����?  ���𜐰�?
? ? 	 	      ?	 	�ڐ��?���� ������?�����۩���		     ???????������???��? �� ˜��?А? ? 	?	
        	  ��?��?߬��?
 	��������?	?      ??????����???�߿��� 	��М�ɽ�����	?
��	? 	      		����?����? �������������?��?	     ?????????��˟��	����   	 	�����ː�	?	�� ?          ����	��??
	?	  �� ����??��??	       ��??????����??�����隐���ɐ��˞�����? ?	?      				��������? 


	��	?����?����?		    ??????????ߛ		?????����? ?���й�?	?	�ڐ�	         ��������
?
 ? ����	���ۿ�����?	 ?     ��????????����?????������К�����ڟ˚���	��			��       ??	��?������



��?	?߿������? ?    ?????????߿?????͙�� ��������?��	��?��	 ?   	 	 ��ڐ��
 ?
 ��	 ?
	
����??����		?    	��???????����??????ۛ��	������������Щ	����    	 	�������𰼼��



	
����??�����? ��   ��????????��??????�ޙ��ڝ�����������?  ��?        �К���? ������	 
 ?
?����?����ɐ     ��?????????����????������	����а�?��?
��	     ? �٫�����?��𠠠��?	�఼??��߻��?		    ��?????????��???????�ڝ�?��ߟ��������
��м?    ? ����? ?
����?	 ? �� 	 ???߿��ː? ?   ��?????????��???????��?	��?����?	����	��	  �� ?    ?	�����ښ۬���? ��������? ??�����А�    ???????????????????��? ��������?�魐��	? �� ?   ? 	 ��а?	��	 
��?	 ? ?��??����ۚ?		   	????????????????��?	������?ڝ����?��  		 ��   	 ���� ����? ༐� ����

? ?��?ߟ���ɐ�    ?????????����????????��?����������齞���?    	��    ������?ɭ

?
		?	����	�������? ��  ��??????????????????��? ?�����ߩ����	?  	 ��    ����? 
	 ?
��	��	 
 ?


? ??ڟ����?    ��?????????��?????????��?����޽��ڼ��?    ��     ��?  �ɭ� ��? ��?	����	��?��۞��	   	???????????��?????���Ь�����ڙ���ޝ���   				   	
? 	? ��������?	

 ?�˜�
 ?��?�隐 	  ��???????????????????	����?н霭���?	?   ? ?  �� ? ? ?		 ��?
��
 	
	? ?
��?��?����?	  ?????????????????ޜ�
���Л��ښ�������?    
��   
?
 ???

��	?? ����
	��?		??��й?	 ? 	 ?????????����?????? ���ͭ�	��������	�    ��   ? ɩ  
? 		��
 ?   	��ښ	? ����	���� ? ??????������߯��???�Ͱ���	������ ��������?  ? ɰ    ����	����? ��� ?	��
��?������	 ?   ��????��???
����????��	?? ��������?    ��?   	? ? ?	 	
��?  ?  
��ʚ��? ����?		��?   ����????����?��????����?		?����˞������  ��
��  	  ?	? ?	����
?
𰐰����驞�� ��?������		  ��???��?��К?	????����? ?
? �������О�?  ��??  ����	魠� ����
�� ?
?	
��
�𼼚���М��	  		����?����	 		��???��?��	  ?   		�м�?   
    ��? 



 ? ? ��
	?

	��а
?��?		ې	  		������		���Н��???���� ��?    ? ����   ��?  	��������		 ?ɰ?
	? ?�ɩ���н���?	����		����ڝ��?  ?	?
???��	��?  ? ?  ���  	??	   	��  ����
��?
?	��

  ��Щ?��? ��?    �О���	? ? 
 ?	????? ? ��        	����?   	?    	 ���� ? 
�� 	?? ? ��? ���ټ���?���� �?		����? ?? 
��	 ��??��?	?  ?
      	��	?   ��?   ?�  ����? 頠�
 �� 	?��������?	 ?	   ������  ?	?  	 ��????		 	       ������?    ? ?  ����?
   ?
 	 	��?  ?	
����?���?	?		?	??      ? ��??��? ?       ?	��	ڜ��   	��	   	��	 	 
?
	��
��? ? ? ��? ?������?	 	��  ��۟��?    ? ��???? ? ��      
������?    ?	
  ��? 



 		? ��  ?
	��?
	 ��?	��?��	��?			������	�� ?	  ???��?		? 	  ��
��?�ː�    ? 	   �� ?	 ��


? ����?
 ? ?

 
 ?
��������? 	 ? �����?	?	  	��??��а?
?	 	?  ?���ʼ�     ��  ?? ����?  ? ?
   ��
 ?	 ?	��?	???			 	
��	����? ?		���ߟ�???		  ��	?	�?��?     	�� 	��  ��?  ��
 ? ���?	��?	�� ������?? 	 ?  ��??��?��������?��?  ��? ? �ڐ��ʟ      ?   	��
 

?   ? �� ?
 ? ��? ? ������??����  
��?���ߟ�?ڞ�������ڐ�	  	��ۜ����? ?         	 ? 	���� ��?
  
 ����?�˩�?? ?	?��?�� ��	
		?߽���?	 ?	魿����?	   ? �������?          ? ? ? ?	 �� ��? ?
��?  ��������?��  ����?	������  ?	���߽�����	 	   ��	���м���         ��? ���ʐ�


��  ��


������
��  ??��?��?  ?	��	��	��������?�齙�� 	 �� ���?��      ?    ?
 ������
ɠ? ������??	���చ��???��?  ����˚����	��������������ܰ��	? ɩа       	 	 �Р�����?  ?��?


?
 ��
?
?������?	  ?	ː������ɯ��?�����߻�߽����?
����??         ?
Р
 ������? ��? ? ?
��? �������?��
?  	?	?��𿞛����ϟ�����������������	?           �� 
��? ?	
����
? ?
?
 ��

��
?
��?����	�� ��ٙ�۝�����������?��������?����          ��? ���� 
   
	 ��� ����
? ?	 ? ��������?	  ����ٽ��?����?����������޼��?���鰰          ? 
	?
 ? ?
	��ʐ? ��

 ? ? ��


?��?��? ��?	���ٹ����������߭���������������?          ?	?	? 
 �� ?	?	

 ?
К	 ��? ?  ��	����۫ۿ��?	����?	?�˛���������߽?������������ʚ           �� ��
��


 ��	

�� 
	? ?
 
  ? ����?��޽?	 	?	��	����?�ݹ鼽�������߭�����ޟ��?          	? ? 
 �� ? ? 
����?  ��	�� ?
	
 	?����?��	����			��Ϲ?���������?����߽����?          
����? ? 
?
? ?  �� ��
? �� ? �� ?
  ��?����?	 ������?	��?ۭ���ߟ��߭��������ɜ          		? ? ? �� 	
? �� 	��? 

�� ?  ��? 	?�ڿ���? ��?		��۟����??���￯������ݼ��
           
�� ? 
 ���� 
  ?
 ? ? �� ?
     
 
	?��?�ڙ����� ���О�����??�����������ɩ�          		� ��?	�� ?
	

   � ? 
 ?
 	
	


	�� ����������ݹ������������������������ޞ�ڐ?          ����
   	


 	?	 ����
 ? 
	�� 
 ?	  ����??���ڹ�������?�������˼�ޟ�����������
          		?ʐ



 ? 
  ��   ? 	 ��? ?	 ? 
 ��?	 ?������?	���	����	���ۼ��Ͻ�����?����?��?        		����  ? ?  ?  �� 
������  ����
    ?
 ???���۞��������ڞ����������������������          �� ��?  ? ?   ��
?   ?	   �� 	 	  ? ?
	 ������?ߚ������??	������������޽��?����ڞ?          	�� 
 ? ? 
 ?    ?
 ����?  ����?     ?
	??���������ː���	��?ټ�������߿�����?���?	       �� �� ��? ��
	  

?
 ? ڐ ��	��    ��

 	 
	 ����?ڙ����?��ɐ?����?������߽��??           �� ����? 
  ��?  ?  
��? ��


?
?	 	 ��? ��??��߿��?��ɹ��	?������?�����������?        ?	?
�� �� 
?  ?  	


?
 ?	    	  ��?

    ? 
��������������٠���?
ۜ��?��������������        ?
��	? 
  
	
?
	   ? ?
 
?
?

   ? 
? 	�� ��?��?���˽����й�? ������?����������ۭ?      ?  ?	��?
 	

	
    




?  ?
     
�� ��  ?   	����?��������?		ɰ��ۜ?����?��������Ь?	     ?	 ����	?
 ?
 	����?	?  ���� ? ?
  	? 

? ������ߟ��?��??��? 	���������ߞ�?�Ͻ���?     ? 	
	��?

 ?

 ��   		? ��?  �� ?
   ? 	��? �� 
?���۝��������� ?	 	 ?����ߩ���ߞ���˛      ? ��?	��? ?
��?	
?



?  ?
  ?
  
 �� ��? ��?
	����������𼚚?  ? 	������ϭ��޿�����? 	      ? ? ??
����?
   	  ? 

? 
 
? ��  	  
 	  ��? ?������������? �� ? ����������������
��    		? ?
�� ? 
	 ��	����������?  ?  ?  

  

  ?	 ?	?������ߛ���
? 	  А��˝��?���
��	   ?
  	��
? ?
?	


	? ? ?   ? ��
   ?

 	 
   	 ? �� ������������? ?   	��������٩����
?     ?	?
��	��? �� 	��
?


?


  ��
   	 
 ��
 


�� ����?���������됚? 	  ?   陚���ޟ
? ?     ? ? ���� ? ��?	 ? 	   	  ?
?  
  ����
 ?  ?     
	?	������?��?	
 ? 	 ����������?�� ��   				 ?	 
��
  

 



 ?
 ����? ?     ? �� ����?   ��������?�ڰ�	        		��? ��	 ��      
ʞ
���
?
    ?
	 	 	?
? ��  ? 	������? 
 	  	 ?
 ����������?�� ?	 	      ? 
 ?	����	     			����   
 ��? ����

  ? ? ��  ��    ? �� 



 ?
  ?�߿�??����	           ��? ? ? ?     	 ��?	?	 �� ?   ? 	 ? ? ?



	�� ��  





	
    ?    
?����ϟ???��?		? 	         ? ? ?     	
	?	����	 ? 
 ? 


	 ��?     ?  ? 
  �� 	 
	��?


 
?	 ??��?����	  ?                      ��  ��?٬ ?
	   	 	��? 	 ��	��ˠ?

	������? ?	 
?  	
?

		������???߼��                         	������? 
  ��


	 ?
  	? ��	  ?    		  ? �� 
	? ?
  ??����?��ې��	                    	
��������ڜ
 ��    	 

   

 ��?
 ?

 ����?
? 	��
 ?  	
 	��?��?����  	 ?                 ?	?��ܰ?  �� ? 
 ��	 ��?   ? ? ?
  	 	? 
  �� 	 	

?
 
��?��????		                      �����?  ? 
 

	   ��   ������  	
	��
 ��? 
?


	    	��������?��? ?                   	 �ڛ�?������ 
 ?  

��  ��?     ?

   	?  	   ��  	 


? 
 ��?����???	�		                 �������ʹ��
?  ��   	? 	 ������   	��
ɠ��?
�� ����?	  
	
??��???��?                      ��������? 
?  �� ��	?


 	  ��?
�� 
	��	 
? ��?	   


?
 ���?��???��?	                  ?ڝ��?��?��
?  
  	?  ?  ?	

 ? ? ?
	 ?


 ?
  



? 	 
   		������?����? 		                �Ϲ�?��?   ?
 ?   �� ��

	 ?	��   ?
 ��	 

 ?
?	 ?  
 ��
?	����?����?��?	?	                ���߽���?�� �� ?	
 

 ?
  �� 
 �� ?


 

 

  ? ?





	
	     	?��???��ޚ?            ?	 	 ����?������? 	?

    
 ? ��
  ����    
?   
  
 ?	  ?
	


 
	
�����߭��޿��ʐ�            ? ?��??����  ?
   ��?    ? ?	��
  驠�
 �� 
	  
?	������ ?  ? 
 ������?�߽��?            	?
 ޼��??���?  
 ?   ��? 	?    ��?  ? ?  ��
  
  	 ?  ? ��?  ?  ����????����?      	  	 ?			������??	�  �� ? 
     
   
 
	  ? ����

   
  
	����?    �� ?	��??������ ? 	      ? ��  
н���?	?

 	?

 
 ?

	 ��  
	����  
��?

	? 
�� 	 ? 
 

 ?

    ???������?  			   	��
��?������? 

 ? ?
  
��  ��?	
?    �
?  �� ?  
   ��? 
��?	
   ?

  	???��霰��  ?	 ?	 	��𽯿��	�

?  
	   ��  
   ? 

 ?     	����  ?
?   ��
 ��?
?	   
? ????����?���������𽬙ϭ�����?
  ? 
 ?
 
	  ?  

 �� ? ?
��?

?  ����   �� 	�� ?  

	��  ? ????����?	
ڙ�?ʽ��ߩ����?	
?
  

 
 
 ? ? 	 ? ?

��?	 	  ����		 ��? 	����?	?     ��   ��????����������˹������������ ��  
    ?  	?
   ? ��  �



?  ? ��? ?

 	
?   ?
? ?
 ? 
�� ��????���������������༽�� ?
 
  ? ��  
    ��
 ? 
 ��? ? ?
?

?  ��? ?

	
��?   	  
 �� ? 	?????������?��??Ϛ������	?
 	
?
  	   ��
 ��	 	 ��	 ?
��������  ��
? ��?  ?    

	?  ? 
   	??????������?������?������  ��? ?


 ��   	 ? ?

  

? ?  ?	 ����	 	? 	 ��

 
	   ?
 
 ��  	???��??��?????����??   ��?  ? ?     ? ��? ?   ?  ��




	
?

�� ?
 ?
 	 
 
 ?	  
? ?    
???????��???��?��??  ? ? ? ? ��
 ?
    ?  
 ? 
 ?
		  	  
 ?	 
 ?	��
 ? ��?
 	 ?
   
 ?
  	 ????��???�߿�???�� �� ��? ? 
    
   �� �� ? 
	 �� ��?

 �� ��
 
 ? ? 
		 ? ��  
 
	  ��? ɿ???????????޿��?	 
?  
 �� ��
  
  ?	
 ?
 
	

??  
 	 ��	?	
?
  	
 
	 �� ? 	
 	
 ? ��?	? ����???????������	��

?
?
 	

 ?   �� ? 
 

?
?
  ʰ	?  �� 
 ?	��? 
��? ?  ?
   ? �� 
  ?	
��??��??��?��?? ��   ?  ?
  �� ? ?  
 
? ? ? 
��
 
	��	��	��	? 	 ?   	����   ?
 ?  
	 
? ��???����?	���ښ� ����  ?      ��	
 
? ? ��
����
  ?
����?
 
 ? ����    ? ?    ?
 
 

 ��?��? ����? ������ 

 ?   


 ?

     �� ? 
 	�� ��?���??�	?	?	  ?
��
  ? ��?    
 ? ����         ? ?	
��?
 ?

�� ��       ? ?
?�? ? ?	
 ������????��?	? ��? �� ��
 ?  

  	
 ?

?         ??

	�� 	��?   ?
����
?	   ?	? ����
��
	����???????	?
 ? 	 ��	����
 ��  ? ?

 
 ?	
��   
	 ��? 	 ?	   ��
  ��?  ?

 ?  
��?
 
�� ?
	?��????��?? ��? 	
	?
	 ?	 ? ��      ?
   
	  ? 



  ? 
 ? ?	
��?
      
������?���� ?
	ʚ����????���� ?  

 
 


 ? ?  ? ��?
 ��
	  ��	��	  	��
 	 ? 
 	����
 ? 
?  ����??��? ۩
��?������?��??��
��   �� ?   ? ?
  
 	  ? 	 
���� 

 



  
  
  ? 

��?    
  ?
 ����???? ? ��? ��������??�� 
 ����

?	?     ?  ?	��?  		��? ?	
  ?  
  �� ��	
	?
? 
  
 ???��ʞ�����۾����?��	    ��    ? 
? 
 ? �� ?  ��?

	 ��
 ?
 
?    ?
 ����� 	  ?  
	 ???�ΐ���?	����?�������� ������ ����?     ?	  ?  
?     ��   ?    ��
 
  ?  ?? 
 ?  �� 

��?����?	
����??������?�� ����?��? 	 ? 
 ��? �� ?
 �� 
		 ���� 
 	
�� 
 ����?��   ?   	  ��??��  ���될????��??����?



ڼ������?
	 ?  
  
 ��  �� 

  
?   ��
   	
 ?  	??
 ?  ?
 ��?�����������ʟ�??ڟ������?�� ��ɭ�߾�  ?  ?

 ?
  
   
 ?  
   ?  
��? 	
 ?
	 
 ?��?  ?
?     ����?   ?	��	????
?????��������??	



   ?	 ? ?
?  ?
�� ?

 ?



 �� ?
 ? �� ��  
 �� ?
��?��? ��?
��??��??????߼ ��???�� 	   	
��
 ?     	?
    ?  	 ? ?		 	  ? ?   
	?  
     
 �� ������??	��?��	????????????��������
 ?
 ?
 ?

 ?
 ?
 ���������������������� ?
 
 ?
 ?

?
?


 ���� ??? ???????? ??????
                                             ?                                     ��?','Education includes a BA in psychology from Colorado State University in 1970.  She also completed "The Art of the Cold Call."  Nancy is a member of Toastmasters International. ',2,'http://accweb/emmployees/davolio.bmp');
INSERT INTO `Employees` VALUES (2,'Fuller','Andrew','Vice President, Sales','Dr.',"2/19/1952 12:00:00 AM","8/14/1992 12:00:00 AM",'908 W. Capital Way','Tacoma','WA','98401','USA','(206) 555-9482','3457','/       ! ????Bitmap Image Paint.Picture         PBrush          T  BM T      v   (   ?   ?         �S  ?  ?                ?  ?   ?? ?   ? ? ??  ��? ???   ?  ?   ?? ?   ? ? ??  ??? ?                                     	????????????????   ��  
? ?????????	??                 ?                                     ????????????????	?   ?��???????��??         ?        ?                                     ??????????????????  ?	�???????????                   ?                                    	?????????????????  ?   ???????��?               	    ?                                    ????????????????��?��? ??????��??��         	   ?      ?                                    ?????????????????	��?    ???????��?                     ?                                   	?????????????????? 	?��
??????????        ?             ?                                   ?????????????????? ����???????????                      ?                                   ??????????????????
?    ???????��                        ?                                  	???????????????????�� ? ��???????��                        ?                                  ???????????????????О�ɭ�??????????                         ?                                  ???????????????????    	??????????        ?                 ?                                 	????????????????????�????????????       ?                  ?                                 ???????????????????????????????????                          ?                                 ???????????????????��۟????????????                          ?                                ??????????????????��??��???????????   ?                      ?                                ?????????????????ۿ?��?��?????????                           ?                                ????????????????��?߽????????????             �� ��ښ���?
 ?                               ??????????????????����??��????????        ��
������?���ٰ���                               ?????????????????����??????????      ��?	?�����������˚�?                               ?????????????��?����?
а����????????	   	?�ڙ��������ߛ�ۙ����                              ????????????����������??��????????     	��?۞�����������                              ???????????��??��?����	߿???????   ���������隞�ߙ������                             	???????????����ޭ�������ڝ�����??????   ����?	���?��۟��������?                             ?????????����������������?	����??????  ? ����🟛�魭��������?                             ????????ߟ߼��ڞ�������������?????  ��??ɼ�����ۛ�?����?                            	????????ۻ?�ϰ���ޟ�����������?????  ��ۛ�˛��۽�����𼛟�?                            ??????�����ܰ�����������������ϛ�?? �������������ۛ������������?                         ??????ٿ����?����۞	?	?����ɞ���????
����?������ۛ����驹�����?                      ?????����ͭ����	?	������?	Р��??? 	�۟�����������??����������?	��?                 ?????����	𜜰�О�������?����?��??	���𼹰��鯛������?�˝���?��ې��               	???����?ɩڙ��п�?�����������������?  ���۞�?������?�𼼟��������ɹ뛭��?               ??�������м�����?����������˟��𿞞��		?�˩�������Л������?����۝������              ???	��?���?������?	������ޛ�߽��۟����� ? й����۟���𼿼���۟������?�𹭹���             ??˛ϰ?
��������ߞ��齽���?��߿��?�� 		�٩���ٽ�����˞�?�ۭ��ڝ�����������            ?靭�??������??��?��������?������? 
?����ۛ��?Ͻ�����������٭�鼟�鯙�            ?����?	��	������п������?����������?���	 	�𼹭��𽫛�?��˚н�ڝ�н?��٭           ?	�?? ��?	�����ͼ�������?????�������� ?	��ۜ��˟����������?˽��?˚��������          ������??	?��������������?������?��?��?   		��˼�����۟��ۛɩ����ڝ������ۙ?          ?����?����?	����ڝ��������?????߽???����?	? �����������������?ɭ�����ڛ�?����?        ?��? ��?�ښ�������������??????߿������?��  	 ���ɭ�����۟?���������н��������?        ����?	��������������?��??��?��???������			�ٹ��𼼰����?	���?��������?        ?ڙ������	��˟�������ڽ�����???��??����������  ������	�۟�ڞ�ڛ�۞�ې���������?����       ?��?	���˟�?	������?����?��??ߟ��??��?��?����?  ���������������𽼹�����	۝������ڞ��     ?	К�� �������������?��������??��?��??���߽�� 	�隞���??����?����??�К������     ���� �����������ɽ�����������?��?��ߟ����?����? ����۟����������𽼹������������?����     ?��? �魹?����������˟��ڟ��?۟������??������?   ��?�����˟��˞�ߙ��	������?��?	?    ?�?	�?	�������ۛ��߽���ߛ۟��������߽����?��??��  �������������������ښ���а�����ɭ���    ��?	  	����?��ۼ?�鼟��ٰ����?���߿�?��?����?��?	
	��м�������齼�����??�ڛй���	��   ?	��	��?�߿ɛ�������۟��۟������?����??ߟ?? 	  ��۞���˹魩�������ڜ���?���鯞����    	? �������?��?�۟�������н��??���߿�??��?����? 	鰽��ڞ��ϙ�����������������ɩ������?    �� ���ɿ���?��?��������������������ۿ��?????????	����������??��������Л��ڟ����������   ����	������?��������������������������?��?����?ۿ? ?	�����������۞�?�ې���鼚�����??��	?   	?		��������?������?����?����?��?��?????����߿? ?	����������������˞�����ڟ��������?   �����ߟ�������?��۽��?����������?��?����?��?  ���𼺚���������������🐟��ۙ����	  ��������������?����?��?������?����???��?����??��  ?	��������������𼾙��?�������魭��?
? �������߿ߟ�?����������?������������?������?????	?
��������?�˟�����ɽ����?���?����ː���ٹ��������������?�����������˛���???����߿��??? ?	���������м���?	����۟���𹭭��˞������������?��?������������������������?�ߟ�߽����??? ����?	�齽������ڟ�����ڝ���˜�����٩���ې��	���������???��������?��?��������??��????��??  ?��???�����?������٩���ڙ�����𼰼������߿�߿�?�߿�?����������������??��?�����߽�??			ɩ���������˟���ڟ��˞������������ �����鿿?�ߟ�??����ߟ����???����???��??????�� 
ɩ��˞��۞���߽���𚛩�۞��˛�˛���?���������ٿ۟�????��������?��������???��?��????? ������������	����?�������ɽ�����ڙ?	�		��������?������?��ߟ���ٹ��۟�����??��?����???��?? �����˞����鿟��������?�ڟ������𝭐�??	?�˝�����߻?����?����𛝟��������??? ��������???��	?۞��??˛��ߝ������𹞝�𹟰���?����۞��?������?��������˙���۟۝���? 		����??��???  		��鼼�������驭���ۛ?	����?��	����������������?????��?  		���ٜ�����		 ����?��????? ���齚�ۛ�?˛���ɹ�����������ڐ��?�� ����?����??��?��ې		 ��	 		ɭ		����۽����?��?߿?   ˞��۩����������������Лٛ��˝��˞?	��?۞������???�߽�ٽ��		��ٽ����������߿��?????������������ڞ�ڛ����������𛟐�����  ? ڼ��������???��߿����ߛ۝��������۽�߿�?��??����???
���?��۟������?ښ?��������ۜ? 	?	��?�������������������������߽�������ߟ?��?????������鼟����˛�?	��й?���ɽ���?
������ɭ����?����??????�����ߝ���?�߽���?��?????����??��  ��������������������?����?˟����������������?������?������??��???��????��������??��?	? ��������ۛ��?��������	��齰���??	
����������?����??��?��?��������???��??����???  	�����ڽ�����������?�����ڟ���?��������ߞ�����߿����ߟߟ���������������??��?��?��?��????	��?���ٯ�������?	������ڰ��ۙ˟��?����ٹ˟����?��?��������?������������?��?��?ߟ??��?��?�� ����魯�������������??����?��??	����������?����߽��������??��?��߿???��??????	������������?	��ɛ��𰽩��۟��������?������?��?��?����?��������?	?����������?������???��
 �����𺞛۟���?����?	ڝ������?��а������?۟��??��?�ߟ�����������ۛ������??��???????	��?���������ۜ?�������������۟�����۝������?��������?�������ߝ���������?��?��?????��?  ��˽��������?ϭ�ɺ�����������������?��?������������?����������ٿ?����?��ߟ?������????��		���������ٹ���й��٭����	������?����?٩?������ߟ��?��?������������?������?��?��????��? ��������?��ڞ����	�٩��🰹ڛ�????	𽾟���۽�??����?��������?	??��?��?������????����	��?��˛�ٹ�������ٰ�ڐ��������?��	���������۽�����?�������ۙ���������?��?��?����????? 	�����������������?	��۩��?��??��	���ڟ�������??�����������ٽ� �۝�������?ߟ?��?????�� ���ڞ�?	����۟����۽���?	�ٝ�����?�������۟�������?��?��?���� 	ۛ��߹������?��??????��?	?��۞??��������?�𼰚����ߟ�	??پ������?����??����߹��	�٭���?��???����?????????  �����������۞������ۚ�𐽛����?���������ٛ���?����??���ߟ���?������?��???�߹�???????��? �鿛ߞ��鼰���?	����?ɩ����?۝������ɾ��?ٿ����???�߽�ߛ��?����?��???����?��???????�� �𰽽���������������ڐ����?����?���ڝ���ߛ?������???���ݻ����ٿ���?��????����??????????�������ڿ�ښ����?����	������������?Н������?۟��?��??�����������????????ߟ?߿?????����?
���ڟ�О��������	���ڐ����ݿ���?���ټ������߽��?��??������?��?��???��?��?��?????????��𐚛��������������ڙ�?	�ɛɺ�������?��˼�������߽�����?��??������������???��?????????????? 	��ڝ�����������������????��?	ə🟽����?��?������?������������?��??��?��?????��?	������?�������뜰������ۛ������?�?�������۽���???������?	����?��???����????????��? 	�����۟����ɜ����˙ː?����?���?	�۟��߿���ٟ?�ߟ���߿?����������???����?????????��? �˟�����������?��������	��?��???������?����?��?��?������۹����??????��???????????
���������ͩ���а���?	?	?����	����˟����������?��?��?��ߙ����?????��??��?????????��?	�пߚۛ˽���?����?	ڐ����???�� ��ڐ��?������??��߽�����������ߟ�߽?????��???��?????��?��? ?����ޛڜ��������?������??������?����������?������?ߟ������������???�߽���?��????????���ۛ����������٩�����	? �Л���??�� ����������������ߝ??����������۟��???�߿�?��????ɝ��		����������˿��М���ڛ� ����?��ٛ? 	鹚��?��??�߿��������������߿�??����?��????????�?А��������?�۟�˙����	��ɹ������???��?��Ϲ�ۿ������۟���������ۙ����??ߟ?��������????? ? ۟�ߟ�������ې�������� ��?��?���	����������?߿������?������˟����?������������???���? �����������˼�	����	�ɛ������ߟ�?  	���ڝ���ۿ����������������ߝ��???�߿ϛ�۟��?????? ? ����������?�� ��?ڛ���Л�����?? ? ��?	��?����������������?�����۟�??��齽������????��? 	鹽�����߹����ٰ��	?		?��ٿ�ߝ�	 ��۟�ۿ۟��۹ڟ���۞����۟�����?��?������????��??????
������𹰽?��?����? ?��?��? 	 ۝��齽���������?����ٯ��������??������ߛ????????��?	������������ۙ����	��������?��? 	��۟������ߛ������������۽������??�߽�������?����????�����ڟ���?������?	 𹜐?	?����?? 	 ������������ۛ�������ۿ���ޛ��?����??������ ��??? ��?����齩������	���ې�𼙰�ߟ�����?  	�۟���ۿ��ٙ���?��?��ݽ������������	��? ??  ��??��?���ڛڛ�?Ϛټۜ	?	?		?	ɿ����?	    ������������П��	??	����������?����?  		?? ������??	? ��������������ۼ����𚝼����?���� 	 	 ����������?  ��?  	?ٙ?	���������ڙ�	? �� ? ?	����??  ����齩���	��߭��?	?��?? ����      �н�럟۟���?  ��  ???	��й����???��? 	   ��߿?𭼐	ɛ�������۩�𹰼����?	��?	��??     	˹�����?����?  	? �� ������????������?	 ��? ���߿��� 
��?˝��?˿��� ː?���魚 ��       	˟߻����������  ?  
ٟ��?��??	����??����?��??? ��	ٽ������н���٩�������ɐ���  	 	 ?		 ����	�齾?��?��	����🭽��???������?? П��???�?	
 �ڛ��ޙ�����ٽ
��?	�ɰ���?     ��  
������ߐ����?	˙???��	��?��??����	?		����?��?? ��?�������پ𹚐���?	? ��      ? 	��?��ۭ?����߽ڐ�КА�����????����������������???	? ? й˟?�ڽ���??	����    	��  ������? ��	��߽�ٻٟ����?��??��߻?	����������???��	?ڽ���ۭ��˿����������? ��?  
  ��	�ڛ�?����?	𙭹��?߿?������??������? ? ����	 	 	??��� ?�˞�	��٫����?
��	?����   ��	?
 ��������٠��������А�?	ڛ����?��?	
?     ?  ?����		ɩ���鰼�����𰛐�ښڐ����   ?  	ɩ������? 	 ?	?	  �ɰ�?????��? 	 ?  	  ��?	��?��	? ��۟ڛ���ڐ�߽��	��	�ɩ鐐	 ?   ?	 ���������� 		 ?	��?    ? ɐ����?����  ?  ������????�? ?
��?��?����й?�ې��О�     	 ?  ������ڟ��   ?	?		
 П	 ?	
	??????�? ?  �� ����????��? ��������ڛ����٭ ��	�� ?      ?	۟�۟���? 	  	��	ɠ?    ��??�߿�?��?  ����	��????	��? ��	��?	��?��𼚙�ٹ��Й�       
���������?  ����  		   	��?��?????ې  ��? ����??��?	? ?�����К���	��ɩ��ښښ?  	   ? ?	 ����?�н��� ����?	 ? ����??????��??��������??????  ����	������ۙ��?				?      К������������������?  ��???��????????��?����????��? ?  �ڜ�����	��������	      ? 
 ��?������?? ? 	����?��????????��???????????������?  ���ڜ�	?	������?	����?         �ɹ������������О��ߛ���???????????????����??????���         ?   ? 	  ?     	    ?	   ? ?����?����?�۟�?????��?????????��??????????? ��	?                         ?      ?   �а���������?��?����ߟ?��?????????����???????????? ����             ?           	     ?   �����٩���ߟ����??��?????????????????????????????��	��?           ?             ?   ?  ? ? ��?߽��?��������????��???????????????????�� ��?             �?          ? 	    ? 	?	����?�ۛ�ߟ��??��?????????��????????????????? ��?            ? ?         	 	         ?п����??��?��?��??��?��??��???��????????????��  ��	��           ?                ? 	?	 		 ɽ����߽������?��?��????����?��???��?????????��	ɼ��           ?     ?               ����������߿?������?????��?????��?��???????????? ?��??           ? ?        ?	 	    ?    ?	ɺ����������?��߿???��?????��????��????????������?           ?  	   ?
  	 	       ? ?��������?߿����??����?����?��??������??????????	 ? ��?           � 
   ?	           ��	 	?��ڟ��������??��???????��?���響����????????��	���?           ?              ?      ?  ����۟��������???����??????? ���?ۿ??????��?
 ��?            ? ��   ��  	  	       	 ��������������������???????��	��?��ٙɹ?????	 		��?           ��     ? ?            	 ��ܛ���������߿�????��?��������?ɐ�������? ��???? ���?           �  ?     ?        	   ?	?	��������������????��???�?	�����?	??��?
�� ??           ��                    	  ��������߿������?߽?��????��?		��?��	?		????��?	?	��           ? ?   ?	            		 Щ�����ɽ�����?ߟ?��????��ِ?	ߝ	��м	 ???? ����?
         ?  ��?  ?   ?               	���˛�?��?���ۿ�?��?????��? �ɛ�?	��ڟ 	 ? ��??	���ɾ���       ?   ?	   
 
?              	��		����ߟ�?��߿��??��??	 ? ��	?	?	 ��	 ��???? ? 	��?            ?     ?               ? ?	�ϟ����۽�?��?߿??��Й?𝽜������?  ����??		? Ь?           �                   
?
		ː��������?���߿�?���𙼚�?	�� 	?  ? ??��   �� ��      ?     �
      ?           			 ��	��?���۟�߿��????? ?��?	? ��? ? 	?
��???   ? ��        ?  ? ?     ?
               	?��?����??��ߟ???��?	?	? 	?
		 	��	��?? ?	   ��   ?      ? ?         ?       	   �𜰝���?������?��?��?	��	? 	����
	   ?		��?	?  ?	  ����            ? ?                   ?   ��������???????��	 ? ��  �Н�  ?		�?    ?	 ?            �                     ? ��������������۟��?����А? ����  ? ��	��?   		 ?             ��                  	  ?  ��������?��???? ��  ? 
?	?	  ?	 ��˭	�� ?�� ?   �?            
                        		?	?��?����������?	��?  ����?	���� ��٭��? 	    			 ?             ?                     ?	 ? ����������?��???	?	  ? 	?  ?  		��ɬ��?
	 
��   ? 
?            ?                         	 ?������ߛ??����?
?  ? ? ?		   ? ����? ��    ? 	��      ?     ?                     ? 	 ?��������?����?? 	  	 	��  ?     ? ?
 ?
	 ? 	  ��?         	 ? ?

                 	 ?  	?	������������?А�� ? �� ?	 ?   		   ��? ��?	
 �� ?	��    ? ? 	   ?		ʐ    	?            	  	 ����?���������?	      	   			   	  ? 	��М       ?    	 ?   ?  �ࠐ    �ɠ�              		韟�ߛ��������ɐ  ?  	  ? 	     	  ? ?��	
    ?  	?     ?
   ?  ?	? ?		? ?                ? ����?���߽� �� ?  	     ?  ?  ?   ? 	 ��? ?   	 ?          	    	
 

 ?                 	�������������ɩ    ?  	    	 	 ?	Э  ? 	? ?   ��        	?   ?  	
? ?            	    	 	������?����
             	       ?  ? ��?  ?   	 ?     
          ��?��?
  ?                ?����������А�?             ? ?  		 ?  ?    ? ?          ?   ? ��? ����	                   ��鯝������� ?  	               	 ? ��?  �� ? ?	?              
 ��
		? ��          ?     	  ����۽������?            	      	  	 
?	?  ?  ?               ��?
	 
? Р  	            ?    	����������?  ?                  ?  ?	 ? 	? ?	?   
           ? ? ��?	?            ?	      	 	�۟�������	                     		 
?	?   �� 
 ?               ? ?	��             	     ?   	
����	���� 	            	    ?  ?  ? ?  ?	  ɩ      
         ���

        ?   ?             	ʞ����	?  ?                   	   	�� ?   ??                ?
? 	?      ?     	 ?         	 		?	?
а?                    	?   ? ��     	?     	           ��
        	?      	            	
����                    ��?  А? ?  ��?	 ?      ��        ?
           
  
	              ?    ��                    ?  ? 
?  
?  ?
      
 ?  	            
       ?	?              ? ? ?	                       �� ��? ?	
	��?	     ��
  
     �?      ��    ?    ��                                         ?  ��	 	?	  ? ?    ? 	��        ?  ? ? ?  ?     	   ?                                      ?    ?	  ��? ?	 	       ��?        ��? ? ?        ��    А                               	 	        ��?   
 ?   
	  ��?        ?
? 
 ?         ? ??	     ?                              	   ??  
?  ?   ?      
 ?
��        ��    	                ?                                       ?  ?	  ? 	?    	   ?	?        ښ    
         
                                       	       ?   	 ?	 ��    
   ��         ��     ��    ?     ??                                 	      ? �� 
	?  ?         ?		?        ?  
  ?	           ? ? ��	                                     ? 	  �� 	 	?      ?  	 ?         ?  ?  ?                ? ?	                                 ?      ��? ?       ?   ?     ?    ? ?  ��    
                                                       ��   ?         ? ?	? ��?   ? ?  
	        
        ?                               	 ?     	  ? ? ? ?         ? 	    ���� ��   ?
     	?     
   ?                           	             �?	��?   ?       	? 
?
  ? ?  ?                 	?                              ?   	?	     ?  ? ?           
  ?      ?       
            	                             ?     	       ?	 ?                	
? ?   ��?                                                ?             ��? 	��              �� ?   
��?                    
	 ?                                ?     
?	 ?	               ����?   ? ?          
          ��  ?                       ?        ? 	?	 	 ?             ����  	   �� ?        	
       ? ��  ?
��                           ? 	?   	   ? ?            	 ��?
  
     ?         ? 	         �� ? ?          	   	   	?  	 	  ? ��? ?  ?             ʚ?	 ?     ?         ? ?
      ? ��    ?         ?  	  ?   		     ? ? 	? 	  ��             ��  ?     ? ? ��      ?  ?	  ?  �� ? ? ?             	  ? ? ??        ��? 	    ��           ?  	 
  
     ��          ��?     
     
	
   ?    ?    ?        ?     ��	? ��              ? ?     ?   
? ?      
   ��  ?     ?   ? ? 	 
     ? ?      ? 
? 	   ����? 	            ? ?
        ? ��         	?
     ?    ��  	�      ? ?  ? ?       ? ?
? ��     ?              ?
         ���� ��     ��	? 
  ?	 ?        ?  ? 	   
��  ��?       	  ?      ? ?           ��         
 ? �� ? ?      ��
   ?        
 �� ��    	
? ? Щ  	           ? ?	 ??             ?        ? ����?    ?    	 	?		   
   
? ?	 ?    ? ?       �� 	 ? �� 	  ?  	 ?                     �� ?����   ?    
            

  ?  ?  ? ? �� ? ��       ?  	  ��??            
	     ����?	
?    ?   ? ?    	       ?  ?
? ? ? ��? ���� �� 	��    	  
? ?                 ?   
? ?  
       	 	  ?     
	?         �� ?  ��?
?
?	�� 
   ?   	 ?                    
 ? ��?��	        ?  ? ?                   ��  ? �� ? А? 	 ��?	 	 	 ?

 	              ?     	   ? ?
 ?
   
 
  
                 ?     ��     ? ?

?	 ��? ��  ��                     
 ��? ?             �� ? 	                  ? ��? 	?  
 ?
��  
�� 
��
 
                       ?	
 ?
	?     	    �� ? 
    ?             ��

 ?		
		? 	  ��    ?
 ?  ?                       
            ?   ? 	?
 ?    ?          
  ?    ?	
   ? ?   
?   ��                                            ? ?      ?       	 	 ?
?    ��?     	 ?  ? ? 	   
 
  ?                   ?             ?	
�� 
            
 
 
?  ? ?
	��?  ?
         ?    ?   ��              
 
?  
           ��   ��     
   �ښ�     ? 	 ?	��   	    ?     
 � ? ��     ?                           
  ?  
��?
 ��    ?
��	? ? 
?  ? 
����   ��	
     			  ?
    
	              	    ?            
?   ��  ��	  	�ɠ� ?    
	 �頰?     ? ?     ��?
?         
 ��          	
  
              �     ?   ?  
��?  ?  	 ?        	�� 	��      	 	? ?           ��         
?          ?      ?     ��    ?  �� ��  
?
��  �� ? ??  ?    
	? ��
            ?           ?                      ?      
��?                 ?
  
  ?      ��?             ?          ?                 ?                                                  
                                                           ��?','Andrew received his BTS commercial in 1974 and a Ph.D. in international marketing from the University of Dallas in 1981.  He is fluent in French and Italian and reads German.  He joined the company as a sales representative, was promoted to sales manager in January 1992 and to vice president of sales in March 1993.  Andrew is a member of the Sales Management Roundtable, the Seattle Chamber of Commerce, and the Pacific Rim Importers Association. ',NULL,'http://accweb/emmployees/fuller.bmp');
INSERT INTO `Employees` VALUES (3,'Leverling','Janet','Sales Representative','Ms.',"8/30/1963 12:00:00 AM","4/1/1992 12:00:00 AM",'722 Moss Bay Blvd.','Kirkland','WA','98033','USA','(206) 555-3412','3355','/       ! ????Bitmap Image Paint.Picture         PBrush         ?T  BM?T      v   (   ?   ?          T  ?  ?                ?  ?   ?? ?   ? ? ??  ��? ???   ?  ?   ?? ?   ? ? ??  ??? ????????????????????????????????????????????????????????????????????????????????????????????????	?
?	���� 	������?	��
����???????????????????????????????????�頚������	����?�骚��  ��	 ��?��������?������ఛ��???????????????????????????????????����?����𾻯?���ں������੯�����������������������???????????????????????????????????����?��꼺������魩���? ����?? �������𾟩�?��������???????????????????????????????????�隟?������������������	 ��  �����������������������������???????????????????????????????????������	��������������𰐼? 	
��ʚ������ ����˜�������????????????????????????????????????����ۿ�?��������? 	��    н����������ڿ��ྐྵ����	��???????????????????????????????????������?�麻��ۿ��
??��	����?
������ڿ
����
����????????????????????????????????????��������?ڻ��?		�� ? ? ��믟������������ϼ�鹩���????????????????????????????????????��?
����������
? ����� ����˺?������ޜ������??��������???????????????????????????????????���˞ڰ�����?	 	�� �� 	������
�����Ꙡ?��?��������???????????????????????????????????������뼚	�� ��������? �����?������������??	�� ?
�˫�???????????????????????????????????�����뼫?  ��?	������?
?	����������?������	����˰��??????????????????????????????????����������? ?
������? 		 ��?�������������˩������??�??????????????????????????????????���˞�?? ? 		���? �� 	 ?��?
�������п�� ��������??????????????????????????????????齿� ?������? ��˩���� ?
���� ����	��������?

��?	?����???????????????????????????????????
 ������?   		��? 	˩
��?��?����ɪ����� ������ڜ��??????????????????????????????????����������랼?  ����?��?
���� ����???	? ���� ?	??
��? ???????????????????????????????????
 �˛���? ? ��	?�	? �����������𰺚� ?
������?	�ʚ�ʐ��?????????????????????????????????��������?�됹? ?����?	ۺ����?	�ھ�ۚ��? ?�Р�	���� 	�� ��??????????????????????????????����? ��?ʰ?  	����	
 	�﫺?	��𚾚������?	
����	 ��? 	 ��   ??????????????????????????????����������???��������?��	������ڞ��?	
����? �� 	 	     ????????????????????????????? ��?𰿺�����?
����
?
 ��?��
�����ڰ�����	 ��?
 ? 			     ?  ????????????????????????????��������?
��?	? ���� ?	����?
��?ɩ��?ʐ ? ? ����?
        	 	?????????????????????????????��??�����༚�?
��	
���˰�??�������?	?	
    		     	 	   ????????????????????????????�������ꐩ		??	 	���麚��
��?��? 	    ��	
��
            ????????????????????????????	��?�����ʐ� ��ɠ�� 	����? 	?��������	  ? ��?
	  ? 	   	    	 ???????????????????????????��?
 ���	���������?�� ?����	����?
 ?      	   	         	  ???????????????????????????����ڜ���л��� ?𺩩? ��������������	����?      	 	 ?  	         	 ???????????????????????????��?
	?
఩�?
?	�� ? ���������ꛠ�?	?                      	   	???????????????????????????	������?	�� ��ɪ? ��ڿ��������?	��?
     ?     	         ?   ��??????????????????????????�? ?
	����?
ɩ? ��? �����˭���
�ʰ�?	  		   	     ?    ? ?     ??????????????????????????����?
������?	��?	𩠚 �����ﭐ ?	
?  	    ?          ?      ? ????????????????????????��?	  ?	   		?	�� ?
 ?	����۰�������� 	              ?         	??????????????????????????		 	        	?		�������	??���఩?
?
	 ��  	                  ? ?�???????????????????????��?          	 	?	?��
��������?	 ����  		                ?    	��???????????????????????   	      	   	   ������ �˞���	˺����?
?	  	   	                  ? 	 ?????????????????????? ��    ?         ?	 ?	?
	

���뼹�? ��	
��?	 	                   ?  	 	??????????????????????�  	              
? ��ʐ�??���갿?	�? 	  	                     	 ?	???????????????????????             ?    ? ����	?������?�?	 ��		                ?         ??????????????????????  ?	   ?   	        ? ?������??鼺���	ʚ 	?             	     ?	    	?????????????????????��    	              	
ɭ ? �������?��?	 ��	 ?       ?               ?
��??????����????ٟ???? ? ?      ?          	����	��?��ɰ����?	? ?           ?           ?	
��???���������?��?	???  ?                 	��
�����Ʞ��? ��?	 ��                          ?
???������������ۜ��?� 	                ? 	��	���������ڰ���?�ఠ			                    	   ��?��?���ߟ���?����?��   �� ? ? ?    ?     
��������˞��?
����		?                           ��?	��?�������۽�����?                     � ?�఩��	?鬐� ?  ?       	             	 ��	������?��۟�����			                   	��	? ��	 ����
�������� ?   	 	                ? ��	��	��?��?������������              	       
��
�����?
 	 ?  ����? ?              	             ��𛟛??����������?			                  		?
�� �˰�		 ?  	?
?	?          ?        	      ? ?	 ���������ߟ�����٩?   		 ?  ?	 ?      	  	�����    	 ? ?	? ?  �� 	 	 ?            	     ? ������������??�ߛ�����                  
??
? ?? �� ��     ? ?             ?         	   ? ������������?����?	   ?             	   ? ? ?	��??  �� 	��    �� ? 	        	                ��˝������?����?�й�		 ?                 ������?
а?	��  	 ?  	  ?    ?     	                			��۟��Ͽ?��?��������?   	  ?           		 ?  	��?
 
����   	          ?  ?     	   ?      	 ?
����?�۟���������������              	  ? ��?	��?		 	  	 ��    	  	    	  ?          ?       ��������?��??��ϛ��	? ? 	   	 	   ?    	 	
 	 	    ����   ?        	 ?	       ?         	     ��۽���𿛟���������	��?     	     ?    	 ? 		 	 	 �� ?   ? 	      ?    ? 	  ?                ��ٽ������ߛ���ۛ����	 ��               
 
         ��?	 ��?	      ?    	 	     	             	�۞�������?����������	   	      ?      ?		      	 	   ?	
 ?  	  ?    ?      	 ?            ?	����ۛ��۞�������ߛ�ɰ		  	             	 	   ?     	  �� 		 	    	  	    	    ?    ?    ?  	ۙ���ڛ�������������٩ ?	     ?           	 ?    ?  		 			 ��?                                	��������?	����??
��        	    	              ?  	 ��? ? 	 	      	             	     		٭��нн��������� ?	    ?    ��      	           �� ? 	    	  	     	 ?  	    	        ����?	?��?������ٛښ?	  ?                  ?	    	 ? 	 ސ   	 ?     	           ?       ?  ɼ?ڐ����?	˙а�� ��                  ?          ��?  	?     	  	  ?                    ����	������й��		             	                ??	��       		     ?  	  ?           	�٩���		???
����	?	     ?       	                    �� �� 	 ? 	    ?	    ?              	 ��������ښ�К�����
??				    ? 	                      ? ��А 	   	        ? ?       	         		 ?	����	?	���� ��                                 	��?	?       ? 	 ?    ? ? ?     ?  ?  ��?	�������ۛڐ���𐐩�	                            ?   ?	?	  		  	 ?   	 ?	 ?               	��	��?�ې��������	���� 	 ?                  ?           ? ��	
 ?    ?             ?    	   ?	�������������ސ�����	 ?   	          	    	  	  ?   ?	  ����	 	��    ?   ?				 ? ?           	 ������ߛ�۽�?��ɩ��	 ?                        ?    	  ? ?	          ?                  	������������?��������                  	         	    		��?? �� ? 	  ?   	  	              ������ߛ��?��?������?	 ?          ?	          ? ?  ��? ̬ ?  ?     ? ?   	         	   	 	?����	����?ߟ߿��?�� 	   	                   	   		    ������ ?     ?	  ?	 ? 	 ?        ��?	�ߛۛ۟�????��������?                           ��	? ����?	����  ? ?    ?               		�?	������?��?���۞�	?  ?  	                   	      	��?		��??  ? ? 	 ?                 ?	��?�����ٽ�??��?������	                           ? 		 ��?������    ?   ?		 	       	 ?  ��?	�����ۙ���???����?	 	                        	  	  ����А�����? ?   ?          	       ��??л����������??�ٰ�?  	          ?      ?        	  ��?	ɠ   	  ? ?    ?         	����	����ڛ������?������ɠ?                          ?    ����?	��?��? ? 	    ?      ?      ������?��?	��?	�������齐?	                ?       	   ? 		����??	? ��? 
  ? 	 	    ? 	      ٹ��	����???����?������       ?               ?        ��������?? 	�А� 		             	  а����ۙ?	�˹밹����ߟ���?	?             	              ?  ɬ��ޭ��?
?
  ? 
               	��������˙Й��������������? 	       	               ?   		�̽�����??? ?  		           ?  ��۝��������?ڛ	?????������         	 ?             ?    ?����? ���� ?	    ?           ��?	��🟙?	����????������?    	       	                  ������? �К���? 	 	      ?      ��������������ߙ��???�������?             	    ?          	����??���� 	  ?            	����𰽹�ٙ�����۝???��?��?	                            �����������?����	 ��         	   �鹹������������?	��??��������?           ?   	          ? ? ��?	켼�������
 ?  ?          	�������ڙ�	��?	����?����?����?                              �������?��? ? ? ��     ?      ������陽��� ��?�	�����۟�?����?                           	 ����?���驭 ?
?             ��������鹐�����???�ٹ���?��???            	                 ��
��������? ? ?            	��ߙ�ۭ�?	��?????? ����???����          ?             ?  	 ����	������?�� ? ��          ����������?	��?????? 	������???��   	   	                 ?  ������? ?��	��?  ?            ��������� ����?�Л�?	 	����??����             ? ? ? 	 ?  ?  ? ��?��?��?��	  ? 	         ۙ������	  ��			?		��   ?	��?����?                   	       ? �М��м�
�����?	?  ?           ���۝��� ? ��	?	�������������?��?                         ? ?켜��ܭ?ܭ���� ? 	          	?	���ߝ�?				��������?��?�����߽�  ?   	   	            	  ? ������? Κ��	  ?           �������������ڝ���?????	����ݿ��?         ?  ?	       	  	  ���ܜ���	̐??    ?          ���ٽ��ɽ���������?��??��?	�ݹ�?��              	        ?  	��??������  ��   ?     ��	����۹��������������???��۽����?��	            ?    	     ?  ɭ������	??��?   	        ? ?	���ڐ�����������??����й۝������          ?     	   ? ?   ���� ?��?��? ?	         			��������?	Лɟ��?	������������??��?   	  	             ?    ����?����
		��ڞΐ               ��������	��Л��?�߽���?��???�� 	         	 ?	   ?     ?	��
ɬ��������̐ 	   	        ���˚���Л?	����	??���	����????	                     	   ����?? ??	�М�?	 	            	˹�ۛ��ٛ����際��ٽ����������???��?	        ?  	  	   ?  	 ��ͩ����?	��?��?       	  	  		?��������	���� ?	��ߛ?��??????ޙ              ?  ?  	    ����������	 �ʜ�? 	  	          ��������������	 ?	��?	����������???��?		     	   	 ?        ?	���������������� ?            		����ٽ��۝��	�����˙𐛛�	����???????	     ?        	   	  	 ��?����?����   	    ?       �����۝���К?	??����?ٹ��???????�� ?          	       	  �ܼ��Ϝ�������?
��?	 	             ����߽���۽�	������??�Н���???????��?             ?    	  ��	�ͩ�?О?��	  ?       	   			?��������٩?	�ٹ�ߟ???ɹ��?????????  ?              ?   ? �잼ޟ	ɠ����ښ��?  ?           	  ��������ߟ��������????۝����???????? ? 	     ?     ?       ��������??ͭ�А� 	 ?         	������������	����????��???????????             	        	����?	��?	 ������	            ������ߟ�ߝ��ِ���????�ߛ�ߟ??????��       ?    	      ?    ����? ? ������	      ?        �������������陽��???����?????????��?             	        	???���ޜ�?��ڜ  ?         ?	 	��?���������ۙ�ٟ��????��?����?????ߞ 	              ?   	 ?��?�� �����?  ?          ��������۟����������?????��????????��     	                		������? ?��? ��   ?  ? 	      	?���������������ٽ�??????ߟ��?????�       ?   ��       	����? ���������ΐ� ?  ?          ��߿����������ۙ��??????��??????��                      	�����??�ɬ�?	  ?        ?    ����ݽ��ٹ����������??????��������???��   		     ?         ��ޞ?����
������ސ            	 ? ������۟ݽ���ߟ�����????����?��?????   	        ?  ?        ?�ͫ��������Μ  ?  	   ?       	��������ڟ	��	����????˛��??????	 ?       ?  	      ?  ��ܼ��?	ɭ?	??��? 	              	?����۝		О��������???��������????                  ?  	   ������������Ь                 		��������?	������??�м�
����?��ߩ                        	??ɜ����������?   	        ?  ����?��ٚ��?		�ٽ�?��	��	ɟ��?��? 	     	     ?      	  	 ����?? ??���� ? ? ?  ?   ?     	����ٰ����������???�� ��	���޼�?	   ?       ?            ?��?�О�����?��	  ?             ?	���ۚ�	 ? ?		��??ڙ		����?����?         ?           ?  �� ޞ����ͬ������  ?               ��𰰽��?Й������?��		  ��Й����             ?    	       ���� �����ͬ���?  	              ��		 �� ��?		����?��? �� ��?  ����  ?   	       		   	    ����?�����К�������	   	 	     ?  ?	������ 	? ����?��?	?   ? ?		        	  	     ?   		  ɠ����М	��? ���̰� 	 ��             ? ? ?	?	��???��?	?			 	?	?                   ? 	  ?ܾ	��?��?������?             ��А?	 ��		?	��?��	 ?     ����?	     	       ��?	  	  ��? ��������?	��?? 
��             		? ��  	  	 	����?��?	 ?  ��
��	 	         	   	      	 	 ����������?	��?������	              ��?		  	? ����?��?	 ? ��? ?? ?   ?     	 	   	 ?	   	? ������ڜ�������ޞ���  ?            			 ����? 	��?��𹰐		��? ���?              ?    ? ?   ? ������Μ��������콯���   ?      ?  ����?	�� ��	������?	 ?  ?		��	           	     	 	  	 ����������?	�Э�	����??��            		����? ?		������??				 ����?    ?   	     	   	 	    ? ?��??
�����ޜ�������
? ?             ���� ?	  	���鰐   ��	          	   ?     	    	 ��М
���ޟ���?�����￯����            ?		��?		  	  ����?��?     ��?   ?           ?  ? ��?    �� �? ������޾��??��?	��             ��?  ? 	������ڛ��	           ? 	      ? 	  ?      ��? ����ޞ����?��???��߭ ?   ?       		? ? ? 		��۟����� 	 ?            	 	 ?    ?	 	 ? ?  А??��?
������?��?�� 	 ?          ��?	  �ʜ��������۟���?	         ?        	 ? ?   ?	?	???�������ܼ��???��? ?           		ɚ�������ߛ�?���� 	     ?	             ɩ��?		  ��	? ��ͭ߯����������???�� 	        ?  �����ۛ��߹ۛ�??�ߛ�	 	 ?         ?     ? ���ސ� 	 ��?	��������������?��???�� ?	          		��	����������?���� ?   ?          ?    ?����?  ? 		??���������????����?	          ���ٽ�����������?��	?               ?   ?  �߿���̜?	? ��? ������?���ڜ���?????��  	 ?        		?�����������˝��� ?         	 ?          ?��??	? ��������?������?��??�� ��   ?   ?  ��	?����ۙ��?����			             ?    ? 	 ��������? 	? �����Ϟ����޼���????����       ?   			ڛ���߽�������ɰ��  	 ?  	  ?       ? 	  ��??����	 ����������������ܭ???�� 	 ?         	���������۟�����			      	          ?     ??������ ��?��?��?����̭��ϯ?�??��?	 	         	��?�����۞��� ��              	 ?   ? ?		?�� ?�� ?��??����??������??��?      	      �����ۻ�����ٝ��		 ��	      ?   ?       ?  ?������	? ����??��?��?����???��	        ? ��۟������ɚ?	? ?      	    	     	 ?  	 ?��?	?	��?����??��ߞ����? ��????��
	           	 ����ۛ۹��	����	     	        	        	??������ �� ����??��������������?��?�       	    �����ɹ�?��?	? 	 	 	    	        	   ?	  	??�������� ����??��������������??���� ?        ?	�Й��ۛ鹰ِ	 ��?             ?       ?	̟?���̐���? ? ??��������??������????� ?          ?	��۽������	��             	   	   ? ?  Ͽ����?	?
?��ޞ������???����ޞ��?��?           	
	�������ə�?		 	               	     	  ??��? ����
��ɬ������?��?��???����??��?  	        ��?	����й ? ? 	  ? 	 ? ? ?  	   	  		 	 ???��?��?����ޞ?��????��?��������?	        	   
?	����?		 ?    ?                ?   ??�� �� ������������????????������???     	     			 ����	?		    	 ?         ?	  ?	 	    ?
???��?	?����??ﯟ�??????????��?���  ?         ��	?�ڙ�?	 ?	        ?     	        ? ��????����������?��??����?��?????�� ?          ? 		��? ? ?	      ? ?   ?    	 ?	 	 	 	????��???����??Ͽ???????????�ϰ�             ?			? ?    	          ? ?     	 	  ��????����������ͭ���???????????????�����  ?      ? ?	 ����	 	 ? ? 	     ?      	  ? ?	 ��??????�� ����͠����??��???????????��?  ? 	         	 			 	       	 	   	         ��   ��??????������?��?��?��???��??���??????? ��    ? ?    ? 	  ��? ? ?           ?	   	     ?	???????��������������???????��??�??����?                		       	            		  		��? ???????��?���??��????????????��   	     	    ��   ? ? 	        ? 	      ?  ? 	 ?????????������������??????????????????��? ?                ?           ?      	    	  ? 	???????����???�ͬ�?����??��???????�� ? ?  	      ?      	  	   ?  ?   	  ?     ?	  	 ???????��?ܰ��????????????�??????	 	                                     ? ? ? �� ???????��������������???��????????????�� 	?              	    	          ?     ?   ��?   ��???????����??����???????????????????�� ����   ?         ?     	  	  	   	  ? 	     ��????????������̜����???��?????????????�?    	    	        	         ?    ?	    		 		   ???????��?	����?��???????????�??��??? ��                                   	   	   ��???????��???��������????????????????��ސ  ?           	     ?    	    	 ?  	        ? ?????????��������?��?????????????????�Ｉ	  ?         	  	       	  ? 	    ?   	  �� 	?????????��??������????��???��??��????��?
	    ?	    ?     ?   ?	     ?  ?      	    	??????????�����������Ϛ�???????????��???????��ʐ?  	   	                        ?   ?	 		 ��??????????����?����???��????????��??��?�� ��                    	   ? 	 ?  ��	      ??????????�����������ޜ�����???��?????????????����   ?	   ?     ?    ?            ?    	  ��??????????��????�Ͽ�??????��?????????����?         	     �� 	      	   ?  	 ? 		  ????????????����?������??????????????????��?�?	  ?   ?  	      ?      	 ?       ?   ��  ??????????��?������?��?????��???????��???????��	  	    ?   	                	  ? ��?   	???????????���������ΰ���???????��??????????���?	  	 	       	                ?    ��????????????��?���ޟ�??????��???????����?����?     	          ? ? 	   	 	    	  ? ��????????????��������������??????????????????�� ?      ?	     ?      	        	  ? ? 	?????????????��??ܞޞ��?????��??????????��￞�	  ?     ����               	   ?	 		
?????????????������������????????????????????????����?	   	             	       	  ?   	  ??????????????��?����??????????????????????����?  	   	   	 	  	    	 ? 	     �� 	?????????????��?������????????��???�?��????����?     	   ?   	             ? ?  ��??????????????�������Э���????��???????????????��??������  ?  	           ?   	       ? ?????????????????��������???????????????????????����     	 ?	 	              ? ?	  	??????????????��??����	???????????????????????��?��		      
 	  ?  ?     ?  ?    		 ???????????????�? �ͬ�ޜ��??��????????????????????���� 	  ? ��?    	     ?      ?		 
????????????????������?������??????????�????????��??��?�� ?      ?      	     ? ?   		????????????????��������ޜ��Ͽ?????��??????����?????????����?    ?	   ?    ?   	 ?	 ? ?  ????????????????����̐���ﯽ??��????????????????���??��?	 ?
?		  	           		  ? ????????????????����?����ޞ��Ͽ???????????????????????????��?�	���� ?  ?  ?	 ? ��  	 ��????????????????������?���޾�?????????��???????????????�������鼐 ? 		     ?  �� 	??????????????????����	����?����??????????????????????????����˞����?     ?  ?  	 ��????????????????????����?��ޞϿ????????????????��???��????�ڽ���ޟ��?	 �� ?  ?  ???????????????????����	��?���????????????????????????????�???��ޟ��?��?
	     ? ��?????????????????????���������Ͽ??��??��???????????��?????????��?��?��	? ��?   
???????????????????????? ��������??????????�????????????????????����߯���? ��	 	?????????????????????????�������ޞϽ�???????????����????????��????��??��???���ʬɚ????????????????????????�? ?	��ͭ����??????????????????????????????����??��?�����߿�????????????????????????��������������????��??�?????????????��????��?��?��?��ν�ϯ�?????????????????????????��?  ɬ���޽�?????????????????????????��??????��????��Ͻ�߿�?????????????????????????��?�� ̜���ܼ�???????????????��????????��??��?????���޼�???????????????????????????������	?���޽�?????????????????????????��????��????????������????????????????????????????�̞̬ɬ�����??????��??????��?????????????????????????����Ϟ???????????????????????????��?	?	ɼ?��???���????????????????????�?����????????��������?????????????????????????�������� ������???????????��??????�?????????????�������?�???????????????????????�� 		��?	Ϝ����?????��????��?��?????????????????????��Ϟ��
ڞ����???????????????????????�����������ܹ��?????????????????????????????��??����?????��?��������Ξ???????????????????????�� 			 ��??��????????????????????????????????��?????????��������������???????????????????????������?������?????????????????????????????????????????????����?����???????????????????????��? ? ?��???????????????????????????????????????????????????????????????????????????????????������???????                ��?','Janet has a BS degree in chemistry from Boston College (1984).  She has also completed a certificate program in food retailing management.  Janet was hired as a sales associate in 1991 and promoted to sales representative in February 1992. ',2,'http://accweb/emmployees/leverling.bmp');
INSERT INTO `Employees` VALUES (4,'Peacock','Margaret','Sales Representative','Mrs.',"9/19/1937 12:00:00 AM","5/3/1993 12:00:00 AM",'4110 Old Redmond Rd.','Redmond','WA','98052','USA','(206) 555-8122','5176','/       ! ????Bitmap Image Paint.Picture         PBrush          T  BM T      v   (   ?   ?         �S  ?  ?                ?  ?   ?? ?   ? ? ??  ��? ???   ?  ?   ?? ?   ? ? ??  ??? ��������������������������                                ����������������������������������������������������������������                                �����������������ۿ���??��������������������������������������?                                �����۹�����������۹����������?�۟�����������������������������?                                ?�۹���ۿ���ߛ��߻�������?������������������������������������                                	��������������������������������������������������������������                                 ۟����������ۛ������?�����������������ۛ�����������������?��?                                	����ۛ��۟�������������������������۟�����������������������??                                 ��ۛ��������ߛ��������������������ۿ��������������������������?                                 ����������������������������ۿ����������������������������???                                 ��?�������������������������ۿ�������ۛۛ���۽���?������������                                 ������������������������������۹����������������ۻ���������?                                  ��?��������ۻ��������������۽������������������������������?                                  	����������������ۛ���������۹����������������?��������������                                  �������������������۟������������? ��������ۻ��������������?             ����
?                ���������۹�����߽������������?��  �������۹���������������?            ?������?             	�������������ۛ�����������������   𰽯���������߿���������?           ��??��ߟ��?            ������������������������������     ?  �����������۽���������          ?���߹���?����?          ����������������������������      ?     ?������?��������        	?��?��뿽�???          ����ۛ����������˻����?        ?  ?    	����������������        �ߟ��߿�����??����?          ��ۛ�������������驰���          ? ?       ��������?��?       ��?������?��ߞ?������        �������۽���������?             ?           ����������?      ?��ޛ��߼��??ߛ����       �������黛ٻ��?                ?            	��ۿ������?      ������?߽���۟�??�����      ��������?����?                  ?     ?       ��������?     	��������������?��??����?      �������������                   ?              ��������     
���߿�����?��ߟ߿����?��?      ��������                        ?              	��������    	�����߽���������?����˞����?     ������?                          ?               ������??    ��?������߽�����������м���?    ����                             ?               	������     	��������޻��н������?����??	?   ��?                             ?     
          ����??    �߽�?�߽���??�����ٞ�����?   	��?                             ?    ?           	����?    		������������ɼ�𜰚������𿛞?   ��                              ?                 ����?     ��?��?��������	���ڛ���		?ː?  ��                              ?                  ����     ?��������������?	?	��?�������   ��                              ?                  	����   
?��??�������ڙ���ڟ����?��ڟ
? ?                               ?                   ��۠    	?�����������߭������������齹齠  ?                               ?      
 ��?        ����   	�?�����������������ۛ�˟�ɭ�ʐ           ?                     ��
   ��
 
         ��?    ��?ϟ����??��?����������𽿚ڹ?          ?                      � ?
��? 
 
�� 

  ? ��   
��??�������˽���������ߟ?���     ?  
      
               ?  
   ??? ��?��  �?    ??��?����?������??��������������?           
 ? ? ?              ? ?  
  



?   ? ��    ��������?�߿������߿�����������?      
�� ��    ?                 ?          
 
 ��? ��
	?    ��?����ߟ������????���ޟ�˟���۽�         ?   ��  ?               ?                 ?
 ?    �����߼�?��?�ߟ�?��?�����������?          ?  
 ?                ?   ?  ?            
 ?    ?������������?��?������˟���ݯ�    ?    ? 
  ��
      ?        ?                      
   	����ϟ�߿�??��?��?����������۟��?   ?  ?   
  ��

    
          ?                           ���߿�߿��?����??��?����?�����𼟽� 
  ?  ?   ?      ?            ?                           ����?��?��??�ߟ�?������������������        ? ?
  ?  ? ?  
      ?                          
?����?��??��߿??��??������������߽?     ?   ?

    
 ?
     
  ?                          	?ߟ�ߟ�����??����??��?��������������  ?����    ?   
     ? ?    ?                          ��??����?����?����??��������������?  ?     ?�� ?           ?   
 ?     
                     ?�ޟ���?��?����??��?�����������߽�           ?  ?
 
   
   ?                          	?��??��??�����������߽�������������?  ? 
 ? ?	�� ?        ?
                                ���?��?������?������?��������?��?   ?   ?��������?         ? ?                          ��߿����???����߿���޽��������Ϳ����?   ?    �� ??




       ?                           ��?��?������������?��?��?����ߟ?��? ?
 ?
?�Щ�?? ?
   ?                          	���?��?��??��???��?��?����??����? 
   ?
 ?


����



  ? 
 ��                          �ߟ??������?߽?�߿��������𽽿�����?        ? Щ��
 �� ������ ?                          ?��ߟ��?��??��??������߽������?��?��?
�� 
  ?
 
�భ��? ? ��?                          ����?��?����߽��?������?����������������?       
      	  ���� ��                          ?������������??���߽������������������    
      
 

��
? ? ??                          
��?ߟ??������������?�靽����?�����ߚ�? ?
     
 
        
?      ?                          �?����������߽�����٭�?	��齭��������� ?  
   ?    
 
     
 ? ?  ?                         ��?ߟ?����?��?����?��ٝ��������??ݽ����     ?          ?     	 
                           
޿��?��������������?ߟ���ټ�������?������?               ? 
    ?   ?                         ������??��??��������		��������������? 
                 
 
     ?                         ����?��?��??������	������ߚ?Н��?�۽���?   
                    ? ?                         ������?��?����?	��????߿? ������?�����?                      ?  ?                         ?��?��??��?��?	 ???????��?	������???  ?                       ?                        ������?���߯�?����??????????��	���߽�����
                         ?                        ��?��?��ߟ��?������???��?????����?��?�ۛڟ�                         ?                        ��?��?��韞�?��??����۟�����?	��?������?  ?                      ?                        ����?߿������?
??Ϟ?����?��?
�������۟���?                   ?  ?                         ��?���ߟ���?	?�鹐����?	��?		?	���ߟ���ߞ                          ?                        ����?����ߝ��?	�����ݽ�ۭ�������ɟ��������?                         ?    ?                  	����??ߟ߽������鿟��߿����ϟ����������?ڞڐ? 
              
      ?     
                 ʽ��?��?����������???�߿ߟ�������𚟹��������?                    
   ?                     ����???��ߟ����?����������?�����ڞ����۟ٚ���? 
              
    
  ?                     ??�ߟ�?����?��?����?�����ޟ����н��������?                   ?    ?                    ����?�����������۟�������߿��??����˛��������ښ??                       ?                    ?����?����������������?��?���۝�ɽ��?����ɼ����  ?                
 
 ?                   ߿��??�������پ����?����?�����ސ�ښ������?��ɠ
               
      ?                   ��??߿�������ښ�������??����𞝹��������������?                       ?                  
�߿�������?����?����۝��?�۞�����?	?ۙ������ܰ��?                  
   ?                  ����?����?����۹������????�߼���?����?������������                 
     ?                 ��??����?��ߟ����?�����������ܿ�?	?	�л?������??
                      ?                 ?????���������н����ߟ���������𝝻���ߛ����? ?                ?   ?
 ?                 ��?��?�ߟ�ߟ??����?��?����߿����?���м���������Э? ?                 ?   ?                 ��??��??����������ߟ�������?�����?߿����������
                 ?  	 ?                 ?��????����???����������?????	������������� ?                    
 ��                 ��???��?????����?��������?��?������ސ۟����۟?��	                   ? 	 ?                 ��??����������?��?�ߟ���Ͽ߽�ߟ�?������	 ������               
      ?                	��������????����???��ڛ߿����������?	��������ڜ?	                  ? ?
 ?                ��?߽??��������??��?����������?����??�����ߟ�	�ː�                       ?                ����?����????�ߟ�???����?��������������߿���頼?  
                     ?                 ?����??����ߟ��??�����������������ڐ�����߽����?��?                     ?                ��?��?������????���ߞ���۟?��߿����?	��?�߿�?���?	                       ?                ��?��??����??��?��߽?������������������?�ߟ�?�����?                     ?                ߟ?������??��?��ܻ��?��?޽�������?���齿�߿�?�˽�?                        ?                ??��?�߯�����?�ߟ�����?��Ϳ������?	����?��?��������                      ?                ��??����?????����???�߽�����?��ڐ������??��?����                                        ��??����?��?������������?��������������?��������? ?                      ?                ��?������???������??������ϼ?������?????��������?                                       ��?����ߟ?????�����߿�?����?? ښ����??����ۿ����
                      ?                ?�����ɰ�?޽?��?߽����???��?������ۭ��߿??��������?                     
 ?                ��?����ߟ?������??������?���������ݽ�ϟ�??��۞����	?                     ?               	??������?����?����߿��?����?����? к����������?��	? ?                     ?                ��???�?�߿���?��?��߿��??��������ڭ�۩������������                       ?                ???? ��޿��ͯ��������??��������?���ڼ�????�߭�	����?                       ?               ��?���������??��?��??��������?��?	��?������������ڐ                       ?               	???�� ?��?������??��?��?��?����������������?                        ?                ��??����??��?������?������������������?������������?       ?               ?               	?����?  ��?��ɽ��?��������??�߿�? 
ۜ �� �����                        ?               П���� ??��Ͽ������������	��ڜ��? ������	 ��? ?	?                        ?                �����???������߽�ڟ���ޟ��?К���?��?  ?	���ʙ�?        ?             ?               ߟ	���� ��߿������?�� �����߿�?��???ڐ     ڐ��?	        	 ��            ?                ��?	��  ����	�ߟ��Р�?
???�߿�ޟ��?��?
��? ��?        	 ?            ��                �� ��   ����?��??�����ڞ�����?߿����??��?	����	 ?        ?  
           ?                ?        ��?Ͽ����??? 
?	����?����������������?	?��?     ? ?          
 ��                 ?        �޿���?��??  �ϛ�����??����?����  ����      ��          
   ��     ?          
?       ����?�ߞ�������������?��������ڜ��?   	��?         ?
       ?
? ?    ?           	       	��??�޿������?��ڙ���߿�߿������������
      	?          ��?  ��                         ??�������������𜾟�?������ߟ����鯟���?       ��    ?     

����                ?       
 ����������������?�߽�����?������ﭭ�����	�?     
?           ? ? ?                 	      	?��?���߽��ܹ�? ��?��??�����������ɩ�	?  ?         ?        
?	�?               
  ?      ������?��?��������?��??��������������?��          ?      
	
? ?               	?        ����?������?����ɩ??��????��?����?����	��       
    
      ����                	?       	������������������?��???��������???��ۭ����     ?  
    
     ��? ?                ?        ������?������������?��?��???????��?��������         ? 
    ? 	 ��               
??      ����?��߽����?????��?����???��?��?����? ?     	     
? �� 
 ?                
        ����߿��??????߿��?����??��?������������        ?     �� 	? ? 	��                	?      ?��?ߟ��??????��������???��߭��߭������     
         �� 

����         
     
?       
?������?��????��?����???߿?���߽������?           ��
 ?  

?  ?  
 
   
   �� ?      	����??߿��???��?������?���߿�?���������	
?         ?   ��?


����   
     
       ��       ��??��?߿߿??��????����??����?������������           ?  ��
��? ��    
           ?         ��???????????����������???����?����랟�?         �� �� ? ?������
    
  
 
    ��  ?      	��??????�߿�????��?������?����?�ϟ���?           ?  ��?��
? 
 ?          ����        ����?????��?????����������??��?����������?           ���� ?
?
??    
  ? 
     ?  ��       ��???��???��????��??????�������?        ?  ?  �����ʜ� ��            ?  �� 
 ?      
����??????��?��߿?����??����۽����?          ?  ?	? ? ������?
  
  ? 
 
   
   ? ?    ��??��???????��??��?��??????����?
?         
?


??
��
? 
  
?        	��   ?
    ����?????��???��??��??��???��������
           ?   �� �� �?  
?   
 ?  
 ??
      ����?????߿???����????????������
?           ? ������? ?
?  ?   
 ?  ?
 ��
	 ?	    ����?����????????����?????��߾������?        ?  
  ? ?��	��
   ? ? 

 ?   
 ��
 ?     ����????????��?��???��??��������             ?����? ��?  
  ?        ?�� 
       
ڟ��??����???????��?��߿??����?��?��          
?	
����
��?
??       
? ��   �� 	  ?    	������??????��??��??????��?��?�ߩ�? ?          
 ��??��?
? ?    
   ??  
���� ?    ��?????????????????????�߾���?               ? ? �� ������   ��  
 ?  
 	??
        ��??��??��????��??��??��??��ߟ ? 
             ������ ��??
?  
  ?    ? 	? ? ?       	?��??????????��????��??������ ?           ��
 ?
 ����
��? ?     
    ?  ��?  ?      ����??��?��??????????????????��?           
   ��?��? ? �ʜ�      
 ? ? 	 ?  ��?      	��???����?????????��??��?����?	��   ?          ?
 ? 
��?	����    ?   ? ?
 ??      ?  ����?����????߿?����????��?����?
   	 
   ? ?    �� �������?  ?  
  ? ?   
   ?    
 
  ����???��??��??����??����??��	 
   ?    ? 
   а
?
��
��?
  ?      �� ? м��
       ��
?������????��??????��������?  ?
       ? 	
??
?����?      
  	   ��? 

 ?	      		��н��???��?����ߟ����?������??	 ? ? 	  ��
 ? ? ����а
Ь
��?  ? 
   ?  ?  	����?        
?��������???��??????۟������? ? ? 	 	��? ?
 �� ����?
ɬ?? ? ?       ? ?��? 
     �А�		˛��??����???����?����?��?

? ? ? 
  
	��?	  ����?
? ��      ?    ?   
��? ��       
  �������???����?ޟ������鯞�	?	
��? ?
    ��  ��? ?
? ?       
  ?    ? 
? ?         	����?��ߟ??����������?��?  ��? ?    ��?
 	 ��
 ����?	? ��? 
  
    ��? 
 

٩?         ?	����?����?������П���	? ��? 
�� 	 

?
 �Р���??	������??   ?          

	
        ?  
? ������������𼼰��?	���?	  	?
?	�ʐ� ?  
? 
����? ?  ��?
     ? ? ? 
	 	
��?         ?  ��?��������ɬ���ڐ�	ߐڐ ��   ? ?    ɠ	?? 	��?
ɠ��?
?
��          ?    ?	
ɭ��     ?	? 	?�魬? ������?	����? 	 	 ?   ����  	�� 	? ��аɩ�ɠ�  ? 
    ? ?  
?	����		     ?  ����	? ��?�� ��	??	�� ?
  ? 	  
 ? ��?   �� 
 ��??     ? 
        
?
��
?     ? ��   ��ɩ�ɰ�������?	? 	?�� 
	?��? ? ?�� ����
��	?	��
?
  ?     	?  
?
	�����
?   ?  ��   	�ڼ���???? �� 	? 
�� 
?  
       ?
ʚ? ��?
������?              ʜ ? ?	����     ? ��? 	
?��ɩ�� ɠ��?	 ? ? ?   �� ?  ?�� ��ʜ
Щ?����    
 
 ?
    

��鮜�?     ����  
 
����? ڐа��? ? 	?	?   �� ?  
 �� ? �� �
��??? 
          
 ? ? ��??? ?
  ?	��
  ��?��?	��?    
  
?         	������	?������ ��   ?    ?    ����������     
��?  ?		��	��
��?	 	?
    	 ����?
? ? ?

	
��༠?������ ?     
    
    ? ?  ?��?    	��? 	
��? ��      ?	??? ?  	  
����?
?��?�� ��
        
    


 ��?	��?    	�� ��		��?
  ?
?    ��?	  	   �� 
 
 ?
�� ?��	? ?        
    ��?? ���Щ
  ?
 ����ڞ	 ��	 ?      	
��?	?
??
  ? ? �� �� ʞ��?
 ?	? 
  
  ?   ?  �������� н��? ?  ��	��		�� ??      ?
  ? ? ��?  

 �
?
���?
��������              ��
?	��?
 
А? ��? ��?��?      ?   

		
�� 
	����?	��? ?��?����   ?  ? 
 ? 
	?
��? �К���ɬ��  
?	
?	����?           �?
? М ?  
  ����?��? ������??           ? 
 ? �੯��?��
ɠ����? ��� ?��?            ?   ����  ?
 
?����? ?

����?        ? ? ?  ��? ��?	?ɬ 
  ? 	��	? 	
          ��    ?��  ? ?

?? 鬠������� ? 
   ?   ?   ? ?
? ��?
Ь��
	  �� ����
 ?            ��?  ��? ? ��   ?
?��?
??��

	��       ?    
�� ?	 	 ?
�魩ˬ ��?  
  ��	��           ?     ? 	?  ? ? ?  ?

���
��������?   
    ? ? 	  �����୪�?�а� 	 ?  ?	��
	?         	��  ? ��? ��?   ?
 �? ?
�� ��
?
	��             ? ? ? А�ڜ���?
? ? ? ?  ��?  ?          ��	�� ?  ��		�� ����
Э�� ?	����ʜ? 
    ?    
  ? 
? ? ?? ?�ଐɠ 
 
 
          
  ?�ʐ�? 
? 	��
  
��
�� ? ��
 ����?         
     �� ?
?	�� ?? 
    ?   ?        	??�� 
��?
  ��?
��?����?��?	�        ?    ? ? ?	������К ��?     ? ? ?        ��???
	?
������
?  
 ��? ?���

����	?    ?           
��? ��?�� ��  
     ��         ��?��ɠ?	?
?��	 ����
���଼��ʚ?��ɭ?          ?     ?  ? ? ����	�� ? ��

   ?   ?˚٩鬐�? 	
�ʐ�ବ�? ?
��
?
��?	�� ? �� ?  ?   ?    ?  	 
  ����??

��? ?    	?     ����? ��?   
 ? ?
 ?  ?  
��������?����?��?   ?   ? ?      ? ?
?  ?����? ��
    
	�? 
 ��
ښ��?	? 	 �� ���ɬ���
   ??
 ? ��? ��
�� ?                 
? 


����?

��? ?      �� 	��? 
��ʐ��  �� ?	   ?�����?
��?��?          
    ?
 
   ? �? ��鬠�?
��   

�ڞ���?��   	 ������   
  � ?
?��?
��? ? ?      ?             
��?
 ��?��
   
  	������?  ? ����?
 	��? ��? ?	 ���������?���                     
 
������	��
   ? ?
	��?	��?	 �� ��	
? ?
�� ?  
 

?ɠ

��? ?    ? ?  
       
        ?
�ɬ�����   
?	?
?
	 ?  �� �� ?? ? �� ? 
�ɬ��������?                ?         ?	����? �� ��?  Щ ? �	
?
 �����? ?
 ?  ?  ɠ?	
?
��?
��ʐ?  ?     
                  �� ??��?  ? ? 
ɠ�ࠩ  �� 
�� ? ? 	 
    
  ���� ?����?
����?                          �ڐ�	?�
��?	  ? 
?
? ����? �� ? ? 
 
   
  ??�� 	�� ?
 ?
��          ?      ?          ��? ?���� �� ��?	?
�� ?  ?  

 	? ? ?    
	����������??
��                           ?��?	ࠚʐ�? ?  ? ଐ�  ? ?
�� ��  �� ��
    ? ��	?
?
? ??
��?     
  ?       ?           ?	
����Р?�� ? ����? ?	
 ?  	? ��  
  ? ����?
��? ??
�� ?                            ��������
��?  ?
??

 ?	�� ?           	?
����
��?
 �� ��? 
       
                   ? ?
��??��?	�� ?
? 

��?	? ? ?? ��  
    ����������?
��
�� ?   
                         
 �Р� ??	?   ��	��? ? ����      
    
  ��?
	��
?	??
��?                ?           ? ��
���
?��	����?	
��  
���� ?  
     
    ?
����������?
�� ?        ?                       ? ? ?	?

�� ����?

 ��  ?  ??          
?? ? 
�� �� ??         
       ?           
   ??	�� �� �� ? ?    
   
?  ?   ? ? 
   ? ??��?
?
��     
                        
  ��? ?	࠮�? ?	 ��?	 
?   ?      
         ?	��
?
	 ?ɠ����                                ��? ? ? ��

 ��?      ?                  �頬��������
��
 ?                ?              
 ?
 ?
 �� ?   
  
         ?          ?	 �Р� �� ? ??   ?   
                        
 ��
�� ?   ��  ?        ?   
   ?
 
   
ʐ����
??
?
 ? ?       
                            
 ? 
  ? ?     ? ?                  ���� ��	��? ��ɠ
��?                                  ?  
      ?  
           ?       ?      ? ?

???��
��
 ?                 ?                         ?
     
                        ����? ?	? ?
?
	��?               
                   
         
 ?  ?  ?        
 
    ?      ?

��??������
 ?    ?                                           
        
   
          ?    ��? �� ?
�� 
 ����       ? 
                                             
          
        
 
������������鬠� ?        ?       
                        ?                 
                	��������	 		   ��                                                   ?            ?        
  ?	��?����������?                                           ?  ?                     
 
      ?	
 ? ��? 
  
 ����                                                
    
  ? ?   
             ? �������������� 

?        
       ?                                           
    
         
��? ��	 ? ? ? ����?                                                                            
��?��???
?                                                                            	
 
  
 
			 	  ?                                                                             ��������������������                                                                                                                ??','Margaret holds a BA in English literature from Concordia College (1958) and an MA from the American Institute of Culinary Arts (1966).  She was assigned to the London office temporarily from July through November 1992. ',2,'http://accweb/emmployees/peacock.bmp');
INSERT INTO `Employees` VALUES (5,'Buchanan','Steven','Sales Manager','Mr.',"3/4/1955 12:00:00 AM","10/17/1993 12:00:00 AM",'14 Garrett Hill','London',NULL,'SW1 8JR','UK','(71) 555-4848','3453','/       ! ????Bitmap Image Paint.Picture         PBrush          T  BM T      v   (   ?   ?         �S  ?  ?                ?  ?   ?? ?   ? ? ??  ��? ???   ?  ?   ?? ?   ? ? ??  ???                                               ?      
           ?    ?                                                                                                                                                                         
 
?          ?   ?                                                                      ?   ?          	        ?                                                                     ?    
          ?        ?                                                                                     ��       ?                                                                      ?       ?          ?                                                                         ? ?        ʐ  ��                                                                               ?        ?      ?  
  ��                                                                       	 ?        ??��                                                                        ?           ? ? ?        ��?                                                                      ��          
�ʜ�?  	                                                                                     ?      ?                                                                        ?             ��	      ?                          	?                                          ?             ��     ��                                                                        ?     ?   ��       �                         ��                                     ?     ?    ?   ��	?	      ?                                                                       ?      ʞ?����       ?                         
                                                 ��Щɭ˚а?      �                          ?                                    ��     ?   ?����?��        ?                         ?                                  ?          ����ښ٭��?	      ?                          ��     
                                    	 ܰ����ɭ��?       ?                                
                                      ��?��������?      	                         ?    ? ?
                         ?         
����?		������?     ��                        ?
      
  ?                      
 	    ?    ��٩?�������	      ?                       ��	      ?    ?                   	       ? 		������		����       ?                    	? ?	
     ��  ?                               
�ڐۚ�����?����     ?                   ?   ?   ��?	     ? ?                
? 	       ?	 ��? �� ?������     ��                 
   ? ? 	  ?  
? 	? ?                ?         ? 
�ڜ��� ����������?   ��               	
  �� 
 ˠ

 ?    ?   ?                   
        			?	?	
��˚��      ?            
�� 	    ����?	
        ?  ?            ?  ?     	������ ����?	ɼ�;�	    ��           ��?	 	 
?  ��
 ��
ʐ  
 ?	?  ?  ?                     ? ? ���� ?	��
?	�
ڛ��?                �߽�?
 ��  ? �� ���� 
?	     ��             ?       ? ���	ښ? �Щ�٭����             ??�� ?	
 	 ?   ? 
?	  ? ? ?   ?  ?           	       ?  ��	?	���� ?����?О��    ?       ��??��?  	
  		?  ޼? ? 
��    �� 
?                	   �𼰰��٠��� ���� �٩���?   ?      ???���?  �� 	 	  �� ?	?  	    ?  ?          ?    ��?  		?? ɭ��А ??������?   ?     ????��? ? ?   ?
 	?     �� ��?    �?           		    �� 	��?	����	 ?�� ? �ڝ�?         ?????????  ��	 	 �� ?  ����	      ?  ?         ��    ?  ������?	�預?	ɐɩ��Ϳڐ   ?  ???????��?	��? 
	 	�� 
	?����?     ��? 
 ?       	      ������?��? ��	��? ��������?    ????????����?  	 ?
? ?     ?��	     ??  ? ?      
ڐ    ? ����		
��? ?	 	?	?	 ��ߞ�?    ?????????��?
   
 ? ���� 
  
��

  ?  ??  ?         ��    ?���ɬ��� ?	
����? ��		����  ???????????��??  ?
 ?  ? ?	   	   ?  �� ?         ?      ?	���������?     ��	������?  ??????????�ߟ�  	 �� ��? ?
  
 
?      ?�  ?       ?     
����	��? ?	  
? ��	  
?	����  ��??????????�� К	?    ��
?
  ? ?
    	   ��   
        ?    	����?�������� ?   ��? ������?  ?????????????��?  	 	
 ? ?   ��  	  ? 	   
	��?      ?    �������� 	?		?	  ?	     ? ����  ?????????????��		?	��? 
	?	
	  

  
? 
      
       ސ   ����	������
 	 	      	 ��?	  ???????????�?��? ?  
��	
  
?    ?                 �   �?��	? ��?	        		��	����????????????���� �� 	?	   ? 	
     ? К ?
  ? ��     ?	? 	?	��?	 �� ��              
��? ??????????????� ? ? 	 ? ��

 ��? 
    ?  ?  ��???    
��  ��˞����	?		 	  	         ����?????????????���� ?  ? ?
? ?	  ?  ?	 	��	��
	�� ??    ��?  ����		��	     ?        	 ?
��???????????????�� ? ɩ
		 	 
	
   	? ��    ?	  ???   �� �����ښ���  ?	 ��             ��????????????����? ��  ?   ?  
		
 ��? �콭��  
?????  ��	 ����?	?	? ��                 	? ��???????????????��    ?  �� ? 

   ?   �� ? ? 
 ?????? ? ����ښ���� 			   ?	           	����??????????????���	? ? ��	       ? ? ? ��?
	�� ?????? 
� �����А� 	  
			      ��      ����??????????????��? ? ?  ?�� ? ?  ��
 ?
�� ?   ????????? ?��	٩��?	 ��      ?    	  	 ???????????????�а���		  ����?	 
  ?
?
��	�?????????? ϟ����? �� ?  �� ? ? ?	?	 ? ��??????????????��?  ? ?
 ?	 	 ? ?
?	  ?  ?  �� ??????????�� ?����		?	 ?		   ?	 	?	  ڐ ?	��? ��????????????����������?	 �� ? ? ?
 	? ��
????????????�� ���	����	 ? ? 		 ?����? 		�����?????????????��?	   ?
 
 	 �� 	�� 
? 
? ��??????????��?����Щ	 ��		 ����	 ?	?	��	�а�ʜ ?
??????????????��? �������� ��?	? 
? ?  �?
��??????????? ?��?	������ ��		鐩�������	?	��???????????????? ? ? ? 
 
	 ?	?

? ��? ?

��???????????�߽�?	 ?		?		
?	����?�����м????????????���			?	 ?	   ?��?
?	  
 ��  ??????��? ?����	?	
�� 		??
ڞ����?ޝ�ښ�????????????��?
  ? ? 
	
���� ?
���� ��������?
?
    ?�۽�����?������?ڐн	����޽켚�????????????��?		?	?  ?   ��ɠ

	�
 ��
? ?
?  	 	 ?��ڞ?
?
? ?	���˚ڛН�����?����????????????��?	?   К ���ʐ�����? ��
����??  
�� ��?������?		 ?
������?	?�������𼰚�???????????�� ����?
 ?  	
��? ��?
  ?	�� ??��  ʚː  ??߽��?	
�����������������韟��?��О???????????����
   ��?
		 ?
	 
	��?	? �鬐???????��?   ?��?	?
������?	��	?���ɼ�������??	???????????��А ?			 
 ?	


?	ʚ ��	������??????� ??����		
	
����	������	����������????????????
Щ�� 	 ��??
? 

	 ?�� ��???��??  ���ڐ��ڙ�?	�?	?���������ߞ�???????????����	 ��?   ? 	?
? ����? ��???��  ?ɩ??  ??����?	 ?����?		������ �ڙ����������?????????? 	  ��������	
 ?��ʟ��??????�������� ?��?		 ? ?��?	ٜ��?	 ������?��? ��?????????��
?
��
  ?
		
К???����??????????����  ?����?	������?	?	��? ��а�ɼ���?����???????????��? ?
					 ʐ
?��������????????????�� ?߻?		 ��?�魩����	��? ? ɩ�鼽����А��??????????��?	?		 ? ? ��?��?	��?����??????????��?? ��ۚ��?		 ����	����?	�� ������?������????????��? ?
 ?			�� ?	
? ��????????????��?  ?߹�ڐ�?	?����������?			  		�����۞���?????????��	 ? �� ?	 ??	��	 ��???????????�ߚ�? ?��?		  ��?	ə����М? ��?������?��????????? ? ?
?	? ?	 ?
?
��???????????����?  ?��	��Й?	
���ۙ?	��?	��������������?????????��	�    ? ��
?
��	
	?	???????????��а? ?������?	�������ٰ���ې	��?��?����	��?????????�� ?	 ?	�� �� 		?
	������?????????????��?  ����
?	��	��?��	��ۛː�ߞ�����������????????��?ʐ? ? 	?	? ?? ɬ?
 ��????????????��	? ?�ʚ�? �� �������ɽ���	ɜ������?��	�ɛ���????????����	 �� 	?	����?���А�????????????��?	 �۽��鰐?	?		ʛ	?	���۝�������?��🞭���????????��?	
�� �� ? ? 
 ?
����????????????��� ?�ڞ�������ɹ�����ۙ�˝	��ϭ����������???????���� ?	? ?
��		? ?? ��???????????????  ����?ڛ	����			��	�� �� 			�ߟ�ʝ������???????���� ? 	
	?
?  ? ??????????????��?  �ښ�٭	��		?	��������		  ?   		? Й �ڜ���?	??????�� ? ��	
	 �Кښ�����? ��??????????????? �ߝ����Л�	 ?	?	   ��
м��
��  ?��????????��? ?	 
? ��?
  ���� �??????????????�預ϼ���ɩ�ɐڙڛ?	�� ?		�ə�?	����?  ?	������?????����? ����? ? 	?	??	��?????????????��		 ���ۼ�?
?	��?  ?  		����?���齭	������????????	
? 
	?��?

  ?
��??????????????���� ������?	����?	 		������А?	鯟�??	ɹ��߭��?????��ڐ??  ? 
	М��
???????????????��?	�������й��鞐    ��?	��?���������������???????����������	?
  ??	��??????????????����	����������	
�������А�����?��	齞�����??????۰����?	?
�� ?	ɩ���Ξ�??????????????���М���������?��?	?	�К�?	  	М����鬹���������?????��ɩ��  �� 	�� ��	 ?	��ޞ??????????????����۞����	����������	?	��?		 �����ޝ��������ޟ?????˭ ?
��?	?	? 	𐐚
?��?
��????????????������?�������ڙ�?	?		?ڐ��?  �����ڝ���	������??????��??	
������ � ? К
??????????????����Ͻ��??��А? ������	 А? ��?��?	 ������?��??????	����? ?

?
��? �������????????????�۟���߽������?	����
����Й ?	��ܼ?��˜����?��????�� ?	?
? �� ? ?	 К ��?????????????��������˛��?��А?	 ?		?		 А? �м�����������?????��	?ʚ��?	  �	
? �???????????����ۛ߿����ߟ����	 � 	����?		?		
�ܽ���?	������?����?????�� ?	
?
��  
?	��?��???????????�ِٽ�?��?��������?	 ��?		 ��������	ʐй���Ϝ�?	????�����頰��
? ?
�� ����?????????????��?����?������ʐ	 ������		������Й?ͭ��������????ˠ��?	�� ?? ?
?	 �?
��???????????����???���������й�	��	�� 	 	��й��ې?	 ������??��????�� ������?	   ?	? ��	����?????????????		��??����??�ٹɩ�		 		?		��ڝ����?��?����?����????����	? 	? �����?	
?	�????????????��ې��??����۟�ٹ٩����� ��۟��?��߹		��??�ߞ���????�����𰰐���  ��
? ��ڞ???????????��?		??����������٩�����۝�������?��ڐ?�??������????�ʚ�		? 

 		? 	?	? ����????????????	����??��߿�����۽�		? 		���۝���?��?����?���ޞ�???��? ?
		? ? ���� ����???????????������???��?������	�ښ�����������???������??����???����?	? ?
? ��? ��������????????????����		???��?����ݻ����Н
	��н������?��������??��?��????? ˚��
��?
  	?

 	��???????????��ې	???�����ߛ����ɩ���	��������?��А۟��??������????𼐰  			? 		?	?
��???????????��?	???��?��������ٹ���Й�ۜ����??��?����?���޽�?????	?
ڞ?
 ?  ��
 ?	? ��??????????��	��??????��۟۟��ٽ�����˛�����������������?߿?��????���?	 	?
?	 ?
 �����ʞ�???????????��?	 ��?????��������٩������۝����??��������?��?ߟ��????������	
  	?��	 ? ���?????????����?	????��?��ۛ��?���ڞ����۟�����������???��????��? ?
�� ?	? 
 	
????????????�ٟ���?????������ݽ?���ڙ���ɟ����????��ޟ��?������????��?
?   
 ���� ��������??????????����?	 ?????۟�ۛ�ٹ�˛�������������?������??��?��????? ? �� ?
 а��?��??????????������	????����������ۙЛ	������ٻ��???������?��??????��?
? 	  �� 	
��	
����??????????����ِ��?????ۛٛ������������ٽ����?����߭��?��?��???𜰰?	?   ?  
��?
�� Э??????????��������?????������������		�����?߽��?	����?????	???��?	 ?

  �� ����? Щ��???????????��������?????��ۙ��ۙ��������������?����?����?��???��? А��  ?? ��������???????????	����ٹ????�۝��?	˙Н	ɐ������??����	����???����??����	

 ?
 ?  ��������??????????������????�������ٹ�������ٹ��??��	?
����? ����????? ��?    �� ����?����??????????��	����� ???����а��ڐ��	�ə�������ِ	�М�����???��?��??��? ��?  ?	 ?  ��?	 
������???????????	��ۛ��	 ?����й��			?	��? ������?߼��?	?	��ޟߟ?????�랞	?	��
    	 
����???????????�٭���? 	??����������?				ɟ����?�� ? ��������??��??????��	
 
 	   
��  ��?
	?��??????????����������??����˙?	?	
��  ?		������?				��������?��????����??  ? ?  ��? 	����?????????????	۟? ? ??����������?				���ɽ�?? ?    ������?����???���� �� ��   
 ?? ?	����??????????��ݽ��?������	??	?	 ?  ?	�������ېн�?
��?����?????���ڐ���� ?  ?	?	��ɭ????????????����  ? ???�۩� ?	?	?			? �����ߐ� 		   �ޜ���߰?????��	 ?
? ?	  ��   ����	��Я????????????����  ??����А	�� ? ���� ������?�ɠ���   ������??????���		?   ? ��? 
	������?????????????�� ? ????�а�	 	
?  ?  ?	 ��������  	   ��? ��?��??????�� �� ? ��   ?	? ��? ��?????????????	  	  ????��А 	    ޹ 	 ����?? ?	    ��	Ͼ��?????��ʐ�ڐ�
?      
�� ���?????????????     ??������	     ? 	 	
ɹ���ߜ� ?    	 	?? ??????��	  
 ? ?	 ?  
А? ��	��???????????? 	    ????���� ?      ?	 	������	�� 	     ������??????��?	??
    ��? ?����	?????????????    	��?��?�ٰ�	     ?  		��������	   	  ��?��?????��?  ?	 	 ?  ? ?	 	
��	?
?????????????     
?����𼽽  ?  ?  ?		������
? ? 	�����??????�ڜ���
 	  ? ��?ɬ	��???????????? 	 ?  ?��??				����?��	��������
��? ������?��?????��    ʐ ?  ��  ��? ?   ��?????????????    	 ???����������?	 ?		К��ߛ?			
	��?���޾�?????���
�� ?   ����
?
? �?		��????????????      ????? ��	?�� ��	 ?������?  ������? 	�� ?????�� ?
?  ? 	     		? 
?	 ϯ????????????    ?????? ? ?					 	 ?	��ٟ��?	��      	��? ?????߭?	 �� 
   ? ?  ��	 ??????????????  	 	 ???����	 ?        ����������	      
 	�� ?????����?  	 	
    ����?
�ʚ�?????????????      ??????         		?		����ɩ?	    ?��߰ ?????�ڐ�? ��
    
��?
 ��
К?��?????????????     	 ????��?	? ��  	��������������	 ��??? ?????��? 

    	   		?	? ����??????????????      ?????������
 �� ��������������������???��?????��?
		 ?		    	 ?  �ɩ���?????????????     ��????��??	?	��������������?����?????? ?????��?	? ?     ?
		 ������??????????????     ��???����ټ��������������������??????�� ?????��  ?  ?    ? 	 �� ?��??????????????     ��????������������������?����???????�� ???????  ? ? 	    ��			?  ��??????????????     	ʛ???ߟ��ݿ�����˛���������?��??????�� ?????�� 
�� 	
	     
 ɩ����??????????????    		��????�����۽���������??��?��???????��??????��?
��	
     ?  
�ښ� 	��?????????????     
?��?��������۟۟��ߟ������?����?????��? ????��? ��   	   ? 	 ��? ?	��?????????????? ?    ?	???��������������ߟ��������?��??????�� ?????ۜ?	 ��		  	   
?
 �� ? ��??????????????     	����??���������ߟ�����������?��???????�� ?????��ɠ ?  
 ?     ��? ���� ��?????????????    ?  ��?�������������۟����������߽���??????? ?????������
��    ?	  ���� ��??????????????     ?��??�ݿ�ߛ�ߛ�����?����������????????А?????�� ?  ��    ? ��  ?	? ��??????????????     ?	
��?������������������������������??????? ????�����? ?  ? ? ?	 	
? ?
?
��????????????��   	༼�����۽�ۛ��۟�����?������߽????????�� ??????
 ? ? ?       	
 
��? ��?????????????? 	   ?	��?����������������۽�������ۿ۽�??????? 
????��?		?? ? 	 ? ?��

??????????????   	 ���������۹����ۛ�����������������???????? ????��?	?	 	
        ?	 
	 	??????????????    ����?������۟������������߽���ۛ�????????? ��????  ?
	?     ?
  

��?????????????? ?   ��ߟ������������������������������???????  ��????? ��  
? ?	  ��?				 ???????????????? ?  ?����ߟ������ۙ����������������???????? ��??��?? ��?     ?  ? 

 ����??????????????? 	   �ߟ�����ۛ����߹����������?��??��??????�� ��????��  ?        �� 				 ???????????????    Ͽ��?����������ߟ��۽��ߟ������????????  ��????
 ?
 ?
?	   ?   ?
?
????????????????   	
��?߽����������������ٿ����??��??????ې  ��???��А 	 ?   	   	? ����? ��???????????????	?    ???��������������ٿ��߿������????????  ?????
 ʐ?
?       	? �� ?
 ��????????????????     ����?����������������������?����??????   ��??��? ��	
 ?   	   ? ?	? ��???????????????
    	����?�������۟���������߽������???????  ????��
	?
? ? ?     ?
 	��? �???????????????��?    ��?�����������߽�����?���۽���??????�  ��???��	�� ?         ?  	�� ��??????????????? ?    ������ߟ�������������ߟ�۽?��?߽??????   ????��?
? ��  ?	     �� 
	?��???????????????       ڟ����������۟���������߹�����?????    ��???��? ��       	  	? 		��?????????????????     	����?����?��������������߽?����???��   ?????����?	� ?     	 ?  �? ��????????????????	 ?   	ɭ�鞟���������������߿���������???   
Ͼ???��? ?   ?       ? ? ? �а�????????????????? ?     ?��۽��߿��������������ߟ��???��    ��????��ɠ

?    	 ? ? �� а
?????????????????  ?   ��?��߿��������ߟ��������������?��   ��????������  ?      ?  ��
����???????????????? ?      ���˜������۟������ݿ�����������?    ��?????�� ��  	?      	 ? 	
	?????????????????��       	
������������?��������������	     ��????������? ��    	 	?  ?
	?????????????????? ?	    	 		?	��ٽ����?��Ͻ�ۿ�����?      ��?????��?  ?	 	       	 
	??????????????????? ?     	 ������?н�𿰛�����К��	?      ��????��?�� 
    ?   	  	����??????????????????  ?          			
?ڞ? ��������	  		      ��??????����?��ɠ       
  ?	����??????????????????? ?	       ?	 ?
��?			���	? ?	  ?	       ��?????����   
   ?  	 	?	?	��	???????????????????        ?  ?  ? 		   	 ?  ?	   	          ??????��?	
? ? ?         	?	��???????????????????? ?       	  		 	   ? ?	 		 ?	 ?          ��??????��?
? 
		        ?    	 ?????��????????????? ?            	 ?	  ?                   ???????��?  ?	?        ?  ?
��?????????????????????         ?	                           ��????????а��
�� ��	  	  ?? ?	 ????????????????????? ?          	                           ��???????������	          ? ��??????????????????????                                      ??????????��
?   	?        �� 	 ???????????????????????                                     ??????????����?
? 
?   ?    	?	 ??????????????????????��?                                  ????????????��?	?	  ?        ?  
????????????????????????                                    ???????????�� ?          	   ?
???????????????????????                                  ????????????��   	  ?        �� ????????????????????????��                                 ????????????���� 
 ?	?    	   ? 
 ???????????????????????��                                ??????????????? ��? ? 
  	       ?
��????????????????????????                               ??????????????�� ��  ?	      ?  ? ??????????????????????????                              ??????????????��?    ?          	 ? ?
????????????????????????���                           ??????????????�ۜ��� 
Р    	   ? ? ��????????????????????????? ��                          ????????????????�?
?    	      ? 	 ��????????????????????????��
?	                        ????????????????��?   	  ?          	 ? ????????????????????????��? ?
?                     ????????????????��? 	 ��	          	
  ��????????????????????????�� ?
?      ?            ??????????????????��? ?   ?        	   ?  ????????????????????????��?
?	?  ?? ?        ????????????????????��?  ?  ?    ? 	  	 ?
????????????????????????�� �������˭?? ��    ��???????????????????��  ?  ?              ��????????????????????????��?	��ڛ��???????????????????????????��?	 
 
           	 	 
 ????????????????????????������???��?????????????????????????????��	   ?  ?        	      ��???????????????????????��?�����޽���?????????????????????????????�ޞ�	  	              	  ????????????????????????����? ?������?????????????????????????????����                     ��?????????????????????????	?	
������??????????????????????????����?                 	   ???????????????????????��	����???????????????????????????????������ 	  ?               
��???????????????????????��?������?????????????????????????????????��? ?                  ? ?????????????????????????		����????????????????��???????????????����?                      ???????????????????????��	 ࠭�???????????????��?????????��?��?��? 	?                  ?????????????????????????		������???????????????����?????????߼������?                       
߿??????????????????????��?���??????????????����????????��?��������                     ��???????????????????????��?
ښ	 	????????????????��?��?????���������
                      ????????????????????????? ?  �༯??????????????��?��???????��������?	                      ��????????????????????��? ���	????????????????��?	 ��????��������?	                       ��޿??????????????????��	? ?
?
ͯ??????????????����������??����˞��?                    	����??????????????��
??	?	ɫ?????????????������ �����������н��                       	��??����߿??��????����	�� ������?��????���ڞ�?	������?��?𼰐?                        ��	������������������?	
 ఠ��? �����ٞ�??	�� ?  
??	��٭��?	                         	     ?  ?	��	?
	? ����	?	 ��	�� ���������аам������	��                            ?	 	 ?	 ?  ?  ?	    ��������?	
 	 ?   ?         ? ? ? �� ?  
����?
?                                    	   ?   	 ? ��?��? ? ?   ? ? ?	 ?	 ?	 ?	 ?	 ?  ?	 ? ����?	                                                ?
?��??
?                         ?    	��?                                                  ? ?	 	 	                                  ����?                                                                                                               ?????????????????????????????????????????????????????????????????????????????????�߭�Ͻ�߭�Ͻ��?                v??','Steven Buchanan graduated from St. Andrews University, Scotland, with a BSC degree in 1976.  Upon joining the company as a sales representative in 1992, he spent 6 months in an orientation program at the Seattle office and then returned to his permanent post in London.  He was promoted to sales manager in March 1993.  Mr. Buchanan has completed the courses "Successful Telemarketing" and "International Sales Management."  He is fluent in French. ',2,'http://accweb/emmployees/buchanan.bmp');
INSERT INTO `Employees` VALUES (6,'Suyama','Michael','Sales Representative','Mr.',"7/2/1963 12:00:00 AM","10/17/1993 12:00:00 AM",'Coventry House
Miner Rd.','London',NULL,'EC2 7JR','UK','(71) 555-7773','428','/       ! ????Bitmap Image Paint.Picture         PBrush          T  BMT      v   (   ?   ?         �S  ?  ?                ?  ?   ?? ?   ? ? ??  ��? ???   ?  ?   ?? ?   ? ? ??  ??? ??????????????????????????????????????Ϛ����      ϛ???????????????????????????????????????????????????????????????????????????????����ޚ       ����???????????????????????????????????????????????????????????????????????????????����      
м�????????????????????????????????????????????????????????????????????????????????��?
      	?????????????????????????????????????????????????????????????????????????????????��??       ��??????????????????????????????????????????????????????????????????????????????????	��?        ?????????????????????????????????????????????????????????????????????????????????
         ��??????????????????????????????????????????????????????????????????????????????????��          ??????????????????????????????????????????????????????????????????????????????????            ????????????????????????????????????????????????????????????????????????????????????           ????????????????????????????????????????????????????????????????????????????????????           	????????????????????????????????????????????????????????????????????????????????????           ????????????????????????????????????????????????????????????????????????????????????           ????????????????????????????????????????????????????????????????????????????????????           ??????????????????????????????????????????????????????????????????????????????????????         ??????????????????????????????????????????????????????????????????????????????????????         ?????????????????????????????????????????????????????????????????????????????????????         ??????????????????????????????????????????????????????????????????????????????????????        ?????????????????????????????????????????????? ????????????????????????????????????????       ??????????????????????????????????????????????  ???????????????????????????????????????       ??????????????????????????????????????????????   ???????????????????????????????????????      ???????????????????????????????????????????????    ??????????????????????????????????????     ???????????????????????????????????????????????     ?????????????????????????????????????   ? ???????????????????????????????????????????????      ��???????????????????????????????????? ��п???????????????????????????????????????????????      ?

??????????????????????????????????	?????????????????????????????????????????????????     �� ?????????????????????????????????????????????????????????????????????????????????????      	��  ????????????????????????????????? ��???????????????????????????????????????????????      ��	 ? ??????????????????????????????��		  ??????????????????????????????????????????????      ����   ??????????????????????????????	��?	 ?????????????????????????????????????????????       ?	   ? ????????????????????????????𐰙	 ��????????????????????????????????????????????�      ��    ��???????????????????????????	����			 ??????????????????????????????????????????��	     ?	��    ��????????????????????????? ��	��?	 ? ????????????????????????????????????????��� ?   ����?   	????????????????????????�?	? 		 ? 	????????????????????????????????????????? ?	?      ��?
  ��???????????????????????	?		? 	 ��??????????????????????????????????????? 	 ?
      	�� 	����???????????????????����? ��	 ?		 ? ?????????????????????????????????????����?       
 ��
  	�		 ???????????????????	  	 ?	 
	��	????????????????????????????????????   �         	? ����? 	?????????????????����? ?    ?	 		 ?????????????????????????????????ఠ����?   
? 
 ?  	
��? ???????????????�?		?	
��	  ? 
? ???????????????????????????????
	 ?
�?    
    ?   ?	?   ��??????????????		����?		 ?	 ?? ��??????????????????????????????
����?	��
?    ?   ?   
 ˪?????????????	�?	??
	?��?  		 ????????????????????????????��?��? �����       ?    ��? ��  ??????????	��	������  ? ��������??????????????????????????��? ? ?
��? ?    ?   
   
?  �� ?????????�	��О	   ?	 ��?		?		????????????????????????𩠠 ��ڰ��
? ���      
	  	? ? ?
?????????�?���� ? ?	 М�� 	????????????????????????
��	 ��  ��  	
    ? 	?   ��	 ��   ??????	����? ? ����
	���ڛ���		??????????????????????	��?  
ں? ?
?
	? 	? 
?	    
 ��  ?
	��? ????�����	? ��? ?	 ?	��	��????????????????????
 ? ? ������?  ?        ��?	��    ��??  ????�����ښ� ? ? ?	 ����ʟ	��	???????????????????
? ��?? ����˩��?   ?	
 
 ?
?	
��?
 �� ?  ???���𰐐�?	 	 	���ڐ��������?????????????????   
??  
��
? 
?     ? ? ?  ?
 �� ?��ࠐ�  ��?????˞��������	 ��?	魐�		??????????????? 
?  	???  ? ?
��?       
    �� 	 

��ڐ??  ???���ٰ�	����?	�˚�������?	��????????????? 
   ? ??? ��? ��        ?  ? ?
 		�۩� ?	 
 ??��?�𚟚�������	��ɭ���К�?????????? 
 ? 
	  ??? ��?	��?   ?  
     �� 
��

��   ��  ??����	������?	�����������陯?????????  	  ?   ??  ?

����?
?  ?   ?	  
 ��    ?   ?    	??��	��	ۛ뙭�	��ۙ�ڐڙ�?	?????????? 
 
 
    ??? ?����?	��?
	? �� �� ��	 	?  ����? ??��а�к�ٞ����	�����������𙹹�???????? ?  
 ��
 ???  ?  ? ? ����? 	��     ����

  	 ��   	??����	������������ٛ?��?	
����ڙ??????? 
 
 ?    ????	?
 ?	�𠐐�
 ?    ?  ? �   ����? ?���� ��
��������л����������?��?????�  	  
    ??? ??	
 ? 

а��? ? 
 ? ����?  
��?  ? ��ۙ?
��	��а��ڛɼ? ?ɩ������?????? ��  ?  ��
??? ?

����?	��
	?	 ? ?	 ˰    ?  ?��	�����а�	����	��������𼰚ٹ?????   
    ? 	???  ?	 ��?   �ڼ�� ��?
 ����  
 ��? 	 ��?����	��		
?		��������	?	������???? ?
 ? ?   	
??? 
 ����?	?˞����?	?	  	�
	?
��?	��?
��		 ���	�?���ۙ�������???�� ?
 
 �� ? ??  ?	��?
�� ���������?
 ������ ��?	?	������
��Й��? ? ������?	? �𼝽�����??�?
      	 ???? 

 ?���?��? ?	��ڼ��
? 	?
?    �ۚ���������		 				����������?���??��?	�    ?  ?��  ��? ��
? ?
��  ? 
 
������ ? ?  
������?��?	
 	  ?		��ڝ��?��������?? ��?    ?    ??? ��	 ? ?	 ? 	?
? ��?��
 ����Р

 ?	��? ��?����? ����	��?	������������??


  ?     ??? 	 ��? ��? ?     
	   ��?	 ?��? 	�

������������			?	?	��?	����������?��?? ?	
 
  ? ? ???? � ����   ? ����    ۠?  ��𰰞?	 �˚���		ڰ۹���ٰۙ������𽩩���������??

       
  ?�� 
��ʚ��      	�� ?  ��?  
?
 ��?۹����ې�۞?	𹙹������		?	������??��
	  
    	???  ��?  �� ? ?  ����?  ��	? ? 	 ?��?����	ɐ������������	��������������۟? ?
   
 ?
   
???  ��? ����    ? ������
 ��?  ?
  ?�������ں�������������ɽ��?		�ښ����������?ʐ   ?  	??? 
 ����?  	    ����   	 �� ?	   ��?����ۛ��		��������������������	������? ������  ?
??? 
��? ��?      ??	?	
	       ?����?ڻ����	? ?	�۝���	?	?	����ٰ?	?	���ʐ� ��? ???
 ? ��  ? ? ?   ����    
       ?������?  ����?ɠ? �۰�?
��?����	�ۛଠ��?
  
   ??  ��? ?��    ? ?
��?  	     ?  ?�ڛ�����? ?  	
����?	����?		�����ɹ�?ː ��	?
��	 ?
	???  ??	? ?    ?  ��?? ?   �� 	  ����魰���?    ��?��ː������	����뚜�	������?
��  
    ??? ?��?��	
	   ������	    ?  ?   ??��������?     ?		�� ��	  ����������?����?

      
??  ��?	??   	 

����    ? ?    	??𞚚��		  ������  ����?  ?		����������?��?��?     	???  	��?��  
  ?	�� ��?  �� ?  
??��������?	?		 ��? ?     
��۰?�����ɰ�������	? 
  
??? 
����

?  ? ? ��
 ? ?
  ?     	?��?������������?	 ��?		   		��?����˚?����˭�� ?	  	??? 
	?
 �� ? 	 ? ������
?	 	  ? ?ۛ۹??	��	�ِ���		? ?
 	 ��������Л��ɩ����?��
    ???  ? ༠�  ?
 ��������?��
   ? ?���А?		��	����������� ?	����	��ٺ��������?   ??? 	?
?
 �	
 ? ?
��
? ?���� ��?ۛٹ?ɰ𞐹������۽��?	 ?		��?����������������? ��? ???   ? ����	?	  
		?
? ?		 ? ��
	 ?��������?	?
����������
?	 ��������К�����￿��   ?  ???? ��
?  ?   ?	?
? 	 ?   
 ? 
	
?����𐛚����?������ ��
��?������ټ����޿����ڠ    
	?? 
 
����
? 	����? ? 
  	��?		
 ��	���??	����ɫ������?������������������ɿ?��?	?
  ???? 	?
�� �� ?
?	 ?	 ��?  
 �� ��?���ə�������? ?ː?	��������������???���?  ?  ???  ? ? ? Ϛ? ��	?	 ��? ? 	 	�����𽩰𐼙�����?		�А�����?��?	ښ?ڼ��?��?	   ? ??? ?	 ��𚐟�� ��		
��	     
 
 
��ۚ������������?	��?	��?�ٟ���ɚ��?�����������鬬 ?   ?? 

Р�� 
�𞾝� ? �� �� ? 	 
��������?	?ٚ��?			й����	���障��ڼ����߾��??	?  ? ???  ?
������?�����? ��? ?     
	 ����������������? ?������ۛ���ٛ���������?���� 	  ???  ����	
 ����� ��	�� 	? ? 
 ��ښ۟�����ɐ�А		 ����?��������������۩����ښ� ��
  ???? ��
	��??	?  ?		 ��  ?  ��	��������ٛ���� ����
	?���ۙ�ٹ�а�ٹ��������Ͽ���? 	  ??? 
 ��	?
�𰰰�?	   ��	 ������

 ��������ٺ? ??  ?
 ��	������	?ۚ��?����魼���Р  ��???  
? ��?   
	
 ?	 	��?  
   ��ۼ?������ٛ��	  	�� 	 ?	��?	������ٹ�ٽ�����?����� ��  ??? 	?

?
? ?	 	 
	  
 	��	ڐ?	��?
	��������ۻ��??	 
		?  	 ����?ڙ�۩�����ڞ��������?  ? 
???
	 
����
	
		
   	
����
 ? 	 ?ￛ�����������������?  ��?	�����������۟���������
ښ ?
  ???   ������?      
	��	 ? ?
	? ��	���۟����ې�����?	����?	?��������?����?�𽩭�?	?
��??? ʚ?
 ?
? ?	 
	 ? ��	? ?		�� ����	�������됹����������ٹ
�ɹ�����鿝����������˭�� ?   ???  ��? ��
  	 
 ����? ?	?
? ? �ۛ���۟������?	?��ɰ��??	��������������?����������? ?  ???  ?	 ?
�	 ? 
	  ��?	?
	?	?ۚ���߿�������������ۙ����������������������?�������? ��	��??? 
 ��	

�� ��	
��?	��а�� �� 	������������	�ߟ���������	������������������ڛ����?
?
 
  ??? 	�� ��?
𰩐��    ��?	?	�� ������������?��������������������������ۼ����������?�� ? 
	??? 

 ��?
��	��	��? ��?	����? ��		���������ۛ���������?����	ڛ��������������������?	�Р�?
	???  ��
	�𹩰��  

��
��?	?		����������?��������������ۛ�������ۿ�����������˻���?	? ��???? 
���� ?����?			
?	
����?

	��?����۽��?��ۿ�����������ڿ������߿�������˫�Л����� ��  ??? 	?
��������?	 
 
	 ������		
���ۿ�����?�����۹�������ۛ��������?����������������ک ? ��??? 

 ���ˠ�	����?	
������������������������?����??����������?�����������������˰�?  ? 
???  ���� ��  �� 	
?���� ������۰��黟�?����?���������������߽�������??������  ?  ???  ��?
�� � ?      
 	 ?
������������������������??���۽�������?������?������?��? ?   ???? ��?	
??	 	   	  ?	? ��������ۿ�������٩�����߿����۽��۟�߽���ۿ�����˚������?	   
???  
	����?   	 	
	����
������?	������۟������?��??������������?�߽���������������
    ??�� ?	?
����?   ? ?	
 ?	���� ������������	�𰹽���?����������ڟ���߻�ߛ��ٻڙ����ɛ?   ? ??? 
��	? ��
 ��	  ���� ? ����	?	������������	�驟��߿������𼹹���������������	 ���?  ? ��??? �������?	? 	? ��	?
? ���� �������ۻ�	?	?	����������������˚������������韟�?	�� �� ?
??? 
����а ��? ?   ���� ����?	����������			����?���������۟������۹���?��	����? ��???  ��
����?
�� ?	  ��? �� ����������  �������������۰���?А���������������ɰ� ���? 
????  ��	��?
	
��
  ? ?
? 
����		��������	?    ������?�����ې�??	����ۿ���鿼��?	
��? ����???? ��

���� ��?		
  ?	    	 ? ?	����?    
   ? 	��������?		?	����ۿۻ������ ?	 ���� 	 ��???  ����
���� ?	?   
	?     ?
��������?   ?     ����?������?  
���˽�����������	 ?	��� 
 ��??? 
����? ��?	? 	           			۟??	         	�ڛ�����   ������������������?	 		���� ?  ??? 	?�?
? �� ?            ?    ?����?        ?	��۟	��  ?    ?������������  ����?    	??? ��?  ? �   
          
?    ����ې��?     		��٭���� ?    	  ��	����������?		���?   
??? 	�������� 
�� ?               ������	��	 ? 	����	?��          ���뿿������������?  	? ???  �� 	 ? ?	     	         
     ��?����? ?
	�����Й���		         ������۽�˚�������
��    ??? ��?

 �� 	
 ?           	     ����?	?	?	? ��		����		 ��	       ?	�۹���۽������?	??     ??? ? ?��	? ? 	                  ��?	���ڐ�  ? ��? 	?	��? ������?	���ۛۿ���������鬐�   ???  ? ? ��� 	  ?                ������		��?			�ڐ�����
��?		����������??	?	?     ???  ?
��  ?                   	?	 	��?	
 		 ��	����?	 				?��?	��鼛�����
А�� ����? 
  ??? ?
�� ��? 	 
                  ��        ��	? ��?����? ����		��?�ۿ���	����	?		��?  
???   𬰠���? 	             ?    	��         	����	��	?	 ��			���?��۝��? ?
?  ��	?  ? ??? 
	������?  	  ��          ?     ��?         ������Л	
	
�����������鿺���� ?	? ��?	?
 ???? 	����?? ?
  ?                 ��?         й˛����а?	 ��?�魙������?     ��? ?  ?  ??? ?

 �?  ?	            ?      ��?        		���П�?	?	 ?
���𐚐��ٻ�ۚ?     	����?  ????  �����?         	    
       ��?     	 ����������? ?	 			������       	  ? ?   ??? ��
? ?
��?
��?   	             ��?	    ?	����ٽ�?��     	 ?    ������         ����    ???  ����
��?	       	               ���ښ���������ڛ����?           	������        	��?   ? ??? 

 �� ?
?
 ?	 	                 	����������۩�������           ����?	         
ɫ?    ???  ����? ��?  ?	��	
  
?
 ?	       ���ڞ�������ۭ��������        ������?          ��     ??? �頠
?
? �� ? ?  ?    ? 
       	����������������۟�ڛ�? ?	     ������?          ����    ???  
 ��?��
   ��?
  	  	 ?        ��?������?���߻˽���۟   ? ������?           ��?  
  ???  ? ? ?
? 
��
   ? ?	  ?	       ������������������?����?	�� 	�����?           	?    	???? ? ���ڐ��?		 		 
	   ?  
       	?	��ڿ����������������������?����?            
ڞ	?    ??? ��
?
 ��?
 ? ?
   	
  ?	        �����������������˞�������������ڹ��             ��     ??? 
 ?��
 ? ? ? 			 
 	               ������?�����۹�������������������             ���    ???  ?	������? 	 ��?
	 ?
?              	������?���ۻ۹����������ڟ�˚?            
    ???? ��
  ? ��?  		   �� 
  ?            	�����ɩ�����ɩ۟��������������	             ��? 
   ??? 	 ����?
?		 ��? 	    ?                 	������?	�������������ۛ�˰��            

?    ??? �� 	 	��  ?   ?
	����	 	              	��		
	 ��?ɛ�����ڹ���˹��ڐ            ��
а    ????  ?

 
?
?  �� 		?
           ?   ��?   ���ڐ�ٹ��?���������۩�              ��    ??? ��?	? �� ? ?  ? 
 ��?              �� 	?     		�٫�ٰ������������ې             ��
?     ????   ??�� �� ��			 ��?  ?           ?       	 �����۹��ۛ�����������?            ?��    ??? ��
 
   ?	 	  	? 
 

 
	 ?          	 ��   ?   ��?	˙��ڽ�������?              ��     ??? 	��
��? ? ? ������	            	
	        ?������?��۹����ۚ��            ?
��?   ????
 ����?	   ?      
	��            ��       ?	���?	����ۻۛ����		?             ��ښ?  ? ????  ?	? �� ?
 ?
 ������?
? ?            	    ? ? ? ��??�۽�������? ?             ?	� 	��??? ��?ʠ?
?		  ��    ??
?             ? ���� 	  	��ٹ�����˟�����?	               �ʞ���? ???? �����
��?
	? ��?		
	  ?          	
 ?       
�ښ����˟����랛��               ����ʐ�???  
��
�����?  ?  	

	  ?            	 ?  ��   ��	����齺���ٽ�鹭��              ������????
������? ��	 ?	? 		
��  ?           			? ?  	��������𿟿������               ��
����ʜ?�� 	?������?  ?		 
 ?    ? ?               		?   ?			������۹������	               ����ڟ???? 
����??𠩩 ?
?	 ?
�� ? ?            ? ? 	     ?	��������?��?	                 ��������??? ��������	? ? ����? ��? ?               		
?    	 ������������ ��                
������???? ��?����?	? ?	   ��                   ?        
	���������?                 ����?��???? ��?������   ?	   ? ? ? ?	 ?                         	
	������?                 ������??? ��??�� ?     ?	 ?	  ?                            ?		? ��?
                   ?	�����??? 
������? ?  ��      ?                                ����	?	                   ? ����???? ��?????   ��      		   	                                                        ��?
��????	����������	�� 		? ?                                                             ?	����
???? 뮞�������?	����𰿐��?
��                                                       � ��????  ��������?����������??��??                                                       ������?
???  
��������??��????����????                                                     
��
��ސ????
���??????��?????��?????                                                      ��????  
���ڭ�???����??????????                                                     �� ??��??? 	�ʞ�����?����??����?��?                                                     ����޾��??? 

�������? �����驩����                                                     
	������???? ����?�� ?  ?	? ��?	��?                                                     ���˭��???  ��������?   
?        
?                                                        ����ν��??��	���˭��? ? 
 	 ? 	?			��
	                                                     ��?��?
ʿ??? 
������?? ? ? 	 ?
	?	
 ?  ?                                                     ?�ੰ��????? �������� 
 	 ?	      ��                                                      	������
��???  �����?𐐐	  	      ?
 ? 
                                                   ?
�а�𼿟??? 
����?��? 
  
   	 ? 
			 ��                                                  ����

?
��???  ����?�� ?  ? 
  	 ? ?                                                    ?	?����ˬ��????	��������?  ?   ?  
    			 
                                                  	? ? ��?	??�� �������� ?     	    ?
 ?	                                                   ��	�� �� ???? 
˟�۟�˞?  ?	
    ?	 ? 			? ?                                                 ?	��
ʐ��? ??? 	�ବ����?	 	?  	
   ?   
��?
                                                ����
	 
��? ��??�� �����ښ�?
	   �� ��   ?	  ?  ?                                              	? 	
 ?
?	
 ??? 
������� ? 	      ?	 
  ���� ��                                            ��? 	 ?  ? ��??  ?	?
��?� 	?
 ?	 �� ? ��? 	   ��                                             ��
?   ?  ��??? 
?
��? ?	? ?  ?
      ?	  ��?                                           
 ��
? �� 
 ��???? ��������?  		 ?  ? �� ? ��    ??                                         ��? ?   ?	  ? ??? ��?
? ? ���� 	  	  
? 	? 	 ��??                                        	?

? ?
   ? 

��?? 
	�??��魐�?�����ɭ�??��???                                     ? ?	����
���� 
  ??? 	 ? ��ୠ�����������?��?������??��                                 
   
�� ��?��?	
?
��???��?��
��???����?����??��������??��?    ?                          
   	頰�?�鮚	����ʟ???  ?
 �༭????��?????????����????��                            
?    ��
��������
ڐ물�???  ����?ʚ��?????��??????��?��???
��                          
��?	
������ڞ��
������??? ?
���?��?��??????????��?��????��?                           ��?	?
?�ϯ�?����?
�Ϟ�???? ʞ����
???��???��????????����??��?                          ������ ���ڞ�����
��?????  �˩��˭�?????????????��?��???����                         ?

����ﾼ�������
������??? ?�޾���???��?????????????����????                       ���ྭ�������ک���������???  ��齮��???????????????????��??? ����                       ����
?	����������������???? ��?����??��???????????����???������                    �����龞��������ښ    ����????  ��������??????߿???????��?����???���??                   ����������������������ʚ��???? �ʟ�?��?����????��???����??��?߿����                 ?
������������������?
?����ڿ???  �����Ʞ????��??��??????????��??������ﾾ�?  ?        
?	?
������������������? ?	����??? ����?��??��ߟ??????����?��???��������?���� ? ?	? ��
?

��?������ڟ�믭�?������??? ��ښ��? ?????��??????��???????������������??	 ��	����ɬ ��������?�������������랟�??? 
�� ��??����????????????��??���������������?
��? ? ?	�� ������������������������????  ��
����????��??????????��????	?޿��?������������	?  ? �������?��������߼??? ?���????����????????????��??������������ۭ��������
 
  𰼯������������??��齾�???? ������?????��????????????��??��Ͻ��ﾾ���������?���	
? 
 ?
��?
�?��?������???? ��������???��??????????��??��???���������߭�˼����???
 ?
��
����?�������ɩ����???? 
?����?????��???????????��??������������ڼ����ϼ��𰐰������
	
 ������?
?�޿�???? ��������??????��??????????????������������ڽ龛�޿����ɩ??	 	��

˩��??���??? 
������???������??????��??��??��?��������޻��������𼰚��������చ ���ښЩ��������????
��������????����?????????????�����߾�??���ޚ�����?��?��?
�� ? ��? ? ? ?
����???? ��������????������?????��???��??����?������?
ڼ�������𼰼�?	�����?
?
�� ���?
? ��???  ������????����??��?????????�����?����?�˽����������ڼ�ڞ����?
��	  	���� ???? 
��������??����ߞ????����?????����??����??��ˮ������? ��������ʞ������

    
 ??? ��
ڼ��?????����?????????��??����????????��	������ښ���?��?�魭??
��?
	 	
 
??? 	�魯��???��??��?????��????��??���������޼?�������ڞ��頚������������𼽠�� ? 
 	 ��??? 


ʚ����???������??????????��??��????�???��?
��˼����???����ʞ������
 ? ??? ��������???????????????????????? ???????????????????�� ��𼼰��𼿭���驠        ???  ?
 ?



                ԭ?','Michael is a graduate of Sussex University (MA, economics, 1983) and the University of California at Los Angeles (MBA, marketing, 1986).  He has also taken the courses "Multi-Cultural Selling" and "Time Management for the Sales Professional."  He is fluent in Japanese and can read and write French, Portuguese, and Spanish. ',5,'http://accweb/emmployees/davolio.bmp');
INSERT INTO `Employees` VALUES (7,'King','Robert','Sales Representative','Mr.',"5/29/1960 12:00:00 AM","1/2/1994 12:00:00 AM",'Edgeham Hollow
Winchester Way','London',NULL,'RG1 9SP','UK','(71) 555-5598','465','/       ! ????Bitmap Image Paint.Picture         PBrush          T  BMT      v   (   ?   ?         �S  ?  ?                ?  ?   ?? ?   ? ? ??  ��? ???   ?  ?   ?? ?   ? ? ??  ??? ��ͬ������?��?����������?���������� 
��?Ο��������?  ��?��?�����??̬����������������?����������������?��������������?  ����������ϟ����?  ��ܬ����쬭���?��?������ެ������ܭ������������������������������??��������������?��? ��������������?������������?����̯������Ξ���Ξ�����?��������?����?  ����������	����?��?�������������������������������������������������??����?������?���?�Ξ�������޹��� ����������?���μΞ��ެ���������������������������������?��������??  ��������ߜ�������? ̬?��̬�������έ�ΞΞ��������������������������?����?��������?��������? ��޼���������?	����? �� �̭�ޭ������������������Ϯ���?������������?�������ܮ�������??����߯��������?
�������� ����?��������������������������?��?������������������������������?��?������������А����? ��������?�����ά�������������??��������������������???������?����??������	����??��? ����������?��Μ������������? �������ʜ�����������������??��������??���ͼ�����?		����?��?��������������Ϯ��������?? ?��������??������?����������?��??���О������ޟ�����?	��? ��?�ά�����?��������������������������?��������?����?������?������������������?	?������?�������������̬�����?? ?��������������������������������??��������?	�? ���� ���������������쬬�����?����������������������?��?��?����?���Ｍ?��ߞ?����?	 ?������Ξ?�ά���?����������? ��������Ξ������������?��������?������������������?? ? ?��?������̬??������?��?   ?���������?������?��������������?�ʜ�?��?����?�� ����������??��������������?��
  ����?����?�������??��������?��������?�����������?	? ������������??��������     ?����������������������������?����������޼��?����?
?	 μ����?����������?�����     ?������������?��������?����������?		�޽�������������	  ����?�ά�???����������?
 ?    ���������������?����?����������������������ޞ����Н ?	  �����������������?������ ?    ��?����������?�������??��?��?���� �����������������ڐ�? ����?����?������������

     ��??��������������������?����������������??߾ߞ��	��	?    ��������?�����̬���������   
    
�� ��Ϯ����?��?����?������??������������߽�����ޝ�����  μ��?��������������ɠ�� 
 ?
��
 ?������������ެ��?�������������?����������ͭ??	  ����?��������������ʠ? 
   
 ��?  ����������������������?������?����???��ߟϟ����?     ����?�̬���������?Ω��?   
 ?
�  ��?����?����?����?��?��?����???߽�Ͻ����ݭ�	? ?  ��έ����ޞ������? ?      ��? ? ?��������������?����������?	��?����???߿��?����
��? 
��?��?����̼���?

 ?       ���� ? 
?��������������������?��??��??????߭��������?	   �������������Ξ�����?	 ?
      ? ��  ? �����������������?��?��������???��?������й��??   ��������ͬ��?�����? 
	 ?

 ��  �� ?   ?��?����???�������������??��?????����������?	 ? ����������?������

?  
	?       ��?
    ?������������?������������???????�����韞����  ������?��?������  
? 


 
 �
	     ����?������??��?��?��?��??????�����������   ��������?��������� � ?   ?  ?  ? 	      ��������?��??��?��? ������???????�������Кн���  ������������? 
���࠰?    �� 	        ?����??��???������??????????�����������?	   ?������?����?  ?  ?

  ?
 
    	?          ?��?����?�������� ��޽?????????���������ͽ���  ������������       ? ��? 
     ��          
??����??��??���ߜ���???????�����?	?����	?  ����?����?          
? 
?    ?           ��??����?����������???????????���������?����  ���������   

      ��  ��
    ?            ?��???��??�ڐ�????????????������?��?��   ?������?    ?         ?
 	? 
 ��             ??��??��?��������?????????��?�����𜝬���?  
??����?    

 
    
 ?
	
?     ?      ��?     ��???����?����??????????????����?ɛ���� �����̬���    	
        ?
?�� ? ?     ?        ��????��? ��???????????????	?���霞����?   ������?       ?   ?   

  
  ��  � ����        ????��?��?????????????��?������ɭ���  ����?      ? ��       
  
 ?   ��   
 ?       
  ?��??��? ????????????????������м���	? ��ά�?       

? ?     
 ��      ?   
 ?           ???��?����???????????????�����ڐ����ɐ��� �ޞ�          ��  
 
    
  ?  ��         ?   
  ��??��?????????????????������?		��?		 
�Π�         ��  

 
   
 ?	
    ?  


    ? ? 

  ???��?????????????????�ߟ����К��٭���? ��             
          
	    ?     

        ? ??��??�˚�??????????????������??	 ?��? ���� ?  
     ��?  ��?
    
 ?
   ��         ?   
  ?��?��??????????????�������ɼ�������	 ��  ?  

             
         ��     ?    
  
 ? 	��???????????????????������靹���٠���� ?����   
   ?
 
 

          ? ��       
      �� ??����???????????????��������ޟ���ɞ�
?
�� �ɬ�?
           
        

?       ?  
    ? ???����????????????��ߟ��?�������	�� ??
����      ?      
        
 ??        
     
 ��	????????????????�?߿?����?��������?
 ? ?	����    
      
 ? 
    ��        ? ��    ʜ��??��?????????��???��������??����? ?     	?     
              
  
 ?         ��   ? ����??��???????????��?����?��������?��???       
  
           
 ?
  ?  ?   ?      
   �� ?  ?��???????????�߽�??��???��?���۟�	��?  ? 
? 
 ? ?   ?  
 
 ?
      �� ? ?      

  ? ��? ?��????????????????????���������?    �鬰 
 ?    ? 
       
 
  ??         
?  ��
   ? ???????????��?��????????߿??����? 
  
��
 ?
 ?
 ?     ? ?

     ?  
      
 ?
    ��  ��??????????��???????????����?����ۙ?  
  
ʚ     ?
  
  
  
    
   ?��        ��
 ?      	?? ???????????????????????��?������ڐ?
    
��
 ? ?  ?  
  
  ?      ��     
    
 ��?    ? ��?????????��??????????????����??��?  
  ?    ? �� ?
 
 ?         ?  ?     
           ? ��???????????????????????��?������? ��?
  ?  ? ?
  ? ?  
 
        ?
    ��?     ��?   ?  ??????????????????????????����������?	?   ? ? 

ʚ
 



 
  
         ?   ��?         ?
 ?��??????????????????????��?��?��ۙ��	 

 ?    ? ?    
  
   
  
   ��?  
? 

    ? ? 	 
 ?????????????????????????����������	��
  
?

 ? 
  ��?
    
 ?       ? ?
   ? ?    
     ?
  ����?????????????????????�������˛�ٽ��? 
      ����   ? ?      
    ?
��  ? ?       ?	 ?    ��??????????????????????��ߞ����ɹ���ڜ�?
 


 ?     ��?   
      ?    ? 
��? ?
            ?
???????????????????????������?�ܹн�?	М    ? 
 ��?  
  
 ?    ? ?   ?  ?    
?     ?    
    ��???????????????????????����	а�޽���𰠰?  

    
 ?        
  ?    ?   ?  
 ��     
         ??????????????????????������ۙ�йڽ�����  
      ?      ��       ?   ? 
  ?   ?	   �  ?  
   
??????????????????????����?��?�����?
    ��          
     ��    � 
   ��?
  ? 
 ?     	????????????????????����������П	�?	 ?                
?   ?   ?
  ? 
 ? ?

 
ΐ ����?


��  ????????????????????��?��ߝ�˙�������

 ?  ?
         �          ?    ?   ��?  ? �� ?   
?????????????????????������ː���ϐ��   ��    ?    
   
  ?


   ?      ��? ?
   ? ? ��? ��???????????????????�������А�۞��?	

 ?  ��        
?  ?    
  ?       



 ?   �� ��	 ? 
?????????????????������?����М�˟?	��   ��  ?  ?            
   ?  ?      ? ?      �� ? ?	??????????????????ۙ???�����		齭���?

   ��       
 ��   ? ?
 �� 
  
  

 ? ��   
?  ? ��?????????????��??��??????�ߟ� �������   ?
     
       ?
  
��  ?    ��  


    
 
 �� ��??????????????????��??????�랙  ����?��   ? ?  ?   
 ��?     
 ? ?
  ��?  
   ��?   �� ����????????????����ߝ��???�ۛ���   ����?	  
  ?          ?   ��  �ڐ�?    ��
  ��?   
 


 
��?
?????????????������?����?	 ��  ��??

 
 
  ?
 ��  
?
     ��? ��       ��  ������     �� ??????????????��??	�?��������			 ����А?   
 
      

 
 ?    
 
ɠ?  ? 

   ?

 
  
    ?	 ?????????????�ߐ���������ۜ?АК? ����?
 ? 
   ? ����  ��? ?   ?
 ����
  ?     
  �� 
    
  ?????????????����  ������������ۛ��ٜ����?   ? ? ? ?  ? 
 ? ��    �� ?    ?
 ?	� 
?	
  ? ?
?????????????�ۙ�����???������ɭ����ٰ��
         

 

 
 ��
 ?   �ΰ�  ? ??
 �� 
   ?  ??????????????����??????������۟�۝�������  ?       ? 
    
��? ?  ��
��  ? ��? ? ?
  
 ?
????????????����??????��?������ܰ��ː���� ?         
      
?	��   ?��
? ?
? �� 

	?  
 ?	 ??????????????��???????���ٰ�際�������  
   
     ��
      ��
   ޠ 
��   
  ? ?  ?�� � ��????????????��???????��������	��ۛ�ٰ�?  
	     ?    

 ?
	?	
  ?   
�� ��     

? 	?��  ??????????????��????????���ۜ� ��	��?���   
 ��           
 �   ? ? ?	?  ��    
	��

��? ��???????????��???????����?��	��?��?	? 
 ��?  
? 

 ?
   ?     ? ?	 ?   ?
	?   ��
  ?  ?????????????????߽������?	?			������	     ��
 
?	  
 	   ��
  ��?  ��  
ɠ ?    ? ��� ?????????????����?��?�ٹ�?��ۜ?�������а�?

 
? 
  ��?��	 ?   ��    ? 	
 ? ����  ��� ??????????????����?����??������ɐ������?  ? 
  ��

 ? 
	 
   
 ��?  
ڐ 
 ??  	 �?
��?????????????��ߟ����?????����ټ��	韛���٩?   

  ?  ࠠ�
?��


��  �� ?    ��?



?	  ����??????????????��������???????��ٿ�۝���ޝ��   ��  ?   ? ��? 	��  ��? 
?��  ?   ?	��?  
۝??????????????����???????�߽���?���ٽ�ܽ? ? 
   ? 
 
 

? ��?  
�� ��?
?	
��?
 ?

   ? ��?????????????????����????????���ۿ��ϟ޿�ޛ? ? 
  �� ?  �� ��?  ? 
��

? ? ?
����? ?  ��????????????????????������??????�������˛ݰ���?  ? ��   ��  
�? ?  
?  ?  
?

�� ?  ?????????????????????����???????������������ߟڟ    ? ��?   
  ��      ���� ?
  ? 	魭頬��? ???????????????????????߽????????�������۟ޟ���?   
    
 ?	  
���     ?   
 

?   �� 
? ????????????????????????��???????�������������?   
 



   ?
  ��? ?  ?
? ?
������ ��?  ��
???????????????????????????????�߽�?���ߟ�����Р   ?         
  ��? ? ��   ��? ? 	  
 ����?????????????????????????��????????��?	������������

 ?
  	 ?	 ?
? �� 
    ������
 �� ?
   ��???????????????????????????????????����������������?
 
 �� ?

 ����?   ��?   �� 	 �� ? 

��????????????????????????????????�ڞ��ۜ�������	�� ?
   ��?	 ? 
	? ? 
  𩠠? ?  

 ? 
 ����??��?????????????????????????????�������������	? 
 �� 
 ��
  ?
   ?  ��   
?	      
  ?  
???��????????????????????��??????��	��?�����ڐ 
 ?  ?	  ����?  
    ?
��?
 
  ?     
 

  ???��????????????????����?��??????��������?	������? ?
?	


          
 ?	   ��?          
	?����???????????????????��??????????��?			����ټ?  	ࠠ� 	 ��       
  
�  ??      

 
 ?����???????????????�߹���??????��ٰ?�м�����ɩ��   ڰ����?
        ��?	?  ���� ?     
  ?��?????????????????��������??????����?	����������?
 
 ����?     
  ?   ?        ? 
      ??��??????????????�۝�?	?����????�� ?	���К��	? �� 
 ? ����        ? �� ?   ?
  
   �� 
 ?����?��	????????????����ɹ	��?????��������	���Ϭ?   ����  ?   ?      ?
       
     ��??��?��???????????��۟�Й���??��	���������	?

 
       ?    
      
	
   


 
   �� ��??����?ߛ	?????????????����?	��????��	��鐐� 		 О?  
   ?
 ?  �� 
  


 ? ��       ?   ? 


?����	 ?????????????����?	��???��? 
?    ?  ��		��  ?     ?  
   
     ��    ���� ?
  ?   ??������?????????????��������???��	       ?		?      ��         
  


  ? ?     

 ?   ?
��?????��
???????��??�����А���????��?   ?  ��?   
 

    
 ? 
 ?  
   
 ?      �� ? ��   ��???����???????����? ?    ?		???��	 ��   		?		?   
  

   ?
    ? ��?  ?     ? 
       ???��� 	 ??????������	    		��???��? 	?	��?	 ����   ��     
 ?       
  ?      
   ��     ��??��?		 ???????������? ����Ͽ???��		 	��	 ��?	?     

  



 �� 
 �� 
         


      
ߟ��	 ?  ????????����??��?			��߿??��	 				��		?   
 ?     ?    
    ? 
?                 ��?ِ ?   ?????????�����߹�		���ߟ�ې? ��?	������	    ? ? 
  ?  
     ��

 ?        
        ���? 	  	?????????��?	ɐ	����������? 			����?	 ?   
  ?  ?


 

 
     ��                 ����?	?  ��??????????��������?	��?�??   		�� ?      
   ?        


          
          齜���?   ?????????������ڙ��?��?������      	  ?     
 ? ����
       
 ��                 ߞ��ߞ?   	???????��?���ڐ� 	����??��??        ?               


 ?

 ��?  ?          
   ��߿? 	   ????????߭����	 		����߽������?     		?       




            ?                 ���� ?    ????????��ڝ	 ?	   ����?�߿�����	?  ? ��        ?     ? 

 

 ����       
          ����?    	?????????	 ?	��???����߽?��������?
?           ?  ��    
   ? ?    ?             	       	??????????ߟ�۽���ߟ��?����???��ɩ ? ?         
 ? ?  


 
 

 ?  �� ?       ?               ???????????????????��???����������? ��?           ? ��   
 ?   ?
   
  ��      	         	   ?????????????????????��?��??�ۜ���?	            
  
  ��?   �� ? 
  ? ?     
               ��??????????????????????????����?	?	 �� ?           

  ?     ?  ��
 ��       ?                  ??????????????????????��????��	𐐐? ? ?         
 	�� ��?   ?  ?    ��

    ?   	            	��???????????????????????��??��?	��	 	            
  
    ?     ? ?

       ?                 ��????????????????????߿?��??������? 	 ?           ?

 


  
    ?     ?  

       	            ????????????????????????������? 		 ?              ?  
      
  ��? ��  ?                 ��????????????????????????��	?	?	Й ��            
 ��
 ? 
  
 �� ?      ��                  ��
??????????????????????��?�� �К�? 	 ?              
 ? ?  ?   
    
    ��?    	           ��?????????????????????����?�ې���			            ��
 
 
  ?   �� 


  
 

	   	 	    ?     ?		ڝ?????????????????????����ۜ? ِ��                  ?
  ?  

��     
 
  
	 ? 	   ?        ����??????????????????????��?����ڙ��  ��             ?


     ?  
?
       

 ?     ��        		��??????????????????????��?��? ���� 	            ?   
 ?
   
 ? 


 ?
         ?         ?	 ����???????????????????��???��🜹	?			              ? 

?   ? ?  ?        

  ?        ?    ��	��????????????????????����������               ?  �� 
	�  ?
?       
 	 	      	    	   	 ����???????????????????????	�ڜ���	��?            	
 ?��	?   
     

 ?
 ?    ?	         	?��????????????????????�����н���	��               ��  ����
   ? 
 ?   
 ?
 ?  	        ?  К��??????????????????????�ߜ�������		              ������ 

? 

 ?     ?
 
	�� ?   ? ?        ? ��????????????????????����?��ۛ��?               ����?
? ?   ? 
?
      ? 
?   ? ?         ?			��???????????????????????��?		?	 ��             ���బ��  �� 
 ? 


 
    ��  	         ?   ???????????????????????������������                ����  ?  
   ?         ��    		           	 ��?????????????????????��ߟ����	��?              ����?


 

	
	
 

                  	      	 ��?????????????????????����?����   	             ����
 ?    ��
 ?  
 
      ?      	     ?		   ???????????????????????����	? ?	              ��    ?
?	?
�� ��         
      	           ����????????????????????��������	?	 	              Κ ��?
?  ��? ?   
   
       	         ? ?  ��???????????????????��??��?	��	 	   	          	��
   ?

��?ښ
? ?	
   
 
           	   ?  ��?????????????????????��߯? ?	               
	��?
 �� 
?
 ��   ? 
          ?          	  ?????????????????????��ٙ	?		 ?     	        ��  
 ?  ��	��
?  ? ?      ?	   	       ?   	 ��???????????????????��?���?     	 ?  	      ?
�� ?

 
�� ? ��   ?
    
  
  				         	?????????????????????����?	 ? 	 ?          	 ��
 ��   ? �頠 ? 
��
 
 ?
  ?   ��? ��    	
��??????????????????��?�������� ?              ���� ? ?
	?
��  ? ? 
? 
?

?     		 ��       ����??????????????????����?	?	  ?    ?	        ��  ��	? 	? ���頰  ? ��?  �� 	               ��?????????????????��������	 ��    ?   ?         ?  	?	???  �?�� ? ��      ��  	      ?	???????????????????��ِ��?	  		 	��        	

  
?
��
ˠ 
    ?        ��?  	       ��???????????????����?	?	 �� ?     ��          
  ? ?? ?
��
? 
?
    ?
? 	  ?           ����???????????????������ 	  ?		 		 ��      ��


 ��? ?
?  ?
? ?
?  
 
   		   			        ?  ��????????????������? 		 	    	  ? ?	 ?     
 ��? ? ��Э��
 � ?

 ?    ?       	         	 ����???????��������	Й  	   ��?      	     ����?	��ʬ��? ?     ?   
	��	             ��ɼ??????????������٩ 	   		    	 ?	  ?   ����
����? ����	 ?   ?  ? ?  		?   	?	       ?��?����??������??	��	      	         	  ?	

����?? ?
ʮ�ࠚ  ?    ?    ��� ?              ?	��������?����	��?		 ?    	    ?		    ?   ? ஺����఩����?
��          
  	? ? ?	       	 ��?ЭК���˜�	�� ?  	                     ?		?��?�� ? ��?
?
?      ?  
?

����  	           ? ��	��	 ?	 ?  	 ?	 	 ?  ?      ? 	    	  
?	������� ?̬����?           ?  		? ? ?    	    ?		  �� ?		 ?	 	                ? 	      		��������?
 ��� �      
  
  �� ��?	              	  	 	     	                ? 	? ?   ? ������������ ����ɠ��?         ��?  ��	��	          ?	 	 ?	  ��	                    ?		�� ??��?����? ��
��? ?                ��? ? 	                 ?                      ? ?  �� ���� ������? ୬�?����        ��
 ?
��?	? 	          	 ? ?       	             	 ?	?  ?				�?����?
�� ?   
       ? ?   ? ?��	��	      	     ? ?	         	      	    	 ��?  	?	? �����������?
?  ?        
   


����? 		      ?                  ?        	?     ����? ��쮼���?��?
�� 
             
   
 ��? 	�� ?            	 ?      	     ?	    	 ?			   ���ɩ�
��?��?��?

  ?      
  
   ?
   ����?	??  	  ?  	 ?      	 ?  ?     ��   	 ��   М	��?
 ����ϯ��?���?     ?               
?��?	��	    	     		?	 ��  ?  ? ?	      ��? �� 	?��  ��?��?����
 ?        ?        	��������?   	 	    ? ��   �� ?  ?     ��
	  ��	?	���?	��������? ��
  ?                   


�М�����? 	  ?	   	 ?	?			  ? ?	?  ��?  ��А 	  ˟	? ��ά??��?  ?
 ?
��?       ?      
   	?��	�� ?  �	   ����?  ��		 	 ?     	 	 	 �ۜ������������?����?      ? ?   
 

 
     ��? ����� ��   	?	 ? 	?	?			  ?   	  ?	 ? ��??����?����������

 ?
 ? ��                  �?����		 К��?  ? �𐞞�	
��	 		 �?	 
	���А�����������?����    ? ��  
  ?
 ?
     ����? ���˚���	��? 	 ? ����
А? ��?  ��		� ?	��	?	��????��? ? ? 
 �� 
 
              
����?	?	 	? ��? 		��?		?
?				�� ? ����������������������? ? �� ��

   

  ����

  ��? �˛���ڜ������Щ�		 ��?	 ?	 ?	�А� ��	?����	������?
��?��? ? 
 ? ?  ��?  ?       ?  ��й��ɭ
��	������	?	?	��?	 	 �ɐ��?	��?
??��?��������? �� ?? 
 
? ? ?  ?  ?
 ?   ?

?�ޞ�٩Аа˜���� �О���?
А?	�����ݺ����𼼺����?

?��? ? ? ? 
 ?  
 
   ?
    ?
 ?  魹�٠??	������? 	
ޟ?	����ٚ??��??
̬?����?����� 
 
 ?   
 
 ? ?      ��?? ��ɼ?��������?	ɭ�������ڐ�ɜ������ڝ���?������ ?
  
?��?
 ? 
? ��      
 ��?  
 ? ��   ? ��??��?�ٞ���ɠ? �� �˼�?���˙�?	?��?��  
 ����?��?

 ?  ? ? 
 ��?      
	
  ����? ?
 �ٜ�	��?	����	Э��	? ��?	ɼ�ߛ���������������?	 
? 

��?��? ?   ?
��?     ? ?    ?	 ?  ? 

    ?
а?������?��??	�� ����������???��

  
???�� 

    ?  ��?  ? ��   �  

   
 
 ??	?	��	? ��?		 	��	?����?��
ܺ��� ?  
 ?
 ������
  ��
 ?
 ?  ?     ?
	  ?  
 ��
  ?������н��?	? ��?	����?�ښ�������� ?


 

 
??��?  

 ��? 

 ?     ?  
 ? ��      

����? ��
н���ڐ�?	����������?�������   ?   ��?������? 


�  �� 
   ?
 
?      ?

��  ��	ɩ?	 �ݞ���?�О��ɽ���?۞������?
����
?

 
? ��??? ? 
������

            ?       ��
 ����?��
��������?��	鿙�������?? ?     
 ?

������?
 ����� ?
 ? 
  
  
 
 ?
   ??
  �
	��?������������?	
��?��?��ɬ


 ��   ��??����������??

   
 
 ?  ��       
��
  
 � ��˩	������ɩ��ߙ��?	�?����??
 ? ?   ?
 ?
�����

μ??��    
        	
 ?  

 ����
 ? ?	���𐛐�۝������?���ښ�μ��
??
��?
  
  ��??? �������?
 ? 

��     

      ��  ? ��	? 
 
 ?	 ������?	Ｐ�?	��ɠ?�� ? 

 ?
 ? ? 
��?������????�    
 ?
  ?  
 ?  ? ���� ��?  ? ? 		
 	�?	�����ϼ��������?����
  �� ����???����?��??ࠠ�
  ��   
 ?   �� ��? ??   �� ��	
?	��?	������ﭭ�????��
 ? ��? ��  ��?��??��??� ?   ? 
      ? ?    ��? ����??   ��? 
  
��ڼ��???����????????? ? ? 

��???��???????

? ?   

 ?
  ?	?    ?
  ����  ?	? �� ����𰰼?	?????��??????��
 

 ? ? ��???��??��?��?�   ��
?    �� ? ?

   


�� �   ��?  ����
��?��?????????????��?  

 �� ���????????�	? ?    
 
  ����   ?
  ��?
�� ?
	 �� 

��?����???????????����
 ��
 ???��????����� ? 
  ? 
  ��ʐ?    
 
?

  �� ����

  ��	������????����????��? ? 
 ����???????�����ʩ ? ? 
  ?  ? ��
  

   ��  ?  ��   ?	  ��

����?������??��????����
 ଼�????????��ں  �   ?      
 ��
 
   

���� ��
 ?
 ?

�� 
��?����?��?�켿????����?  ��???????��
? 

   

 ?       ?	 
  
   ?	 ?		 	 ? ?	 
?����???��???????��??	������??????� ? ��?
  ? ?   
? ?  
 ?   ������ �� ����?
?
 
����???������?����????? ��
����?????????�שׂ��
��? 
  ?  	  ?   ?
   ?       
?    	 
  	
	 ����?��??????��??????
??����??????����? ����𠠠?  ��������   ��? ��������������������
��?????����?����????�୮���?????��???��
ʠ                                         ��???????????????��?????����???????????????����������?                p??','Robert King served in the Peace Corps and traveled extensively before completing his degree in English at the University of Michigan in 1992, the year he joined the company.  After completing a course entitled "Selling in Europe," he was transferred to the London office in March 1993. ',5,'http://accweb/emmployees/davolio.bmp');
INSERT INTO `Employees` VALUES (8,'Callahan','Laura','Inside Sales Coordinator','Ms.',"1/9/1958 12:00:00 AM","3/5/1994 12:00:00 AM",'4726 - 11th Ave. N.E.','Seattle','WA','98105','USA','(206) 555-1189','2344','/       ! ????Bitmap Image Paint.Picture         PBrush          T  BMT      v   (   ?   ?         �S  ?  ?                ?  ?   ?? ?   ? ? ??  ��? ???   ?  ?   ?? ?   ? ? ??  ??? ?	      		? 	   ?   ��??????????????????????????????????????????????? �����  ? ? А	 ?       ��   	  ?	?   	  ��  ???????????????????????????????????????????????	 ���� 	 ?��    ? 		   ?      ?  ?    		  		????????????????????????????????????????????????А  ��	 	 ��?� ? 	  	 ����     	?  ?  	  	   ???????????????????????????????????????????????�? ?		? 	? ?��    ? ? ?        ��	   ?		  ��??????????????????????????????????????????????????	    ?	  ? 			? ��?  	 ?  ?     	? ?      		??????????????????????????????????????????��??????��					 	 ��? 	��     ??        		? ? 	  ? ��???????????????????????????????????????????????˿      ? ��   ? 	 ����?         	�� 	  ? ?  ��????????????????????????????????????????????????��  		   	?   ��	 ? ? ?   		?    	      ??	????????????????????????????????????????????????��?   ��	 	?		?   ��	 ?     ?      ? 	   	  ????????????????????????????????????????????????� 	 	     �� ?		  	? ?   	  ?         	  ? ��??????????????????????????????????????????????? ?  	    	��А 	 �� ?    	 	           ����??????????????????????????????????????????��??????        	  ?      	  ?       ?           	 	?????????????????????????????????????????????????				 ?     	 	 	     ?	    	 
        ? 	 	 ????????????????????????????????????????��?߿??        ��	  ?   ��	��    ? 		       	 �� ?	???????????????????????????????????????����???? ?	        	 	 	��?��?   ?         ?	 ?  	��?????????????????????????????????????????��???? 	 ����       	����? 	?	  ��?       	?  ???????????????????????????????????????��?��?�?   ����  	  ?? ?	 ��		         	    	 ?��????????????????????????????????????????????��?? ? ��??��   	а? ���� ����       	? 	  	��???????????????????????????????????��?????������߼?  ����?��  ?
?  𽠚? ? 	        �� ?	 ��????????????????????????????????????��?��?��߯?��  ?��?	��?  ��?   ? ?	��	  ��	      ?    ��?????????????????????????????????�������߭������?	? ?��� 	?    �� ��  	          		?  	???????��???????????????????????��??���럟�����?���� ������?         �	  ?  		   ?        ��?��?��????????????????????????��??������������??  	??          ��	�?        
?     	 ?��������???????????????????????��������?����??? 	   ��?	        �� ��	 ?  ��	 ?	       	��??��?��????????????????????��????����������?��? ? ?          ? �� ?     ?		��      ��۞������???????????????????????��?����������?߼????               ��������?  ? ? ?        ��ɛ;???��??????????????????Ͽ?��??����?????��?               ?	 �� ?    ? ? ?         �������?????????????????��??������?����������?��?��             ����?		 		 �� ����        ������?��???????????????��?��?�߿߭����?��������	��            ?	?
? 	 ?	  �� 
?          ������?????????????????����߭���߿��������?��????   	           ��?	 ��  ?		 		   ?    	 	����????????????������????��߾?��龛�������??��?              ��?
?	  			?      ?         ��?��??????????????�߿�?����??����?��������?              ?�� ?    ����? ?   ?      �齿?ߟ??????????��??��??�ﭽ�������������������А           ? ����? ? ��	?   	 	         	������?????????��?����??�ڿ�߹������?��ߟ?��?	��              ??	    	  ?	         ?   	������????????????��?����������������������?��������              𜰚а    ��	     ?   ? ?   ������?????????��?��?������?�����˟���??? ?              ��?				 ?   	 ?	         ?  ??��????????????����?�����ۛ�˝��������?����                ? �?	 ?	 ?	 ��  	  		      �����?????????��?��������?������������	��?	?	                ��?		��   	  	  ?    ?    ? 	����	��?????????������?������?����ɽ���� ��? ?            	   ���?	 ?	  ?  	?   ?  �� 	 	������??????????������������?	����	���ڝ���?? ?               	 ?	�� ?  	  ?  	        ? ?  ��������????????��?��߽�����������Н�����?	 ?                  �	��А  		 	 ��  	      	   	������????????������������?��?ڛ��? ?                ?  ?? 	?  �� 	                	��?	����??????????����?����������ɽ?	��	?                     �
	 ?   		   ��   ?          		����???????��?�������������? �����	                  	  ?	����	  ?      		            	 ����??????????߿�����ϟ����������	а	                      ? 	?  	 ? ?                  		��?��???????����ڛ�˹��?	???	ɬ��	                       ����? 	     ?	 �� ?            		��?????????������?�ޟ���������	��	 ?               ?    		 	?	����  	 ?      	  	             	��?????????��?���й�ڟ��?	������?	                	     ? ��	?   ?
?   ?                  ����??????���߭����������?��٩  	                	        �? ��  		 ?    ��                	��???????����????��?�魩
Л 	                     	 	  ?��?  	��   		    	              	???????��?�������?������  	                  		       ?	?	��   ��?	   		                 ��?????????	��?ۭ��	���� 	 ?                       ?  ��ڐ��?  ?     ��                   	???????������𜐜������		ɹ? ?                 		     	  ? �� ��  ��	 	   		 ?               ?????????	��?	魩�?��ښ�� ?                       ?	   ��?		���� 	    	  ?                 	??????����ɭ����	�м�ɭ	?		?                   	   ?     ? ��??	
	   ? ?   ?                 ?????�����?��	?����?                          		  ��	 �     ?		   ?                ???�٩�	Щ?	��?	���М���	                             𐰽��	?	     ��  ? ?              	??���ۛ�??А��	
��ɭ������                          	   ��˚����	   	 ?                    ?����������? ����? ڛ		ɩ	 	                        ��  ��	�� 	    	  ��                  	???��?������?	?	 ?	��𼐰                      	       ����𾐚��    		  		                ????߿�?	�ڜ�?	����?	�� ?                        	  	 ������?	?	     	 	                 	??��?��ߟ��					 ?	�ɬ�а?                           	  � ������?     ? ?                 	?????��??����?
����	��? ?                       	    	��������
����    ? ��               	???????����?��			 ����	?                           		 ��?		��˜ ��     	   ?              ???????��������
���� ��	��	                             �𭐠�����?��    ? ?                ???????����ڞ���	 ?		
		��                           ?  ��
? ��? ��      	?                	????????�ߟ�������	? ��??		                            ��?
?
? ��?	?	 	    	 	              ????????�����߭�?	�� ?	?	?	                              	?	��К���                        ???????���������۰�����	 	 	
��                      ?   		 𠠚��	��	��       ?              ????????���۞߼�??������?	                           ?  ��		��?��?                       ?????��߽����ۚ���۽�?	?
	 	 ?	                      	  ? ���� ? ��?   ?                    ???????����ڛ
�����ڛɰ�����		?                            ??	?	����   	                   	??????��������?��˽���? 	
 ��                        	  
��
 ��а��ڐ          ?           ??????��?��	��?����??		  ��                             ��? ��	
����   ��                  ��?????����	��?	���˭�𚐞��		  	                         ? �м𠩪�	��?     	                	??????�����𐜐�й����	?	  ?                          	 	?	 ��?	ː?    	    	            ????߼��ِ?	��	���ڐ���?	  ��                          ���

ɩ��?   �� 	               ??????�۟������А�ڙ����? ? ?                         		 �� ? 	  ��?     ? 	 ?           	?��???ߟ?����?	��ɰа��ۜ��?	 	 ?                         
	 	? 
�� ?	??   ?	               ��???��??����?	ɩɭ	ɟ��?	��	  	                         ��?	?
 ? ��?��   	
   ?           ??��????�� ���������������м�	 	                           			���
��	?	��А   		 	?          	??��???����٩?	?	?		?		��?�� 	 	                       	 ? ��?   ��?		 	  ?              ?��???��?����	 ������ڛϝ	 ?                            			��
 ?	���?    ? 		          ������?��?????���? ?			��	?			 	                        ��   ? 

  ������	   ?            ?��??п??????����?	����ߐ��ښ ?                         					 ? ��
 ��	��  	  ?         	?????????��?��? ? ��	??		??                           ? 
 ��  
  ˞��ɩ      
         ???����??��	������	? ������н?			?                         	 		��?
 
 ?	��?    	 ?         ����??	?���� 			��?	? 	��ߩ�ڞ�                           ��   ��  ?  ?��К��     ��       ����?		 �����?��?		 ��	 ����				 ?                       	 	 ? ��    
?	���     	        	??		К��������?		��?   	 ߽��ڜ?	                         	   ��?
 
 
��О����	  	 ��?      ?������??????����
������?	? 	?		 ?                        ?  	 ��? 
 ?  ��?
? ?              ��	��??????��?	ڛ��?	��������К?	?                       ? ?  ?	��  ? 
 ?�٭� �� 				       ��? ��????�ߟ�?	𽭩����	����?	?		                           	?
?
  ?  ��ښ?	?            ��������???����?		��	����?		 ���?
?                        	  	
	? 
?  ��	����	   	 		      ?�ɐ�?????��?�������О�	�	��?	 ?                    	    	? 
?       ��?	��	           ��������?��ʐ��	��?й	��?��                         	  ����? ? ?   ��ڐ? ?    ?     ?��ٹ��???����	��?������А? �� ?		                         ? ?? 
?    
?а��?    	      ????	П��?��� ? 	���������й頽? ��                         ?	��
 ?  
  ��	 ??           	?���۩�??���	 ��	??	��?�ڐ�?	?	
?                       ? ?	 ����    
 ?����?    		     ????����??���ɼ�	ɰ	��������?������?	                        ��

?  ?     ����	?	          	??�����???������?	?��˟����А	 	   		                 	 ��?
�� 
   
 ��?����     	    ????����????����	�����ｽ��驹�?	 �� 	 ��?                 ? ?
?? 	     
	���?     ?    	????����????��	�? ������?�����М�	  	 			                ����	��𠠠   
	 
����	      ��  ?????��????߭����٩����������ɩ����?	  ��?	?               	 ?
?
 ? 
?    ������
?          ?????����???��������������۟��?��?	  ?	? ?               
��? �� 	?

   	 ���� ?    	    ????��???????ۚ��������������ޞ��?	?	  ��?	?               ?	�?
��

		 
?
	����?        ???????????߼����������������?
�� ?		����                	? ��?  ��     ��? ?     ?   ???????????��ސ?	�������ߚ����𼞝� ?   ? ��?              	��
��
 �� ��   ? 	��	??        ????????????�����������??����	?	?		  	??                ��?	 �� 



 


	����	        ?????????????ߟ?Й	����������𞐼����
 		 ��?               	��
  ? ��       ������?        ????????????��н����?����??٩					  	  	          ?    	?	 �� 
?     
 
  ? ��		   	    ?????????????�����������޽�������ښ��   ��                 ?	��? ��?   �� 
  ?
�� ��?       ?????????????��	?	Й����?��۟����	��?		   	                  ?
 ? ��     ? 
    ��?         ??????????????��	��驭�?����������?	? 	  ?                	 ?
?
 ��?  

 ? ?  ��? ��  	    ???????????����
А�����˟�۟������  	 ?               ?	 ? ?
  ?

	   
? ? ������
      	????????????��? ?�������ٽ�߭?	��		?   	            ?   ����? ����  
  ? ��  ��	 �� 		   ????����?????����	������޽����?	��?     ?               ? 

 
 ?  ? 
 
  ?? ��        ???��?��?????	А����?��������?��М?	                   		��  
?
��  ? �� ? ? �� ?	  		   ???���ٛ�??????�ɩ�������ڛڽ����                      ����
����
 
    �� 

�� ?        ?????������??��		?	?	?	������ڽ	�� ?                ?  ����	 �� �?  ?  �� 	? ��?
��	 	   ????������????������а�����ɩ�?������                     ��	�� 
 ��  
  ?
 ?
 ����	?   ?   ???������???��?	?	��? ���й���?	��                   	������?
? 
 ?  ��  ? 	��?
  	    ?����?		��??�ٜ���ɼ������������ِ��?                  ?  ��?	?  ?
 ?      ?  
  ����?	       	?����   	��??��	 	?		��? 	?		?	��	? 	                   ?
	
   ��?
   
   
   ��?      ??	?    	?��?? 	??  	 ?  ������?                   ��	��������?     
      
��?	? 	    	�� 	?	   ��??��? ? ??    ? ������	                 	 		 ?	? ��  ?  ?      
 
	���?       ?�� ?   ��??�ɠ� ? ? ��	     		А٩	 	                 	 ��?
������ �? ?      ? 
����? 		   ?��?  	  ��??����		
?      	��	�� 	                	  ?	?�
  
 ?  ?           ��� ?  ?  
???	 ��?	???��?	 А		     ? ?	�?	                  	 	  ���� ����        
    ����?   ?  ?��?��𩚜???����? ��� ? 				��                      ?а��? 
�� ?
        
  
 ����	      ???������۽??��?	?	 		ʙ ٜ��й��                  	   	

�ʰ�
  ?             ?
��?  	 	  ��?�ߟ�����???��? ? ������?
		ɩʐ?	                     ����?
? 
   ? 
           �� 	 ��     	��魠�?	��??��??		?��? ��	                       
?  ��? ��           

	?
?  ?  ? ?����  ��???������  ����?��?	�К�                  	  ������?
    ? ?           ?
 	 		     	???  		��?߿?��?	  			?	����?  ��                        
?
? ?

  �           

  	  �� ��???�۟��ߟ�?����?		   ��?	 				����                    		�� ? ?     ?
            ��  ? 
	  		???????��?????��?
     	��?   ��                         ���렚
    ?  ?           ��			    ??????????????����?	 ? ?				 ��?                    	?
��?
?  
  ��           ? ?  ?	? 	   ???????????????�� ?	 ?	 ��?                           	���� ?    ?
           ? ?	 ?	 	 		??????????????????����?	����     	                  	  ��? 	  ?     ?              ?  ?	 �� 	 ?????????????????����� 		                          ?
	 ��
       ?            
 ?  ��		��	???????????????????����?  ��  ?                       	 ��
��       ��           ��  
? ����
��??????????????????���� ��                            ? 	?	
        ?                  ��			 ??????????????????��? ?			                          ? 	?
         ?                  ����  ��?????????????????��?��?	 ��  	                      ? 	
����?        ?                 			? 	?????????????????����? ڐ?  	                          	?
          ?                 
����?	?????????????????��? 	 	 	                       ?  ��? ?          ?                 	 ��А 	??????????????????����	 ��?    ?                        ��?
          ?                  �ڐ� ��??????????????????��? ��	 	 ? ?                  ?  ?
��	           ?                 ?		��? ??????????????����?	 ? 	                         	 	 ��          ?                  ��� ��?????????????????������	  		 ?                  ?    ��?            ?              
  		?	��????��?????????��	��? ?	 ?	                        	 ? ? ?      
    ?                  	���� ????????????????��?	 ? ?  �� 	                      	��?         ?  ?                 
����?	???????????????ڟ�� 	? 	 ?  ?                  ? 	  ?	��
           ?                  �?	???????????????	�� ����	 ?	   ?                  	����
            ?                 ����������?????????????	��? 	 	  		  ?                     
	 ?             ?                  	���?		��??????????????���� �� ?	  ��                 ?   	?
?
	?           ?                 ���������???��?????????���ڐ�? 	  		 �� 	                  ��	? 
            ?                 �� ������???????????����?  ��? �� 		 	       ?      ?   	 ����	            ?                ����	����???��?????????? ��?	? �� 		      ?              	��	�� ?
           ?                		��������???????????ސ 	 ?   �� ��?	        	         ? ��? ?            ?       ?          ��?��	?	��????????????	?	  		  		     ? ?         	   
а?  
            ?                 ������ڛ��˟?????????��?? ?	 �� ��
	? 	                	?	��?             ?
     ?      
    	??	�鰰��??????????���� ��  ?  �� 	   ?  	?	         ڜ? 
  ?           ?       
         ʜ����?��?��????��?	?	 ?	 ? �� 		        ? 	    ?   	��?	?             ?         
  
     	?�����˚���?߿????�：?  	 	    ��  ? ?  ?       ?   ���� 	?              ?          
    
  ? ��?����߽????����?		 ��?				 
?    �� ?  ?  	   	�� ��   ?           ?      
            ����	����??��������?   	
       ? ?  ? ?	      ? 	 ����  ?              ?        ?
 
    
   ?	���ݩ�ڟ��??߯��? ?  ��	  	 ?	  	  ��  	   	
   	��? �� 
             ?     
 
     ?    ?	 
?��������?��?��ۜ	 ?	  ? 	       		  	 ? ?  	   
��                 ?                  	?	������ڞ������?ۚ��?     ?    		 ? ? ?     	   ?   ?	? ?  ? 
   
       ?      
        
    ����?	��魻￟��?  ? 	     	      ��  ��    ?  ?��?
  
     
       ? ?         
  ?     ?  	���������ߟ���?��    ?	        ? ��?   ?  	   ��? ?                 ?     
 ?
     ?    
?	ట���	��?	��������		         	  ? ?   ? ?  	  	 ?	 ?   
   ?      

  ?               	 
   ?		��	��������������   ?    	   ? ? А	??   ? ����	?                 ?        ?  ? ? 

 ? ?	 ? ����? 		ɰ��	��             ���	

?        ? ? 
 
  ?            ?       ? ��      ? ? ? ��?�� ��?ɭ��            	  	 ? ��	   	 	 ? �?  	 ? ? ?     
 
 ?     
  ?  �� ?  
    ?  ����? ��	����	            	  ��??  ?   ?   ? �? ?

 	      
      ?             ? ?
      ?	��
?
? 		?	  ?           ����   	?  ?
 ��?
��?
	 
 ?    
       ?       
  ?   ?   ? ?   ?	������ 	  	?      	 	   			 �� ��	?   ��?	��? ��?  
     
   ?  	
  ?         ?  ? ?   ?  
   ����? 
?  	 ?    	   ?	 
 а	�� ?   	  ?
��?	 
? 
 ?      ��     ?     ?  
	 
 
 
   ?  ?   	 ??	?    ?       ��   			?��	 	   ?  ��������  	 ? ?         ?  ?      ?
?

      ��   
  ����?     ? ��  ��?  ������     	 ?  ?
 �� ? ��
 ?  ?       ?   ?        
?  	?
      
	?  		? �  ? ? 	 ? ?		 	 ��	?       �� ?����?	 ?	?   ?

    
 ?      ?    
    
 ?    ? ?     ?   ��? 	? ɭ		��?    ��? ?   ?  	 ?  驩�?  ��
 

  	           
  ?   ?  ? 
 ? ?
	��? 
   
?  ��??���Ь�	��? ?	  ?   ? 		 ��? ��
 ���� ? ? ?        
   ?       ?  
       ?     

 
	 ��?	������? ����	?	     	 ?  ����??  ?  ?
 �� ? 
  ?
 
     ?  ? 
    
 ? ?
 
         	 ����?	��ɠ����? ? 
?   ?  
   	? ������?
�� ? ��              ?      ?  	 ? 	
     
     
 
گ
 ��?��  ? 
?   ?    		?	 ��?	�� 
     ?
 ��
         ?  ?   ?   
?
   ?  
  	       ?	 ����?	?��?  	  	     ?   ��	
���	 ��?

 
 
   
 
 


    ?    
  ?     ?      ?      
 �� ����?
��    	    ��  		?	 ?	��?	
 	��	  ? 	?

        ?    ?     
  ��?
   ?
	
    ?     ��������	�� ?   	         
?  м��	
 	 �� ?

? 	?
	 ?      ��    ?      ? 
    	  
   
   ?      ������? ��
        ?		 ?	�����?  ? �� ? 	��  
     ? ?  ?     ��  ?   ?
 	             ?  ?		����? 	? ��Р   	?  ������а�?	 �� �� ��
 
	 ?
     ��    ?    ?  
�� 
    ��               ?

��	? ?   ?  �� ��	ɩ?
	

  ��? ?  	 ? ?           ��     ��   
  ?    ?
 ?
           	 ��ଐ�?    ��?	�а���?	? 
  
? 
 ��
	��	          ��  ��      	 ����   ?	 ?     
 ?   
     А 
��		���ʞ���������    
	��
��  �� ?  ? ?  ?  ? ?      

		? ��  ?  	?       ?   ?
  ?   ��?�������ٽ�����     ?     
 ?
 ��     ?    
    
?      ?  

?  ?  ?	?         
       ��������?��཭�	?  
 �� ?  ������?  ?        
 
  	��    
 ��
��  	
?    ��  
     ? 	
 	    ��	ɬ������
������?  ?	   ��  ?
?
 ?

 ? ?         ? ?      ?   �� ?
 
?
   ?    ?
    
  
 ��?
	�� ?  	
 ? ?    	��

   ��?
?	 ? ?         ��?   ?       ? ? ��  	? ? ?   ? ?     
      ? ?
	��
? ?
	

? 	
 ?  ?    ��?  ?

 ��
?	  ��
 
 ?   
 ?     ?  ? �� 	��

 ?     ?
        ?  	����?
 ? ��? ?	?

	 	?   ��   ? ����?	 

	  ?  
�� 
  ?      ?  �� ? 
��  	
 ?   
     
  ?
 		  ?	   �� ��? ? ?   ?   ?

  ����?	?   ?��   ?   ?         ?
 ? ��? ?      ?
  ?   ? 	

 	
    ��
 ��?	?  	 ���� ��?
  		�� 
? ? ?   ?     ?       

 	
  	  ?  ? 
 ?       ?
	 ? 
 
 
  ? 	   ? ? ? 
  	 ����	

	��	

  ? 
     
 ?        	 ��	
  ?
 �� ?   
  ?  
  

   ? ? 
  

? ��? 
��  
  	�� ?	? 
  	 ??
 	   ?   ? 
  ?        �� 
	 ��
	 ? 
  	 	  ? 
?  ?	 ?
	? �� ? ?    

?  �� ��?  



����������  ? ?  
 �� 	��          ? 	
    ?  	   ?

   
   
 ?     ? ?	  
    ��?
  ? ��    ��  ��   �� ���� 
?  
   ? ?         ? ��?  ? ?
  
   ?
 
  ? ? ��
	?  ?   ?  ? 

 	?

 ?  
	����?����
	?   ? ?   ?   	��          ?  ?   ?  
 ? 	?  ?  ? ? 
     ? 
 
  	   ?	 ? 	   ��   
 ����	  ��? ��? ��?   
  
 ?          
�� ? ? 
 ? 
  ? 
    ? ? ��
	? ?
     ?
  

  
     

 ��
?��? ��? 	 ��	? ?
     ?         �� ��
?       ? 
?
 �� ?

  	 	?     ? ?    	
? ? 
 ?		 ? ����
	
?

  ����       ?          ? ?	?
 
   ?   	? ?
   ?	  ?

  
�� ?    	 
? ? ? 
? ����? ����
? 
	��    
?   ?  
 ?           ��? ��  
  ?
 ? 
 ?  
 ? 
 ?	
     ?  

  
	
    ��? ?	��
?		��? 
	?
	��? 
     ?            ? ��
          ?
 ?
?  
?    ��?
 	  ?	 ?  
��  �� ?
 

	?	��?
	?	��	?  ��  ?
  ?          ���� 	  ? 
    ?
     
	
 
?

   ?	


       ��?	? ?
��?	����?
? ���� ?
  ��?      ?           	? ��       
 ? 
?  ?	
 ?  	 ?
  ?	 	 ���� ��? ?   ��
 ?
��?��������?
�� �� ?  ? ?         ?
? ?   ?    ?   ? 
	?	
  
?
 ?
?
 �� ?	   ? 
?    ����
?  ?
����
?
	?
 
   �� ? 
  ?       ? 	  ? ?
        
	 ? ? 
  ? 
		  
	��  ? 
 ��������?	   ����?
������	?	
 	����   	?  ?          ��
            
  ��? 	 ?	

	?	  	 	?   
   ?   ?  ?	
  
��?  	��? ?	 
	
 ��?    
?         
                 ��
 ��
  ?  
 ����?
 ����	�� ?
 ����?	��??	  ������? 

  ��                                                     ? ?
           ��
 
 ? ��?    ?                          ߭?','Laura received a BA in psychology from the University of Washington.  She has also completed a course in business French.  She reads and writes French. ',2,'http://accweb/emmployees/davolio.bmp');
INSERT INTO `Employees` VALUES (9,'Dodsworth','Anne','Sales Representative','Ms.',"1/27/1966 12:00:00 AM","11/15/1994 12:00:00 AM",'7 Houndstooth Rd.','London',NULL,'WG2 7LT','UK','(71) 555-4444','452','/       ! ????Bitmap Image Paint.Picture         PBrush          T  BMT      v   (   ?   ?         �S  ?  ?                ?  ?   ?? ?   ? ? ??  ��? ???   ?  ?   ?? ?   ? ? ??  ??? ٙٙ�����������ٝ���ٙ����������������۟��?????????���۝����������ٽ���ٙ���������������ٝ�ٙٝ��ۙٙ�����ٙ����ٟ�����������������������?????????�ߝ�����ݝ��ݽ����ٝ��������ݙ���������ݙ���ٝ�ٙٙٽ������ݝ�ٙ����������������ߙ�ߟ�?????????��ߝ�ߝ�������������ٝ���������������ٛٙ�����ٙ��������ٛ�����ٙ�ٟ��ݝ���������ߟ���?????????�ߙ���������ݝ����ٟ���������ٝ���������ٙ��ٝ�����ٝ���������۝�����ݹ���������ٝ����??????????���۝���������������ٙ��ٝ�������������ݟ����������������ٝ�����������ݝ��������������??????????�������������������������������������ٹٙ��ٝ���������ٝ��ٝ����������ߝ��������۝��???????????�����������ٽ�������������������������������������ٽ���ٝ��ٝ�ٙ���������������ٝ�ߝ???????????��������ݝ���������ٙ����������������ٝ������ٙ�������ݝ�����ٙ��ݝ��������������ݽ�???????????�����������������������ٝ���������������ٙ��������ۙ���ٝ��۝���ݹ������������������???????????�ݝ�����ݝ�����������ٝ��������������۝���������ߝ��ٝ��ݹ��ٝ�������۟�������������???????????�����������ٟ���������ٙ����������������ٙ��ٙٝ�۝�������ٝ��������ߝݝ�ٽ���������????????????���ݽ�����ߟ������������ٛ�������ݝ��ٟ����������������������ٝ��ٹٙ�������������ݝ????????????�ٽ�������������۝���ٝ�ٟ�������������ۙ�����������������ٙ�����ݽ���������������?????????????���ݝ����ߝ���������������������ݝ���ݙ�ٝ�����������ٝ�������������������������ߟ?????????????���������������ݝ����������������۝����������������������ٙ���������ݝ�ٝ���������?????????????���ݝ����ݝ�������۝��ٝ������ߝ��������ٙٙ�������������ߝ���ݛٙݝ��������������??????????????ݝ��۟���������ݹݙ���ٙ�������������������������������ٙ�����ݙߙ�ߝ�������������??????????????��ݝ����ݝ������ٟ��ݙ����������ݝ�����ٙٝ�����������ٽ��ٽ��ٙ����������������???????????????��۟���������������������������ۛ۝����ݙ��������������ٙٽ��ٽ��ٟ�������������???????????????������ݝ����������������ٙ����ݝݝ������ٝ����ٝ�ݽ��ٽ�������ٙ�ߝ�������ݟ��ߟ???????????????�������������������ٙ��ٽݝ�������ߛ��ٝ���ߝ�������ٽ�ٝ����ٽ�ݙ�������ٛ���ٝ????????????????�����ݝ���������ݝ�����ٹ����ݝݽ�ݝ���ٙ�����������ݝ�ٛ�ݽ�ٙ۝����ݝ��ݟ�����????????????????������������������������ݝ�����������۝��ٝ����������۝�����ٝ�����۝���ٛ���ݝ�????????????????�������ݝ�������ݹ���ٝ��������ݽ��������ߝ�������������������������������������????????????????�ٝ������ݝ��ݝ�����ݽ����ݝ������������ٽ���������ٝ������ٽ��ٙ�������������?????????????????�����������ٟ��������ٽ��ݹ������ߝ������ݽ�����������������ٙ��ߝ����������۟?????????????????������������ٝ���������۝������������ٝ���ߝ�ݝ����ٝ��������ٙ���ٝ����۝����??????????????????����������ٙ����������������������ݟ����ߝ���۟�����ٝ�����۝��ٝ�������������??????????????????�����������ߝ���ߝ����ݽ���������ٽ������ߝ�����ݝ�����ٝ���ٙٛ�ٝ��������ߝ�??????????????????����������ۙ�ٙٝ�ݟ��������ݝ�ݝ���������ߝ����������������������ٝ�������ٟ�??????????????????�����������ݟ�ݹ۝�����ٝ�����ݹ����������������ݝ���������ٽ���ٝ���ݝ�������??????????????????���ݝ�������ٝ����ߟ�����������ݝ�����������������������ٝ����ٙ��ٙٽ�����ٽ�???????????????????����������ߝ��ٟٝ����������ٟ���ݟ��ݽ�����ݝ��ݝ��������ٝ���ٝ�۝���ٽ���???????????????????������۟����ٝ��ٝ������۟�ݝ����ߛݝ�������������������۝�����ٙ������ٽݽ�????????????????????������ݝ�����ٝ�ٟ����ٙٝ����������ߝ�����������ٝ������ٙ����ݝ������ٹ���????????????????????ߝ���ٙ���ٝ��ٝ�ٟ�������������ݽ����������ߝ����������ٟ����ٹ��ٹ�ݹ�����????????????????????����ߝ����ߙ�ٹ�ٝ�������ߙ���������ߝ�����ݽ���ݙٽ������ٝ���ݹ��ٝ��۟���????????????????????�����ٝ����ߙ���ٙ����ٝ����������ݽ??�ߝ���۟۝�ݽ��ٟ��ٙ�����ٙ��������????????????????????�����������ٝ�ٙ�������ٝ����������ݽ��������ߝٝٝ���ݝ��۝�������ٝ��ٟ���?????????????????????���������ٟ۝��ٙٝ������������������� ��ߟߝ���ߝ�����������ٝ����������??????????????????????���ݽ��������ٝ���������ݝ������ߟ��?��ߟߝ�����۝��ٝ��ٝ�������۝������??????????????????????�ݝ�������ݙٝ���۝���ٟ������ߟ������	��?��������ߝ��ٝ��ٝ�������ٝ�����??????????????????????�۝�������۝�ٙٝ��ߟ����������ݟ������ٙ�������ٝ��ٝ��������������������???????????????????????���ٝ���ٙ�ٽ�����������������������? Л������ߟ�����ٝ����ٹ��ٝ��ٝ�ߝ??????????????????????�ݽ�����ٟ����������ٝ���������ߟ���?��?	?	����ݙٝ�����ٙ����ٙ��ۙ��ٝ�???????????????????????�ݹ��ٝ������ٽ���۝��ٽ����ݽ���ߟ�?���� ��ߝ�������ٽ���������������ٟ???????????????????????������ٙ�ٝ���ٙ���ٙ�������������?? ?	��	����ٝ�۝��ٝ�ٙٙ���ٝ���ٟ��???????????????????????�����ٽ����ݝ����۝�ݹ��������������?��ڝ	 	��������ٹ����ٙٙ����������???????????????????????������ٙ�ٙ���ٽ���ٝ�������������?�� ˙	��  ��������ٙٝ�������������ٹ�???????????????????????���������������ٝ�ٽ�ߝ�����������??�� ?  �����ٟ���ٙ����������������????????????????????????�����ٙ�����ٙٝ���ٟ���������???��ڐ���� 			������������������������?????????????????????????��ٙ��ٙٙ���������ٝ�������������??	 			 ? ? ���ٙ���������?	��������?????????????????????????���ٙۙ��ٙ�ٙ�����������ߟ�����???�����   ? ��������?	����?	���ٙ���?????????????????????????���������������ٙ�ٙ����ݽ����?��??��  ?	 ?   ����������?			��������?????????????????????????��������������ٙٙ�������ݿ���??��? 	? ?         	������������������?????????????????????????��������������������ٽ��������??����?��? ��        	?			? 		��������???????��????????????????����������������������?������??��?	 �� 	             ��? 	 ����������????��ߟ?����???????????���ٙ�����?	����������ٽ����??��ɩ??		
	?		                			��������????������������????????������������	����ٛߟ������??	�����	 	��               	 ����		����??����?������������?????ٝ����?	��������������ٽ��??	����??	 	 ?	                ?				������????��������������?��???����ٙ	����				����������??		 	����? ����?                 ����	?	��?��?���۽���������??��?���������������������������� 	 ��		 	 ?                   ?	��	?	��?��?���������۽���������?��������	? ?	����ٙ������?	 	 		������ڐ?                    ?		����?��������������?��������������	��?	�����������ٙ�?  ����?		?	? ?  		                   	 ��	����������?��������������������������������	������	  ? 	  ?��?		??		                     	 ������?��������???����������������	��			��������?       �� ? �ِ� ?  ?                     		����		����������?��������۟��������	?		��������?         		?		����  ����                        			��������������?����?������?	��	����		����?	    			 ?  �А� ��	?		?		                       	��?	 ������߿?����?������������	?			��?	?	��?          		��	��ː?  ?                           �� ����������������?��?ۛ��		?	��?		����        	      		��?				��	 ?                       	 ?			���߽�������ߟ��߿����������		��		?	           ��  ��	����К  		 ?                             ������?��������?������?	 			������?                	
�� ?�� ? ?	 ?                       ?   	�����������۟�����������		��?	  ?              ?	  ?����������	                              ����������������?������		  ?			 	              		   ?	��?	��	? ? ��                            ���������ٟ����ۛ�۟����		 ?	  ?                  	
����ː�� �� ?                             	����۹��������?߽��?		  ?   ?                  	 		
��������	 		 ?                           ��������ٛ�ۛ�����������?  ? ?                    	 ��		�� ����	                              ?������ٹ��������������	                        	  ?	���˝� ? ?  ��                            ������ۛ���ߛ�������?? ?                       	 				?	��?	 ������ 	                            �����ٹ�����������?����                             		����?		 ?	 ? ?                            �ۛ�����?߿����ۛ����?                          		
�Кٟ���? ?	�� ?                           �۽��ۛ�??????������?                       	  	  ?	������?	�� ��                           	��ۛ�����߿�?��������?                    ?       ����??		 	                           
�۹�۟��????????�۹�?                      	    	 	?��?��
��? 	                            	������??????????�߽�ۛ                     ?   ?	
? ����������	?	 	                           	������??????????????��?                    ?  �� 
? ? ����	�� ?
��?                      ?     ��?	��???????????����?                  	  ��  ��			??	?	 	 ?	 ?                         ����???????????????��?                    ? ? ?	
	�����ٛ���? 
��	                     ��    ������߿????????????��                     ? �  ?		����? ?? ?	?                      	    ������??????��????��?    ?               	 �� �� К?��? ��?	  ? ?                    
��?   ����???��?��????߿����                 		 ?  		 	�����鐟	 ?	 ?                    		��?  	�ٹ�??��߿?����????��                  
? 		  	��ޟ��������	ʐ?                      ����  ��۟?��?��?��???????��   ?                ?  �� ��?�ɽ�?		
?	 	                   	��?  	��?��߿?��?����??߿����               ? 		 ��  	?������А��� 	                    ?	 ��  ������?����?��۟??߿???��  ?             	      ����?��˜����ښ	?
?                   ��??  	��???��??�ۙ���??����??  ?              ? ����	��ݿ����?�� ��                      ??  �������߿�ۙ�ۛ���?????��? ?              	   ?	 ��?��?	��	����? ?                      ?   ����???�����߽�?��������???                  ?		 ?		��������?��? ?                      ��   ��?������������۽��?��??��?              	 �� ?	����?�� ��?	��	
? ?                         ������?��?����?��������???��              	 	��ɼ����?����?	��?	?  	                   ?   ߿�������ۙ�?��??����������?                ?
����
����?ߛ?��?	��                          ��������������?????	?	?����              	  ?		?йɝ��?�������� ?                         ???��������??��??�� 	?����?           	    �����������𐻰���?		?  	                     	��������? ����������?  ��??��             ?  	?й?��?��??		������ ?                   ?  ������ۙ 	����ٹ������������??             			Щ�ڐ���	��	��
�� ����?                       ��??����  ����������������???           	    ??	������������	�ۚ���  	                  ?  ?�������������������߿�������??          	  	
��?��������	?	��������?                        ��?�۽����۟�??����?߿߿����?��            	 	 ?��??˫��? ����?	���� ?                 ? 	���۽�����������	��������������?            
? ��?	����?��	?	��		? ��?  ?                  ? ?������������𙟛��?�������߿�?           ?  	��?	������
��?  	����                     ��������������������?��ۙ����?��         ?	 		?	������	�ߚ�����?	? ? ? ��                  �������ۛ��������������������ߟ�??         	 	  ����𐐐ڼ����   ��?   ��?
                 	�����ۛ�����?������??������������??            ? ���� ? ������?  	�� 	   
 ?                 ������������������??????����??????          	  	?		����������?? 	��     ?		 	               ?��ߟ�����ߟ�������???????����?����?         	     ��				��ٙ��?   	  ?     	                ��߽������������?????????��???????           	 ��	?  ?	?����??  ?  	  
 	��?	              ?����?����??��۟?????????��?????????          	   韞�����?ۿ ? ?	? 	?  	                 ��������������?��?��??????��????????��            	 ��?	��ۙ	�٭?  �� 	    ��                 ?������????����?????????????????ߐ        	 	 	�ޞ��� ��?��?  		�� 
   ��	              ��ۛ��?��????����?????��????????????         	  ����?	ߛ ?�� ?	?  ?	 	   ?	               ?������???????��??????????????????��            ?		��?	���?  	  	?  		   ?            �߹���???????????��???????????????????         ��		?��	��?				?  ?
	 ��  ?
		              ��ۛ����????????????????????????????��          ��	��	����?			?	  		 ? 	 ��	 
              ?����??????????��????????��???????��       	 		��	ې��?
������? ? ? ?	? ����           	?����?����???????????????????????��      ? 	
��	��ܽ����?	��? �� 	�� ����              ����???��??����?����????????????????��         	
��	��??�ۚ�? ��	����?	 ��?           ����?��ߟ???��?��ߟ??????������??????��       	 ����??����??�� 	?		
?			?               ?��?	??��?��?������????��������?????��        	 �� ��?����??ۛ��?  ?	?
��?		            ��?	?	?????߹������????��������????ٰ       	 ?	����ɹ?����ٝ��  ?		˩��?	?
             ?			 ������?����������???���ٹ�����???��      	 	��?�� ����?	����
?�۩�
����?           �� ��?��?��������?	��???�����ٽ�?????��        ?	�ٰ����ٝ�?	��	��  ������������           	��?  ��?�߽�����?	����???ߙ��?����??��       ?		?	?	 �����??	? ������ ?��
            ?		 ��������	����������??�𐟰�	����???      ? ����������?	��ߠ����?��? ? ?           	���� ?������?			��	����??ۛ��	  	 ��???	        	?		됰�?	��? ?��?	�� ??
  ��            ����? ��ߟ��      ? 		�ۿ�??		  ?  ��??         ����	������ 	��	
	 �����?��           ����  ?����?     ? ��??��?	     ��???        ? ��?	�����н��ۙ��� ?
����?ϩ��?           ��?	  ������?      ?	˛��?�А�?  ��	��???     	 ��	й		�ə�? ������ 
 ����????��?          	?    ��?����?   ? ����ߟ��?	���� ��??        ? ����а����?	??��ڐ	��? ����???           ? ?   �٫۹�?	? ?	  ��������?  ?  ����??      ?	 ?		�� 	?��?����?	 ���� ? 		����? ?         ��    	��?			?	?	 ?	��������ۙ�� ����??        ? ����	��?	��?ߚ?	��	��黩� ? ? ?����        ?     ��?    ����	���ۙ���۟��? 	 ��???      	 ��?	?	??	�߽�?𐝐����ɭ ��               	?    ��  ?	 	    ?	?	��������? ? 			??       ?	?��?��ߐ�ߟߟ���		��?��?   ?		  	               	  �� 	      ���۟���۽?		 	  ��??      	 ��	??��?����������? 
��     	?
 	
	               ??       		��������ٚ��
 ?	?��    	  ?
��?		��?���ɜ�?��	?     ?  	 ?	  ?                 	��?    	 ����ۛ�������������齽��       ��?	������ٰ?����?        
  ��  ?                ����?		��	��	���ۛ���?��?�ې�??       ?		?��	����	?		��?            ??�	                 		��  ? ��	��?������������??	?       ?	����?��? м��Й?		    ?      ????                   ��?  ����?		����? ����?		��	? ?       �� �龞?	������? ��    
      ???��                  		��  	��  ?	��?  ���� 		?       	��?	���鐐��	?���� ��   ��     
?????                  ?	   ? ����  ���� ?	��ِ ����?      	  	��?
����ڙ	?����        	��?޿                       	 ? ?	? 	 ��?	 ?	��	 ?			 ?      		?		Щ��?	?	Н��К��   ?      ? ?�� 	                      ?	? ��? 		��	��	������  ?       ?			��	?ڟ?	����	?	  
         ?  ?                    		 ? ?	? ��ڐ?	�� ��		? ��        	����ڐ?������?����?         ?  ?	��	?                    ��? 	��?	 ��? ��?	? ����  	        ����?��?���?	��?��?    ? ?    ?
	 ����                  			? ��?  			 	��������?  	        ��	��??ߙߟ��?��??  ? ? ?     ��? ?                     ?  		?    �� 	��	?	��             ?	�����������?	?��?  ?  ?     ?  ? 	?                 	 			 ��	  		    ��? ��            	 ������?	��ۙ��?      ?    ?    	��?                 	   	   ? ? 		����	?  	        	  		��������		����?	��?        ?      ��?                    ����	? 	 ��? 	?	   ?	 ?         	 ? ��??��? ����?��  ? 
    ?      ����                  ?  	  	  ?     ����     ?           ��?����?
?	��������?  
?          ? �ɼ�?                  	  ?    	  	 ?  ?	  		           	  �ސ���?? ���ڙ�?�� ?	
	          ? 	��?                    		  ?        �� ?      ?        ?		 ????������������?  ��?          ?  ��                   	  �� 	
? 		?  	      	  	     ?	 ? 	��??��?ߝ��	?��?    ?       

                            ? 		 ��? ?	?	 	        
?     ? ��?	�������߹�?������ ��
        		 �� ?                       	  ��		? �ɐ�? ?           	 �� 		 ��??���?����	��   ��        �� ��	                       ?    ����?	��? ?       	  ?    
?
  ???������������?  ? ?  
    
��?	 ?
?                      	��	?	��	?	 ?               ?	 �� ??���	ۙ��?	��        ��      �� ��                       		 	��? ?		 ?      	         	��  ��?�ٝ����������� ?          ��?		 ��?                        ? ?	 ? ����           ?	 	 ??	��������?	����	 ?  ? ?  ����  
  ?   ��                       	 ? 		
��                	 	�� ���Л�����	�ː�?	  ��  	��    ��    	                          	 ��	 		  ?            ��  ��
? ? ��?����?��?  ��   
       ? ��?                          	 ?  ��?  ?              ? ? 		 ??	? ����	��	��?   ��   ? 
   ?
��?                             	 �� 	                 	  ��?	 ?������м��� ? ?     ��?  ?	    ��                           	  ? 	              ?	 		 ? ?	????��	ߙ	��??   ?   ��?
      ����             	                ?             	     	? ��?	???��?	������???    
?   ?    �� ��                                                    			?��???��??? �𿽿�?     	��
  ? 	?  	         	 	                                 	    ? ? ��???��	��	��??	�  ��  ? ?	  	?  ?   ?       ?                                          ?????�����������鿭?  	��?    
  		
��         ? 	                                        ��?��????ߐ������������ 
? 	��  
   �� ����?                                                   	��?????��??��	������     	  
	
? ? ��߼         	 ?                  ?                    ���鰟??????	?����?	 ?  	��?   	    ? 	? ��٩        ? 	                                     	  ?�?????𛚞?	? ��
?	
 
 
  

 
 
 ����
        ? 	  	    	         	                     	ɰ	  ???????	�ٽ�?��?
 ?	  ��? ?	 ���� ��?       
                     
?                   ?	 	 
??????��?��А�	  ?  ��?	

 ��  	?	?        ?      	              ��                  ? ?  	???????ې?ڻ	��  ��  ����? ?    ?
	?        ?                     	                
 	 ��	  	?????	����?	м�� 	��  ?	?	  �� 
 	��?         ?                   
                 	  ? �� ��������
���� 
   ? ��?	�� 
 ��	?  	 ?                       	                   ?	 ?  ? 	 	��
  	�� ����ː?	     ?  
?	?	 ? 	��           ? ?    	 ?          ?                   ��  	    ��  
	 ?����
 ?
 
?  ��
	 ?

		 ��     ? ?
	     
                              ?	?
   ��        ����?��      �� ?  ��?	?	?     ?       	  ?  	                            	?
? 	  ��    ?   ??��������    ��
 	��?
��?	   ?         	      ?                            	 ?	?	��    ?
  ?		 ��?��	 �� ���?
 
��	��  ?          
  ?                              	 �� ����?     ?
 		��������
 	���� ��?	?
��� ��  ?    	  	                                	 ����?	 	?    

?��	 	??	 ��?������������
 ��  ?          ?                              
 ���� А?	     ? ?	���� ����	����	������������?  ��?                               ?        
�����?	?	��   
	?	? ? ������	?��? ������?   ?  	  	                       ?    ?        ?	 ����? ����       ?	??  	??	?
������?����?	
��
?	  	  	                     ?            		? ?     	? ��	��  ����?��?
������??
?  
	   	 ?  	        	?    ?   	?  	    �� 	 ���А���		     ? 

��  	?��?��?	��������	?
			  ����	   	   	    
��? 
? 
 ?	?  ?  
 ? 		
?	����	??
	
      ��
��  ��������������������? 
 �� 
 	 ? ?         ?  	 ? ? ��?     ?	�
? ��������?
��   	����	 	  ۞������?������?	��?	?
   ?	��   ��?          
��???��?	ʐ
?		��?		��?	? ?  ?  ??	? ��? ������?
 �˹���? �� ?    ? ? ��      	    	  
������?��	��й�� ��? ��?	 	? ? ��?
 ?	?  ������ 	?	?	?  ��
  	 	? ?
	 ��?         ?	 ?��Р ?	?
 ��			? ?	��? 	?
	 ? 	?
? ����ɰ	  
����  ����������?	    ��  ?
?
������  
 	  	
	 ��?ɩ   ��? ��𰚚ɠ		隐�	
�� ? ?	��
? ��? ��	 ?
? ?
���� ����  
	 ?    ?  ? ? ?  	 ?    ��?		��?    ��	?		����	? 	 
��	 ����	? ? ��
��?  
?	? 
?   ��
    
��    
	��?   ��?����
��?  
���� ��������	�٠�	 
	 	���������� ?	
��?
 ?   ��	 ?    
��
��      	?	 �� �� ?		ɩ����  ?  ?
?	������	
?	
٩ 
 ��?	 ��驭�	 ?	
��
��? ��?
   ?
  ?      ?  ����?  		
��?
����ڐ? 	 ����
?����а������		? ?	��������?  ? �� ? ��? ������  	
 ?      
		?	 ����	��н?����	
  ?ɩ��?	ｫ� �� ��������˺��
��	����  ��? ?
?
?�� ������	 ��?
 ��?

 ?	��  ��
����?? ��	������?�޽�ۙ?	��������ڰ����?  ? 		 ���� ��������? ?
 ?		 
 ?
?	?
������ ?������?
? ��	��?��������? ��������??���?  ? ��? ��

������ ?
��?

  ?
��   ��? 
�� ????	��?
����
��??��	?����ɽ��������?ڛ	��  ? ? ��?������ ?鰰��� ��   ?	��? ��???𰠾�렰?
?��?��?���?��������?
? ���� ?
	������
?�𩪐�?
��?
	?
 ? ��������?	?????𰙩��? ��?
����????��ۿ��������?
������	 ��ۚ?
������???	?��
��?
	 ����?
 
?
����????
������?	
��????????������������	    
������? 		����???����
����ʚ��?	����������������????����?
����????????	?	�빹��?    ?	 	?  ������?��???�۩�? ��?
���됫��?
��?
�Щ���????���ښ�������??????? 
����?����     
   ?��?
 	?��??????   �?
?��?
?	��? ����??��????����	���?????��??? 	ښ����     		  ����?	??
??��???? ?    ? 
��
��	  𰰠����????��
	
?��??????��???  ����?
��?           ��  ?ϰ??��?????
 ?
 ?? Щʐ	
  	��?��˹�?????ڐ?
ɬ?????????????     ��             
?  ???????????    
 ?
?
��?    ��?������????��?
????????��????                      ��?  ????????????                     ?
�� 
??????     ?????????????                       ��                  ��?','Anne has a BA degree in English from St. Lawrence College.  She is fluent in French and German. ',5,'http://accweb/emmployees/davolio.bmp');
INSERT INTO `Order Details` VALUES (10248,11,14.0,12,0.0);
INSERT INTO `Order Details` VALUES (10248,42,9.8,10,0.0);
INSERT INTO `Order Details` VALUES (10248,72,34.8,5,0.0);
INSERT INTO `Order Details` VALUES (10249,14,18.6,9,0.0);
INSERT INTO `Order Details` VALUES (10249,51,42.4,40,0.0);
INSERT INTO `Order Details` VALUES (10250,41,7.7,10,0.0);
INSERT INTO `Order Details` VALUES (10250,51,42.4,35,0.15);
INSERT INTO `Order Details` VALUES (10250,65,16.8,15,0.15);
INSERT INTO `Order Details` VALUES (10251,22,16.8,6,0.05);
INSERT INTO `Order Details` VALUES (10251,57,15.6,15,0.05);
INSERT INTO `Order Details` VALUES (10251,65,16.8,20,0.0);
INSERT INTO `Order Details` VALUES (10252,20,64.8,40,0.05);
INSERT INTO `Order Details` VALUES (10252,33,2.0,25,0.05);
INSERT INTO `Order Details` VALUES (10252,60,27.2,40,0.0);
INSERT INTO `Order Details` VALUES (10253,31,10.0,20,0.0);
INSERT INTO `Order Details` VALUES (10253,39,14.4,42,0.0);
INSERT INTO `Order Details` VALUES (10253,49,16.0,40,0.0);
INSERT INTO `Order Details` VALUES (10254,24,3.6,15,0.15);
INSERT INTO `Order Details` VALUES (10254,55,19.2,21,0.15);
INSERT INTO `Order Details` VALUES (10254,74,8.0,21,0.0);
INSERT INTO `Order Details` VALUES (10255,2,15.2,20,0.0);
INSERT INTO `Order Details` VALUES (10255,16,13.9,35,0.0);
INSERT INTO `Order Details` VALUES (10255,36,15.2,25,0.0);
INSERT INTO `Order Details` VALUES (10255,59,44.0,30,0.0);
INSERT INTO `Order Details` VALUES (10256,53,26.2,15,0.0);
INSERT INTO `Order Details` VALUES (10256,77,10.4,12,0.0);
INSERT INTO `Order Details` VALUES (10257,27,35.1,25,0.0);
INSERT INTO `Order Details` VALUES (10257,39,14.4,6,0.0);
INSERT INTO `Order Details` VALUES (10257,77,10.4,15,0.0);
INSERT INTO `Order Details` VALUES (10258,2,15.2,50,0.2);
INSERT INTO `Order Details` VALUES (10258,5,17.0,65,0.2);
INSERT INTO `Order Details` VALUES (10258,32,25.6,6,0.2);
INSERT INTO `Order Details` VALUES (10259,21,8.0,10,0.0);
INSERT INTO `Order Details` VALUES (10259,37,20.8,1,0.0);
INSERT INTO `Order Details` VALUES (10260,41,7.7,16,0.25);
INSERT INTO `Order Details` VALUES (10260,57,15.6,50,0.0);
INSERT INTO `Order Details` VALUES (10260,62,39.4,15,0.25);
INSERT INTO `Order Details` VALUES (10260,70,12.0,21,0.25);
INSERT INTO `Order Details` VALUES (10261,21,8.0,20,0.0);
INSERT INTO `Order Details` VALUES (10261,35,14.4,20,0.0);
INSERT INTO `Order Details` VALUES (10262,5,17.0,12,0.2);
INSERT INTO `Order Details` VALUES (10262,7,24.0,15,0.0);
INSERT INTO `Order Details` VALUES (10262,56,30.4,2,0.0);
INSERT INTO `Order Details` VALUES (10263,16,13.9,60,0.25);
INSERT INTO `Order Details` VALUES (10263,24,3.6,28,0.0);
INSERT INTO `Order Details` VALUES (10263,30,20.7,60,0.25);
INSERT INTO `Order Details` VALUES (10263,74,8.0,36,0.25);
INSERT INTO `Order Details` VALUES (10264,2,15.2,35,0.0);
INSERT INTO `Order Details` VALUES (10264,41,7.7,25,0.15);
INSERT INTO `Order Details` VALUES (10265,17,31.2,30,0.0);
INSERT INTO `Order Details` VALUES (10265,70,12.0,20,0.0);
INSERT INTO `Order Details` VALUES (10266,12,30.4,12,0.05);
INSERT INTO `Order Details` VALUES (10267,40,14.7,50,0.0);
INSERT INTO `Order Details` VALUES (10267,59,44.0,70,0.15);
INSERT INTO `Order Details` VALUES (10267,76,14.4,15,0.15);
INSERT INTO `Order Details` VALUES (10268,29,99.0,10,0.0);
INSERT INTO `Order Details` VALUES (10268,72,27.8,4,0.0);
INSERT INTO `Order Details` VALUES (10269,33,2.0,60,0.05);
INSERT INTO `Order Details` VALUES (10269,72,27.8,20,0.05);
INSERT INTO `Order Details` VALUES (10270,36,15.2,30,0.0);
INSERT INTO `Order Details` VALUES (10270,43,36.8,25,0.0);
INSERT INTO `Order Details` VALUES (10271,33,2.0,24,0.0);
INSERT INTO `Order Details` VALUES (10272,20,64.8,6,0.0);
INSERT INTO `Order Details` VALUES (10272,31,10.0,40,0.0);
INSERT INTO `Order Details` VALUES (10272,72,27.8,24,0.0);
INSERT INTO `Order Details` VALUES (10273,10,24.8,24,0.05);
INSERT INTO `Order Details` VALUES (10273,31,10.0,15,0.05);
INSERT INTO `Order Details` VALUES (10273,33,2.0,20,0.0);
INSERT INTO `Order Details` VALUES (10273,40,14.7,60,0.05);
INSERT INTO `Order Details` VALUES (10273,76,14.4,33,0.05);
INSERT INTO `Order Details` VALUES (10274,71,17.2,20,0.0);
INSERT INTO `Order Details` VALUES (10274,72,27.8,7,0.0);
INSERT INTO `Order Details` VALUES (10275,24,3.6,12,0.05);
INSERT INTO `Order Details` VALUES (10275,59,44.0,6,0.05);
INSERT INTO `Order Details` VALUES (10276,10,24.8,15,0.0);
INSERT INTO `Order Details` VALUES (10276,13,4.8,10,0.0);
INSERT INTO `Order Details` VALUES (10277,28,36.4,20,0.0);
INSERT INTO `Order Details` VALUES (10277,62,39.4,12,0.0);
INSERT INTO `Order Details` VALUES (10278,44,15.5,16,0.0);
INSERT INTO `Order Details` VALUES (10278,59,44.0,15,0.0);
INSERT INTO `Order Details` VALUES (10278,63,35.1,8,0.0);
INSERT INTO `Order Details` VALUES (10278,73,12.0,25,0.0);
INSERT INTO `Order Details` VALUES (10279,17,31.2,15,0.25);
INSERT INTO `Order Details` VALUES (10280,24,3.6,12,0.0);
INSERT INTO `Order Details` VALUES (10280,55,19.2,20,0.0);
INSERT INTO `Order Details` VALUES (10280,75,6.2,30,0.0);
INSERT INTO `Order Details` VALUES (10281,19,7.3,1,0.0);
INSERT INTO `Order Details` VALUES (10281,24,3.6,6,0.0);
INSERT INTO `Order Details` VALUES (10281,35,14.4,4,0.0);
INSERT INTO `Order Details` VALUES (10282,30,20.7,6,0.0);
INSERT INTO `Order Details` VALUES (10282,57,15.6,2,0.0);
INSERT INTO `Order Details` VALUES (10283,15,12.4,20,0.0);
INSERT INTO `Order Details` VALUES (10283,19,7.3,18,0.0);
INSERT INTO `Order Details` VALUES (10283,60,27.2,35,0.0);
INSERT INTO `Order Details` VALUES (10283,72,27.8,3,0.0);
INSERT INTO `Order Details` VALUES (10284,27,35.1,15,0.25);
INSERT INTO `Order Details` VALUES (10284,44,15.5,21,0.0);
INSERT INTO `Order Details` VALUES (10284,60,27.2,20,0.25);
INSERT INTO `Order Details` VALUES (10284,67,11.2,5,0.25);
INSERT INTO `Order Details` VALUES (10285,1,14.4,45,0.2);
INSERT INTO `Order Details` VALUES (10285,40,14.7,40,0.2);
INSERT INTO `Order Details` VALUES (10285,53,26.2,36,0.2);
INSERT INTO `Order Details` VALUES (10286,35,14.4,100,0.0);
INSERT INTO `Order Details` VALUES (10286,62,39.4,40,0.0);
INSERT INTO `Order Details` VALUES (10287,16,13.9,40,0.15);
INSERT INTO `Order Details` VALUES (10287,34,11.2,20,0.0);
INSERT INTO `Order Details` VALUES (10287,46,9.6,15,0.15);
INSERT INTO `Order Details` VALUES (10288,54,5.9,10,0.1);
INSERT INTO `Order Details` VALUES (10288,68,10.0,3,0.1);
INSERT INTO `Order Details` VALUES (10289,3,8.0,30,0.0);
INSERT INTO `Order Details` VALUES (10289,64,26.6,9,0.0);
INSERT INTO `Order Details` VALUES (10290,5,17.0,20,0.0);
INSERT INTO `Order Details` VALUES (10290,29,99.0,15,0.0);
INSERT INTO `Order Details` VALUES (10290,49,16.0,15,0.0);
INSERT INTO `Order Details` VALUES (10290,77,10.4,10,0.0);
INSERT INTO `Order Details` VALUES (10291,13,4.8,20,0.1);
INSERT INTO `Order Details` VALUES (10291,44,15.5,24,0.1);
INSERT INTO `Order Details` VALUES (10291,51,42.4,2,0.1);
INSERT INTO `Order Details` VALUES (10292,20,64.8,20,0.0);
INSERT INTO `Order Details` VALUES (10293,18,50.0,12,0.0);
INSERT INTO `Order Details` VALUES (10293,24,3.6,10,0.0);
INSERT INTO `Order Details` VALUES (10293,63,35.1,5,0.0);
INSERT INTO `Order Details` VALUES (10293,75,6.2,6,0.0);
INSERT INTO `Order Details` VALUES (10294,1,14.4,18,0.0);
INSERT INTO `Order Details` VALUES (10294,17,31.2,15,0.0);
INSERT INTO `Order Details` VALUES (10294,43,36.8,15,0.0);
INSERT INTO `Order Details` VALUES (10294,60,27.2,21,0.0);
INSERT INTO `Order Details` VALUES (10294,75,6.2,6,0.0);
INSERT INTO `Order Details` VALUES (10295,56,30.4,4,0.0);
INSERT INTO `Order Details` VALUES (10296,11,16.8,12,0.0);
INSERT INTO `Order Details` VALUES (10296,16,13.9,30,0.0);
INSERT INTO `Order Details` VALUES (10296,69,28.8,15,0.0);
INSERT INTO `Order Details` VALUES (10297,39,14.4,60,0.0);
INSERT INTO `Order Details` VALUES (10297,72,27.8,20,0.0);
INSERT INTO `Order Details` VALUES (10298,2,15.2,40,0.0);
INSERT INTO `Order Details` VALUES (10298,36,15.2,40,0.25);
INSERT INTO `Order Details` VALUES (10298,59,44.0,30,0.25);
INSERT INTO `Order Details` VALUES (10298,62,39.4,15,0.0);
INSERT INTO `Order Details` VALUES (10299,19,7.3,15,0.0);
INSERT INTO `Order Details` VALUES (10299,70,12.0,20,0.0);
INSERT INTO `Order Details` VALUES (10300,66,13.6,30,0.0);
INSERT INTO `Order Details` VALUES (10300,68,10.0,20,0.0);
INSERT INTO `Order Details` VALUES (10301,40,14.7,10,0.0);
INSERT INTO `Order Details` VALUES (10301,56,30.4,20,0.0);
INSERT INTO `Order Details` VALUES (10302,17,31.2,40,0.0);
INSERT INTO `Order Details` VALUES (10302,28,36.4,28,0.0);
INSERT INTO `Order Details` VALUES (10302,43,36.8,12,0.0);
INSERT INTO `Order Details` VALUES (10303,40,14.7,40,0.1);
INSERT INTO `Order Details` VALUES (10303,65,16.8,30,0.1);
INSERT INTO `Order Details` VALUES (10303,68,10.0,15,0.1);
INSERT INTO `Order Details` VALUES (10304,49,16.0,30,0.0);
INSERT INTO `Order Details` VALUES (10304,59,44.0,10,0.0);
INSERT INTO `Order Details` VALUES (10304,71,17.2,2,0.0);
INSERT INTO `Order Details` VALUES (10305,18,50.0,25,0.1);
INSERT INTO `Order Details` VALUES (10305,29,99.0,25,0.1);
INSERT INTO `Order Details` VALUES (10305,39,14.4,30,0.1);
INSERT INTO `Order Details` VALUES (10306,30,20.7,10,0.0);
INSERT INTO `Order Details` VALUES (10306,53,26.2,10,0.0);
INSERT INTO `Order Details` VALUES (10306,54,5.9,5,0.0);
INSERT INTO `Order Details` VALUES (10307,62,39.4,10,0.0);
INSERT INTO `Order Details` VALUES (10307,68,10.0,3,0.0);
INSERT INTO `Order Details` VALUES (10308,69,28.8,1,0.0);
INSERT INTO `Order Details` VALUES (10308,70,12.0,5,0.0);
INSERT INTO `Order Details` VALUES (10309,4,17.6,20,0.0);
INSERT INTO `Order Details` VALUES (10309,6,20.0,30,0.0);
INSERT INTO `Order Details` VALUES (10309,42,11.2,2,0.0);
INSERT INTO `Order Details` VALUES (10309,43,36.8,20,0.0);
INSERT INTO `Order Details` VALUES (10309,71,17.2,3,0.0);
INSERT INTO `Order Details` VALUES (10310,16,13.9,10,0.0);
INSERT INTO `Order Details` VALUES (10310,62,39.4,5,0.0);
INSERT INTO `Order Details` VALUES (10311,42,11.2,6,0.0);
INSERT INTO `Order Details` VALUES (10311,69,28.8,7,0.0);
INSERT INTO `Order Details` VALUES (10312,28,36.4,4,0.0);
INSERT INTO `Order Details` VALUES (10312,43,36.8,24,0.0);
INSERT INTO `Order Details` VALUES (10312,53,26.2,20,0.0);
INSERT INTO `Order Details` VALUES (10312,75,6.2,10,0.0);
INSERT INTO `Order Details` VALUES (10313,36,15.2,12,0.0);
INSERT INTO `Order Details` VALUES (10314,32,25.6,40,0.1);
INSERT INTO `Order Details` VALUES (10314,58,10.6,30,0.1);
INSERT INTO `Order Details` VALUES (10314,62,39.4,25,0.1);
INSERT INTO `Order Details` VALUES (10315,34,11.2,14,0.0);
INSERT INTO `Order Details` VALUES (10315,70,12.0,30,0.0);
INSERT INTO `Order Details` VALUES (10316,41,7.7,10,0.0);
INSERT INTO `Order Details` VALUES (10316,62,39.4,70,0.0);
INSERT INTO `Order Details` VALUES (10317,1,14.4,20,0.0);
INSERT INTO `Order Details` VALUES (10318,41,7.7,20,0.0);
INSERT INTO `Order Details` VALUES (10318,76,14.4,6,0.0);
INSERT INTO `Order Details` VALUES (10319,17,31.2,8,0.0);
INSERT INTO `Order Details` VALUES (10319,28,36.4,14,0.0);
INSERT INTO `Order Details` VALUES (10319,76,14.4,30,0.0);
INSERT INTO `Order Details` VALUES (10320,71,17.2,30,0.0);
INSERT INTO `Order Details` VALUES (10321,35,14.4,10,0.0);
INSERT INTO `Order Details` VALUES (10322,52,5.6,20,0.0);
INSERT INTO `Order Details` VALUES (10323,15,12.4,5,0.0);
INSERT INTO `Order Details` VALUES (10323,25,11.2,4,0.0);
INSERT INTO `Order Details` VALUES (10323,39,14.4,4,0.0);
INSERT INTO `Order Details` VALUES (10324,16,13.9,21,0.15);
INSERT INTO `Order Details` VALUES (10324,35,14.4,70,0.15);
INSERT INTO `Order Details` VALUES (10324,46,9.6,30,0.0);
INSERT INTO `Order Details` VALUES (10324,59,44.0,40,0.15);
INSERT INTO `Order Details` VALUES (10324,63,35.1,80,0.15);
INSERT INTO `Order Details` VALUES (10325,6,20.0,6,0.0);
INSERT INTO `Order Details` VALUES (10325,13,4.8,12,0.0);
INSERT INTO `Order Details` VALUES (10325,14,18.6,9,0.0);
INSERT INTO `Order Details` VALUES (10325,31,10.0,4,0.0);
INSERT INTO `Order Details` VALUES (10325,72,27.8,40,0.0);
INSERT INTO `Order Details` VALUES (10326,4,17.6,24,0.0);
INSERT INTO `Order Details` VALUES (10326,57,15.6,16,0.0);
INSERT INTO `Order Details` VALUES (10326,75,6.2,50,0.0);
INSERT INTO `Order Details` VALUES (10327,2,15.2,25,0.2);
INSERT INTO `Order Details` VALUES (10327,11,16.8,50,0.2);
INSERT INTO `Order Details` VALUES (10327,30,20.7,35,0.2);
INSERT INTO `Order Details` VALUES (10327,58,10.6,30,0.2);
INSERT INTO `Order Details` VALUES (10328,59,44.0,9,0.0);
INSERT INTO `Order Details` VALUES (10328,65,16.8,40,0.0);
INSERT INTO `Order Details` VALUES (10328,68,10.0,10,0.0);
INSERT INTO `Order Details` VALUES (10329,19,7.3,10,0.05);
INSERT INTO `Order Details` VALUES (10329,30,20.7,8,0.05);
INSERT INTO `Order Details` VALUES (10329,38,210.8,20,0.05);
INSERT INTO `Order Details` VALUES (10329,56,30.4,12,0.05);
INSERT INTO `Order Details` VALUES (10330,26,24.9,50,0.15);
INSERT INTO `Order Details` VALUES (10330,72,27.8,25,0.15);
INSERT INTO `Order Details` VALUES (10331,54,5.9,15,0.0);
INSERT INTO `Order Details` VALUES (10332,18,50.0,40,0.2);
INSERT INTO `Order Details` VALUES (10332,42,11.2,10,0.2);
INSERT INTO `Order Details` VALUES (10332,47,7.6,16,0.2);
INSERT INTO `Order Details` VALUES (10333,14,18.6,10,0.0);
INSERT INTO `Order Details` VALUES (10333,21,8.0,10,0.1);
INSERT INTO `Order Details` VALUES (10333,71,17.2,40,0.1);
INSERT INTO `Order Details` VALUES (10334,52,5.6,8,0.0);
INSERT INTO `Order Details` VALUES (10334,68,10.0,10,0.0);
INSERT INTO `Order Details` VALUES (10335,2,15.2,7,0.2);
INSERT INTO `Order Details` VALUES (10335,31,10.0,25,0.2);
INSERT INTO `Order Details` VALUES (10335,32,25.6,6,0.2);
INSERT INTO `Order Details` VALUES (10335,51,42.4,48,0.2);
INSERT INTO `Order Details` VALUES (10336,4,17.6,18,0.1);
INSERT INTO `Order Details` VALUES (10337,23,7.2,40,0.0);
INSERT INTO `Order Details` VALUES (10337,26,24.9,24,0.0);
INSERT INTO `Order Details` VALUES (10337,36,15.2,20,0.0);
INSERT INTO `Order Details` VALUES (10337,37,20.8,28,0.0);
INSERT INTO `Order Details` VALUES (10337,72,27.8,25,0.0);
INSERT INTO `Order Details` VALUES (10338,17,31.2,20,0.0);
INSERT INTO `Order Details` VALUES (10338,30,20.7,15,0.0);
INSERT INTO `Order Details` VALUES (10339,4,17.6,10,0.0);
INSERT INTO `Order Details` VALUES (10339,17,31.2,70,0.05);
INSERT INTO `Order Details` VALUES (10339,62,39.4,28,0.0);
INSERT INTO `Order Details` VALUES (10340,18,50.0,20,0.05);
INSERT INTO `Order Details` VALUES (10340,41,7.7,12,0.05);
INSERT INTO `Order Details` VALUES (10340,43,36.8,40,0.05);
INSERT INTO `Order Details` VALUES (10341,33,2.0,8,0.0);
INSERT INTO `Order Details` VALUES (10341,59,44.0,9,0.15);
INSERT INTO `Order Details` VALUES (10342,2,15.2,24,0.2);
INSERT INTO `Order Details` VALUES (10342,31,10.0,56,0.2);
INSERT INTO `Order Details` VALUES (10342,36,15.2,40,0.2);
INSERT INTO `Order Details` VALUES (10342,55,19.2,40,0.2);
INSERT INTO `Order Details` VALUES (10343,64,26.6,50,0.0);
INSERT INTO `Order Details` VALUES (10343,68,10.0,4,0.05);
INSERT INTO `Order Details` VALUES (10343,76,14.4,15,0.0);
INSERT INTO `Order Details` VALUES (10344,4,17.6,35,0.0);
INSERT INTO `Order Details` VALUES (10344,8,32.0,70,0.25);
INSERT INTO `Order Details` VALUES (10345,8,32.0,70,0.0);
INSERT INTO `Order Details` VALUES (10345,19,7.3,80,0.0);
INSERT INTO `Order Details` VALUES (10345,42,11.2,9,0.0);
INSERT INTO `Order Details` VALUES (10346,17,31.2,36,0.1);
INSERT INTO `Order Details` VALUES (10346,56,30.4,20,0.0);
INSERT INTO `Order Details` VALUES (10347,25,11.2,10,0.0);
INSERT INTO `Order Details` VALUES (10347,39,14.4,50,0.15);
INSERT INTO `Order Details` VALUES (10347,40,14.7,4,0.0);
INSERT INTO `Order Details` VALUES (10347,75,6.2,6,0.15);
INSERT INTO `Order Details` VALUES (10348,1,14.4,15,0.15);
INSERT INTO `Order Details` VALUES (10348,23,7.2,25,0.0);
INSERT INTO `Order Details` VALUES (10349,54,5.9,24,0.0);
INSERT INTO `Order Details` VALUES (10350,50,13.0,15,0.1);
INSERT INTO `Order Details` VALUES (10350,69,28.8,18,0.1);
INSERT INTO `Order Details` VALUES (10351,38,210.8,20,0.05);
INSERT INTO `Order Details` VALUES (10351,41,7.7,13,0.0);
INSERT INTO `Order Details` VALUES (10351,44,15.5,77,0.05);
INSERT INTO `Order Details` VALUES (10351,65,16.8,10,0.05);
INSERT INTO `Order Details` VALUES (10352,24,3.6,10,0.0);
INSERT INTO `Order Details` VALUES (10352,54,5.9,20,0.15);
INSERT INTO `Order Details` VALUES (10353,11,16.8,12,0.2);
INSERT INTO `Order Details` VALUES (10353,38,210.8,50,0.2);
INSERT INTO `Order Details` VALUES (10354,1,14.4,12,0.0);
INSERT INTO `Order Details` VALUES (10354,29,99.0,4,0.0);
INSERT INTO `Order Details` VALUES (10355,24,3.6,25,0.0);
INSERT INTO `Order Details` VALUES (10355,57,15.6,25,0.0);
INSERT INTO `Order Details` VALUES (10356,31,10.0,30,0.0);
INSERT INTO `Order Details` VALUES (10356,55,19.2,12,0.0);
INSERT INTO `Order Details` VALUES (10356,69,28.8,20,0.0);
INSERT INTO `Order Details` VALUES (10357,10,24.8,30,0.2);
INSERT INTO `Order Details` VALUES (10357,26,24.9,16,0.0);
INSERT INTO `Order Details` VALUES (10357,60,27.2,8,0.2);
INSERT INTO `Order Details` VALUES (10358,24,3.6,10,0.05);
INSERT INTO `Order Details` VALUES (10358,34,11.2,10,0.05);
INSERT INTO `Order Details` VALUES (10358,36,15.2,20,0.05);
INSERT INTO `Order Details` VALUES (10359,16,13.9,56,0.05);
INSERT INTO `Order Details` VALUES (10359,31,10.0,70,0.05);
INSERT INTO `Order Details` VALUES (10359,60,27.2,80,0.05);
INSERT INTO `Order Details` VALUES (10360,28,36.4,30,0.0);
INSERT INTO `Order Details` VALUES (10360,29,99.0,35,0.0);
INSERT INTO `Order Details` VALUES (10360,38,210.8,10,0.0);
INSERT INTO `Order Details` VALUES (10360,49,16.0,35,0.0);
INSERT INTO `Order Details` VALUES (10360,54,5.9,28,0.0);
INSERT INTO `Order Details` VALUES (10361,39,14.4,54,0.1);
INSERT INTO `Order Details` VALUES (10361,60,27.2,55,0.1);
INSERT INTO `Order Details` VALUES (10362,25,11.2,50,0.0);
INSERT INTO `Order Details` VALUES (10362,51,42.4,20,0.0);
INSERT INTO `Order Details` VALUES (10362,54,5.9,24,0.0);
INSERT INTO `Order Details` VALUES (10363,31,10.0,20,0.0);
INSERT INTO `Order Details` VALUES (10363,75,6.2,12,0.0);
INSERT INTO `Order Details` VALUES (10363,76,14.4,12,0.0);
INSERT INTO `Order Details` VALUES (10364,69,28.8,30,0.0);
INSERT INTO `Order Details` VALUES (10364,71,17.2,5,0.0);
INSERT INTO `Order Details` VALUES (10365,11,16.8,24,0.0);
INSERT INTO `Order Details` VALUES (10366,65,16.8,5,0.0);
INSERT INTO `Order Details` VALUES (10366,77,10.4,5,0.0);
INSERT INTO `Order Details` VALUES (10367,34,11.2,36,0.0);
INSERT INTO `Order Details` VALUES (10367,54,5.9,18,0.0);
INSERT INTO `Order Details` VALUES (10367,65,16.8,15,0.0);
INSERT INTO `Order Details` VALUES (10367,77,10.4,7,0.0);
INSERT INTO `Order Details` VALUES (10368,21,8.0,5,0.1);
INSERT INTO `Order Details` VALUES (10368,28,36.4,13,0.1);
INSERT INTO `Order Details` VALUES (10368,57,15.6,25,0.0);
INSERT INTO `Order Details` VALUES (10368,64,26.6,35,0.1);
INSERT INTO `Order Details` VALUES (10369,29,99.0,20,0.0);
INSERT INTO `Order Details` VALUES (10369,56,30.4,18,0.25);
INSERT INTO `Order Details` VALUES (10370,1,14.4,15,0.15);
INSERT INTO `Order Details` VALUES (10370,64,26.6,30,0.0);
INSERT INTO `Order Details` VALUES (10370,74,8.0,20,0.15);
INSERT INTO `Order Details` VALUES (10371,36,15.2,6,0.2);
INSERT INTO `Order Details` VALUES (10372,20,64.8,12,0.25);
INSERT INTO `Order Details` VALUES (10372,38,210.8,40,0.25);
INSERT INTO `Order Details` VALUES (10372,60,27.2,70,0.25);
INSERT INTO `Order Details` VALUES (10372,72,27.8,42,0.25);
INSERT INTO `Order Details` VALUES (10373,58,10.6,80,0.2);
INSERT INTO `Order Details` VALUES (10373,71,17.2,50,0.2);
INSERT INTO `Order Details` VALUES (10374,31,10.0,30,0.0);
INSERT INTO `Order Details` VALUES (10374,58,10.6,15,0.0);
INSERT INTO `Order Details` VALUES (10375,14,18.6,15,0.0);
INSERT INTO `Order Details` VALUES (10375,54,5.9,10,0.0);
INSERT INTO `Order Details` VALUES (10376,31,10.0,42,0.05);
INSERT INTO `Order Details` VALUES (10377,28,36.4,20,0.15);
INSERT INTO `Order Details` VALUES (10377,39,14.4,20,0.15);
INSERT INTO `Order Details` VALUES (10378,71,17.2,6,0.0);
INSERT INTO `Order Details` VALUES (10379,41,7.7,8,0.1);
INSERT INTO `Order Details` VALUES (10379,63,35.1,16,0.1);
INSERT INTO `Order Details` VALUES (10379,65,16.8,20,0.1);
INSERT INTO `Order Details` VALUES (10380,30,20.7,18,0.1);
INSERT INTO `Order Details` VALUES (10380,53,26.2,20,0.1);
INSERT INTO `Order Details` VALUES (10380,60,27.2,6,0.1);
INSERT INTO `Order Details` VALUES (10380,70,12.0,30,0.0);
INSERT INTO `Order Details` VALUES (10381,74,8.0,14,0.0);
INSERT INTO `Order Details` VALUES (10382,5,17.0,32,0.0);
INSERT INTO `Order Details` VALUES (10382,18,50.0,9,0.0);
INSERT INTO `Order Details` VALUES (10382,29,99.0,14,0.0);
INSERT INTO `Order Details` VALUES (10382,33,2.0,60,0.0);
INSERT INTO `Order Details` VALUES (10382,74,8.0,50,0.0);
INSERT INTO `Order Details` VALUES (10383,13,4.8,20,0.0);
INSERT INTO `Order Details` VALUES (10383,50,13.0,15,0.0);
INSERT INTO `Order Details` VALUES (10383,56,30.4,20,0.0);
INSERT INTO `Order Details` VALUES (10384,20,64.8,28,0.0);
INSERT INTO `Order Details` VALUES (10384,60,27.2,15,0.0);
INSERT INTO `Order Details` VALUES (10385,7,24.0,10,0.2);
INSERT INTO `Order Details` VALUES (10385,60,27.2,20,0.2);
INSERT INTO `Order Details` VALUES (10385,68,10.0,8,0.2);
INSERT INTO `Order Details` VALUES (10386,24,3.6,15,0.0);
INSERT INTO `Order Details` VALUES (10386,34,11.2,10,0.0);
INSERT INTO `Order Details` VALUES (10387,24,3.6,15,0.0);
INSERT INTO `Order Details` VALUES (10387,28,36.4,6,0.0);
INSERT INTO `Order Details` VALUES (10387,59,44.0,12,0.0);
INSERT INTO `Order Details` VALUES (10387,71,17.2,15,0.0);
INSERT INTO `Order Details` VALUES (10388,45,7.6,15,0.2);
INSERT INTO `Order Details` VALUES (10388,52,5.6,20,0.2);
INSERT INTO `Order Details` VALUES (10388,53,26.2,40,0.0);
INSERT INTO `Order Details` VALUES (10389,10,24.8,16,0.0);
INSERT INTO `Order Details` VALUES (10389,55,19.2,15,0.0);
INSERT INTO `Order Details` VALUES (10389,62,39.4,20,0.0);
INSERT INTO `Order Details` VALUES (10389,70,12.0,30,0.0);
INSERT INTO `Order Details` VALUES (10390,31,10.0,60,0.1);
INSERT INTO `Order Details` VALUES (10390,35,14.4,40,0.1);
INSERT INTO `Order Details` VALUES (10390,46,9.6,45,0.0);
INSERT INTO `Order Details` VALUES (10390,72,27.8,24,0.1);
INSERT INTO `Order Details` VALUES (10391,13,4.8,18,0.0);
INSERT INTO `Order Details` VALUES (10392,69,28.8,50,0.0);
INSERT INTO `Order Details` VALUES (10393,2,15.2,25,0.25);
INSERT INTO `Order Details` VALUES (10393,14,18.6,42,0.25);
INSERT INTO `Order Details` VALUES (10393,25,11.2,7,0.25);
INSERT INTO `Order Details` VALUES (10393,26,24.9,70,0.25);
INSERT INTO `Order Details` VALUES (10393,31,10.0,32,0.0);
INSERT INTO `Order Details` VALUES (10394,13,4.8,10,0.0);
INSERT INTO `Order Details` VALUES (10394,62,39.4,10,0.0);
INSERT INTO `Order Details` VALUES (10395,46,9.6,28,0.1);
INSERT INTO `Order Details` VALUES (10395,53,26.2,70,0.1);
INSERT INTO `Order Details` VALUES (10395,69,28.8,8,0.0);
INSERT INTO `Order Details` VALUES (10396,23,7.2,40,0.0);
INSERT INTO `Order Details` VALUES (10396,71,17.2,60,0.0);
INSERT INTO `Order Details` VALUES (10396,72,27.8,21,0.0);
INSERT INTO `Order Details` VALUES (10397,21,8.0,10,0.15);
INSERT INTO `Order Details` VALUES (10397,51,42.4,18,0.15);
INSERT INTO `Order Details` VALUES (10398,35,14.4,30,0.0);
INSERT INTO `Order Details` VALUES (10398,55,19.2,120,0.1);
INSERT INTO `Order Details` VALUES (10399,68,10.0,60,0.0);
INSERT INTO `Order Details` VALUES (10399,71,17.2,30,0.0);
INSERT INTO `Order Details` VALUES (10399,76,14.4,35,0.0);
INSERT INTO `Order Details` VALUES (10399,77,10.4,14,0.0);
INSERT INTO `Order Details` VALUES (10400,29,99.0,21,0.0);
INSERT INTO `Order Details` VALUES (10400,35,14.4,35,0.0);
INSERT INTO `Order Details` VALUES (10400,49,16.0,30,0.0);
INSERT INTO `Order Details` VALUES (10401,30,20.7,18,0.0);
INSERT INTO `Order Details` VALUES (10401,56,30.4,70,0.0);
INSERT INTO `Order Details` VALUES (10401,65,16.8,20,0.0);
INSERT INTO `Order Details` VALUES (10401,71,17.2,60,0.0);
INSERT INTO `Order Details` VALUES (10402,23,7.2,60,0.0);
INSERT INTO `Order Details` VALUES (10402,63,35.1,65,0.0);
INSERT INTO `Order Details` VALUES (10403,16,13.9,21,0.15);
INSERT INTO `Order Details` VALUES (10403,48,10.2,70,0.15);
INSERT INTO `Order Details` VALUES (10404,26,24.9,30,0.05);
INSERT INTO `Order Details` VALUES (10404,42,11.2,40,0.05);
INSERT INTO `Order Details` VALUES (10404,49,16.0,30,0.05);
INSERT INTO `Order Details` VALUES (10405,3,8.0,50,0.0);
INSERT INTO `Order Details` VALUES (10406,1,14.4,10,0.0);
INSERT INTO `Order Details` VALUES (10406,21,8.0,30,0.1);
INSERT INTO `Order Details` VALUES (10406,28,36.4,42,0.1);
INSERT INTO `Order Details` VALUES (10406,36,15.2,5,0.1);
INSERT INTO `Order Details` VALUES (10406,40,14.7,2,0.1);
INSERT INTO `Order Details` VALUES (10407,11,16.8,30,0.0);
INSERT INTO `Order Details` VALUES (10407,69,28.8,15,0.0);
INSERT INTO `Order Details` VALUES (10407,71,17.2,15,0.0);
INSERT INTO `Order Details` VALUES (10408,37,20.8,10,0.0);
INSERT INTO `Order Details` VALUES (10408,54,5.9,6,0.0);
INSERT INTO `Order Details` VALUES (10408,62,39.4,35,0.0);
INSERT INTO `Order Details` VALUES (10409,14,18.6,12,0.0);
INSERT INTO `Order Details` VALUES (10409,21,8.0,12,0.0);
INSERT INTO `Order Details` VALUES (10410,33,2.0,49,0.0);
INSERT INTO `Order Details` VALUES (10410,59,44.0,16,0.0);
INSERT INTO `Order Details` VALUES (10411,41,7.7,25,0.2);
INSERT INTO `Order Details` VALUES (10411,44,15.5,40,0.2);
INSERT INTO `Order Details` VALUES (10411,59,44.0,9,0.2);
INSERT INTO `Order Details` VALUES (10412,14,18.6,20,0.1);
INSERT INTO `Order Details` VALUES (10413,1,14.4,24,0.0);
INSERT INTO `Order Details` VALUES (10413,62,39.4,40,0.0);
INSERT INTO `Order Details` VALUES (10413,76,14.4,14,0.0);
INSERT INTO `Order Details` VALUES (10414,19,7.3,18,0.05);
INSERT INTO `Order Details` VALUES (10414,33,2.0,50,0.0);
INSERT INTO `Order Details` VALUES (10415,17,31.2,2,0.0);
INSERT INTO `Order Details` VALUES (10415,33,2.0,20,0.0);
INSERT INTO `Order Details` VALUES (10416,19,7.3,20,0.0);
INSERT INTO `Order Details` VALUES (10416,53,26.2,10,0.0);
INSERT INTO `Order Details` VALUES (10416,57,15.6,20,0.0);
INSERT INTO `Order Details` VALUES (10417,38,210.8,50,0.0);
INSERT INTO `Order Details` VALUES (10417,46,9.6,2,0.25);
INSERT INTO `Order Details` VALUES (10417,68,10.0,36,0.25);
INSERT INTO `Order Details` VALUES (10417,77,10.4,35,0.0);
INSERT INTO `Order Details` VALUES (10418,2,15.2,60,0.0);
INSERT INTO `Order Details` VALUES (10418,47,7.6,55,0.0);
INSERT INTO `Order Details` VALUES (10418,61,22.8,16,0.0);
INSERT INTO `Order Details` VALUES (10418,74,8.0,15,0.0);
INSERT INTO `Order Details` VALUES (10419,60,27.2,60,0.05);
INSERT INTO `Order Details` VALUES (10419,69,28.8,20,0.05);
INSERT INTO `Order Details` VALUES (10420,9,77.6,20,0.1);
INSERT INTO `Order Details` VALUES (10420,13,4.8,2,0.1);
INSERT INTO `Order Details` VALUES (10420,70,12.0,8,0.1);
INSERT INTO `Order Details` VALUES (10420,73,12.0,20,0.1);
INSERT INTO `Order Details` VALUES (10421,19,7.3,4,0.15);
INSERT INTO `Order Details` VALUES (10421,26,24.9,30,0.0);
INSERT INTO `Order Details` VALUES (10421,53,26.2,15,0.15);
INSERT INTO `Order Details` VALUES (10421,77,10.4,10,0.15);
INSERT INTO `Order Details` VALUES (10422,26,24.9,2,0.0);
INSERT INTO `Order Details` VALUES (10423,31,10.0,14,0.0);
INSERT INTO `Order Details` VALUES (10423,59,44.0,20,0.0);
INSERT INTO `Order Details` VALUES (10424,35,14.4,60,0.2);
INSERT INTO `Order Details` VALUES (10424,38,210.8,49,0.2);
INSERT INTO `Order Details` VALUES (10424,68,10.0,30,0.2);
INSERT INTO `Order Details` VALUES (10425,55,19.2,10,0.25);
INSERT INTO `Order Details` VALUES (10425,76,14.4,20,0.25);
INSERT INTO `Order Details` VALUES (10426,56,30.4,5,0.0);
INSERT INTO `Order Details` VALUES (10426,64,26.6,7,0.0);
INSERT INTO `Order Details` VALUES (10427,14,18.6,35,0.0);
INSERT INTO `Order Details` VALUES (10428,46,9.6,20,0.0);
INSERT INTO `Order Details` VALUES (10429,50,13.0,40,0.0);
INSERT INTO `Order Details` VALUES (10429,63,35.1,35,0.25);
INSERT INTO `Order Details` VALUES (10430,17,31.2,45,0.2);
INSERT INTO `Order Details` VALUES (10430,21,8.0,50,0.0);
INSERT INTO `Order Details` VALUES (10430,56,30.4,30,0.0);
INSERT INTO `Order Details` VALUES (10430,59,44.0,70,0.2);
INSERT INTO `Order Details` VALUES (10431,17,31.2,50,0.25);
INSERT INTO `Order Details` VALUES (10431,40,14.7,50,0.25);
INSERT INTO `Order Details` VALUES (10431,47,7.6,30,0.25);
INSERT INTO `Order Details` VALUES (10432,26,24.9,10,0.0);
INSERT INTO `Order Details` VALUES (10432,54,5.9,40,0.0);
INSERT INTO `Order Details` VALUES (10433,56,30.4,28,0.0);
INSERT INTO `Order Details` VALUES (10434,11,16.8,6,0.0);
INSERT INTO `Order Details` VALUES (10434,76,14.4,18,0.15);
INSERT INTO `Order Details` VALUES (10435,2,15.2,10,0.0);
INSERT INTO `Order Details` VALUES (10435,22,16.8,12,0.0);
INSERT INTO `Order Details` VALUES (10435,72,27.8,10,0.0);
INSERT INTO `Order Details` VALUES (10436,46,9.6,5,0.0);
INSERT INTO `Order Details` VALUES (10436,56,30.4,40,0.1);
INSERT INTO `Order Details` VALUES (10436,64,26.6,30,0.1);
INSERT INTO `Order Details` VALUES (10436,75,6.2,24,0.1);
INSERT INTO `Order Details` VALUES (10437,53,26.2,15,0.0);
INSERT INTO `Order Details` VALUES (10438,19,7.3,15,0.2);
INSERT INTO `Order Details` VALUES (10438,34,11.2,20,0.2);
INSERT INTO `Order Details` VALUES (10438,57,15.6,15,0.2);
INSERT INTO `Order Details` VALUES (10439,12,30.4,15,0.0);
INSERT INTO `Order Details` VALUES (10439,16,13.9,16,0.0);
INSERT INTO `Order Details` VALUES (10439,64,26.6,6,0.0);
INSERT INTO `Order Details` VALUES (10439,74,8.0,30,0.0);
INSERT INTO `Order Details` VALUES (10440,2,15.2,45,0.15);
INSERT INTO `Order Details` VALUES (10440,16,13.9,49,0.15);
INSERT INTO `Order Details` VALUES (10440,29,99.0,24,0.15);
INSERT INTO `Order Details` VALUES (10440,61,22.8,90,0.15);
INSERT INTO `Order Details` VALUES (10441,27,35.1,50,0.0);
INSERT INTO `Order Details` VALUES (10442,11,16.8,30,0.0);
INSERT INTO `Order Details` VALUES (10442,54,5.9,80,0.0);
INSERT INTO `Order Details` VALUES (10442,66,13.6,60,0.0);
INSERT INTO `Order Details` VALUES (10443,11,16.8,6,0.2);
INSERT INTO `Order Details` VALUES (10443,28,36.4,12,0.0);
INSERT INTO `Order Details` VALUES (10444,17,31.2,10,0.0);
INSERT INTO `Order Details` VALUES (10444,26,24.9,15,0.0);
INSERT INTO `Order Details` VALUES (10444,35,14.4,8,0.0);
INSERT INTO `Order Details` VALUES (10444,41,7.7,30,0.0);
INSERT INTO `Order Details` VALUES (10445,39,14.4,6,0.0);
INSERT INTO `Order Details` VALUES (10445,54,5.9,15,0.0);
INSERT INTO `Order Details` VALUES (10446,19,7.3,12,0.1);
INSERT INTO `Order Details` VALUES (10446,24,3.6,20,0.1);
INSERT INTO `Order Details` VALUES (10446,31,10.0,3,0.1);
INSERT INTO `Order Details` VALUES (10446,52,5.6,15,0.1);
INSERT INTO `Order Details` VALUES (10447,19,7.3,40,0.0);
INSERT INTO `Order Details` VALUES (10447,65,16.8,35,0.0);
INSERT INTO `Order Details` VALUES (10447,71,17.2,2,0.0);
INSERT INTO `Order Details` VALUES (10448,26,24.9,6,0.0);
INSERT INTO `Order Details` VALUES (10448,40,14.7,20,0.0);
INSERT INTO `Order Details` VALUES (10449,10,24.8,14,0.0);
INSERT INTO `Order Details` VALUES (10449,52,5.6,20,0.0);
INSERT INTO `Order Details` VALUES (10449,62,39.4,35,0.0);
INSERT INTO `Order Details` VALUES (10450,10,24.8,20,0.2);
INSERT INTO `Order Details` VALUES (10450,54,5.9,6,0.2);
INSERT INTO `Order Details` VALUES (10451,55,19.2,120,0.1);
INSERT INTO `Order Details` VALUES (10451,64,26.6,35,0.1);
INSERT INTO `Order Details` VALUES (10451,65,16.8,28,0.1);
INSERT INTO `Order Details` VALUES (10451,77,10.4,55,0.1);
INSERT INTO `Order Details` VALUES (10452,28,36.4,15,0.0);
INSERT INTO `Order Details` VALUES (10452,44,15.5,100,0.05);
INSERT INTO `Order Details` VALUES (10453,48,10.2,15,0.1);
INSERT INTO `Order Details` VALUES (10453,70,12.0,25,0.1);
INSERT INTO `Order Details` VALUES (10454,16,13.9,20,0.2);
INSERT INTO `Order Details` VALUES (10454,33,2.0,20,0.2);
INSERT INTO `Order Details` VALUES (10454,46,9.6,10,0.2);
INSERT INTO `Order Details` VALUES (10455,39,14.4,20,0.0);
INSERT INTO `Order Details` VALUES (10455,53,26.2,50,0.0);
INSERT INTO `Order Details` VALUES (10455,61,22.8,25,0.0);
INSERT INTO `Order Details` VALUES (10455,71,17.2,30,0.0);
INSERT INTO `Order Details` VALUES (10456,21,8.0,40,0.15);
INSERT INTO `Order Details` VALUES (10456,49,16.0,21,0.15);
INSERT INTO `Order Details` VALUES (10457,59,44.0,36,0.0);
INSERT INTO `Order Details` VALUES (10458,26,24.9,30,0.0);
INSERT INTO `Order Details` VALUES (10458,28,36.4,30,0.0);
INSERT INTO `Order Details` VALUES (10458,43,36.8,20,0.0);
INSERT INTO `Order Details` VALUES (10458,56,30.4,15,0.0);
INSERT INTO `Order Details` VALUES (10458,71,17.2,50,0.0);
INSERT INTO `Order Details` VALUES (10459,7,24.0,16,0.05);
INSERT INTO `Order Details` VALUES (10459,46,9.6,20,0.05);
INSERT INTO `Order Details` VALUES (10459,72,27.8,40,0.0);
INSERT INTO `Order Details` VALUES (10460,68,10.0,21,0.25);
INSERT INTO `Order Details` VALUES (10460,75,6.2,4,0.25);
INSERT INTO `Order Details` VALUES (10461,21,8.0,40,0.25);
INSERT INTO `Order Details` VALUES (10461,30,20.7,28,0.25);
INSERT INTO `Order Details` VALUES (10461,55,19.2,60,0.25);
INSERT INTO `Order Details` VALUES (10462,13,4.8,1,0.0);
INSERT INTO `Order Details` VALUES (10462,23,7.2,21,0.0);
INSERT INTO `Order Details` VALUES (10463,19,7.3,21,0.0);
INSERT INTO `Order Details` VALUES (10463,42,11.2,50,0.0);
INSERT INTO `Order Details` VALUES (10464,4,17.6,16,0.2);
INSERT INTO `Order Details` VALUES (10464,43,36.8,3,0.0);
INSERT INTO `Order Details` VALUES (10464,56,30.4,30,0.2);
INSERT INTO `Order Details` VALUES (10464,60,27.2,20,0.0);
INSERT INTO `Order Details` VALUES (10465,24,3.6,25,0.0);
INSERT INTO `Order Details` VALUES (10465,29,99.0,18,0.1);
INSERT INTO `Order Details` VALUES (10465,40,14.7,20,0.0);
INSERT INTO `Order Details` VALUES (10465,45,7.6,30,0.1);
INSERT INTO `Order Details` VALUES (10465,50,13.0,25,0.0);
INSERT INTO `Order Details` VALUES (10466,11,16.8,10,0.0);
INSERT INTO `Order Details` VALUES (10466,46,9.6,5,0.0);
INSERT INTO `Order Details` VALUES (10467,24,3.6,28,0.0);
INSERT INTO `Order Details` VALUES (10467,25,11.2,12,0.0);
INSERT INTO `Order Details` VALUES (10468,30,20.7,8,0.0);
INSERT INTO `Order Details` VALUES (10468,43,36.8,15,0.0);
INSERT INTO `Order Details` VALUES (10469,2,15.2,40,0.15);
INSERT INTO `Order Details` VALUES (10469,16,13.9,35,0.15);
INSERT INTO `Order Details` VALUES (10469,44,15.5,2,0.15);
INSERT INTO `Order Details` VALUES (10470,18,50.0,30,0.0);
INSERT INTO `Order Details` VALUES (10470,23,7.2,15,0.0);
INSERT INTO `Order Details` VALUES (10470,64,26.6,8,0.0);
INSERT INTO `Order Details` VALUES (10471,7,24.0,30,0.0);
INSERT INTO `Order Details` VALUES (10471,56,30.4,20,0.0);
INSERT INTO `Order Details` VALUES (10472,24,3.6,80,0.05);
INSERT INTO `Order Details` VALUES (10472,51,42.4,18,0.0);
INSERT INTO `Order Details` VALUES (10473,33,2.0,12,0.0);
INSERT INTO `Order Details` VALUES (10473,71,17.2,12,0.0);
INSERT INTO `Order Details` VALUES (10474,14,18.6,12,0.0);
INSERT INTO `Order Details` VALUES (10474,28,36.4,18,0.0);
INSERT INTO `Order Details` VALUES (10474,40,14.7,21,0.0);
INSERT INTO `Order Details` VALUES (10474,75,6.2,10,0.0);
INSERT INTO `Order Details` VALUES (10475,31,10.0,35,0.15);
INSERT INTO `Order Details` VALUES (10475,66,13.6,60,0.15);
INSERT INTO `Order Details` VALUES (10475,76,14.4,42,0.15);
INSERT INTO `Order Details` VALUES (10476,55,19.2,2,0.05);
INSERT INTO `Order Details` VALUES (10476,70,12.0,12,0.0);
INSERT INTO `Order Details` VALUES (10477,1,14.4,15,0.0);
INSERT INTO `Order Details` VALUES (10477,21,8.0,21,0.25);
INSERT INTO `Order Details` VALUES (10477,39,14.4,20,0.25);
INSERT INTO `Order Details` VALUES (10478,10,24.8,20,0.05);
INSERT INTO `Order Details` VALUES (10479,38,210.8,30,0.0);
INSERT INTO `Order Details` VALUES (10479,53,26.2,28,0.0);
INSERT INTO `Order Details` VALUES (10479,59,44.0,60,0.0);
INSERT INTO `Order Details` VALUES (10479,64,26.6,30,0.0);
INSERT INTO `Order Details` VALUES (10480,47,7.6,30,0.0);
INSERT INTO `Order Details` VALUES (10480,59,44.0,12,0.0);
INSERT INTO `Order Details` VALUES (10481,49,16.0,24,0.0);
INSERT INTO `Order Details` VALUES (10481,60,27.2,40,0.0);
INSERT INTO `Order Details` VALUES (10482,40,14.7,10,0.0);
INSERT INTO `Order Details` VALUES (10483,34,11.2,35,0.05);
INSERT INTO `Order Details` VALUES (10483,77,10.4,30,0.05);
INSERT INTO `Order Details` VALUES (10484,21,8.0,14,0.0);
INSERT INTO `Order Details` VALUES (10484,40,14.7,10,0.0);
INSERT INTO `Order Details` VALUES (10484,51,42.4,3,0.0);
INSERT INTO `Order Details` VALUES (10485,2,15.2,20,0.1);
INSERT INTO `Order Details` VALUES (10485,3,8.0,20,0.1);
INSERT INTO `Order Details` VALUES (10485,55,19.2,30,0.1);
INSERT INTO `Order Details` VALUES (10485,70,12.0,60,0.1);
INSERT INTO `Order Details` VALUES (10486,11,16.8,5,0.0);
INSERT INTO `Order Details` VALUES (10486,51,42.4,25,0.0);
INSERT INTO `Order Details` VALUES (10486,74,8.0,16,0.0);
INSERT INTO `Order Details` VALUES (10487,19,7.3,5,0.0);
INSERT INTO `Order Details` VALUES (10487,26,24.9,30,0.0);
INSERT INTO `Order Details` VALUES (10487,54,5.9,24,0.25);
INSERT INTO `Order Details` VALUES (10488,59,44.0,30,0.0);
INSERT INTO `Order Details` VALUES (10488,73,12.0,20,0.2);
INSERT INTO `Order Details` VALUES (10489,11,16.8,15,0.25);
INSERT INTO `Order Details` VALUES (10489,16,13.9,18,0.0);
INSERT INTO `Order Details` VALUES (10490,59,44.0,60,0.0);
INSERT INTO `Order Details` VALUES (10490,68,10.0,30,0.0);
INSERT INTO `Order Details` VALUES (10490,75,6.2,36,0.0);
INSERT INTO `Order Details` VALUES (10491,44,15.5,15,0.15);
INSERT INTO `Order Details` VALUES (10491,77,10.4,7,0.15);
INSERT INTO `Order Details` VALUES (10492,25,11.2,60,0.05);
INSERT INTO `Order Details` VALUES (10492,42,11.2,20,0.05);
INSERT INTO `Order Details` VALUES (10493,65,16.8,15,0.1);
INSERT INTO `Order Details` VALUES (10493,66,13.6,10,0.1);
INSERT INTO `Order Details` VALUES (10493,69,28.8,10,0.1);
INSERT INTO `Order Details` VALUES (10494,56,30.4,30,0.0);
INSERT INTO `Order Details` VALUES (10495,23,7.2,10,0.0);
INSERT INTO `Order Details` VALUES (10495,41,7.7,20,0.0);
INSERT INTO `Order Details` VALUES (10495,77,10.4,5,0.0);
INSERT INTO `Order Details` VALUES (10496,31,10.0,20,0.05);
INSERT INTO `Order Details` VALUES (10497,56,30.4,14,0.0);
INSERT INTO `Order Details` VALUES (10497,72,27.8,25,0.0);
INSERT INTO `Order Details` VALUES (10497,77,10.4,25,0.0);
INSERT INTO `Order Details` VALUES (10498,24,4.5,14,0.0);
INSERT INTO `Order Details` VALUES (10498,40,18.4,5,0.0);
INSERT INTO `Order Details` VALUES (10498,42,14.0,30,0.0);
INSERT INTO `Order Details` VALUES (10499,28,45.6,20,0.0);
INSERT INTO `Order Details` VALUES (10499,49,20.0,25,0.0);
INSERT INTO `Order Details` VALUES (10500,15,15.5,12,0.05);
INSERT INTO `Order Details` VALUES (10500,28,45.6,8,0.05);
INSERT INTO `Order Details` VALUES (10501,54,7.45,20,0.0);
INSERT INTO `Order Details` VALUES (10502,45,9.5,21,0.0);
INSERT INTO `Order Details` VALUES (10502,53,32.8,6,0.0);
INSERT INTO `Order Details` VALUES (10502,67,14.0,30,0.0);
INSERT INTO `Order Details` VALUES (10503,14,23.25,70,0.0);
INSERT INTO `Order Details` VALUES (10503,65,21.05,20,0.0);
INSERT INTO `Order Details` VALUES (10504,2,19.0,12,0.0);
INSERT INTO `Order Details` VALUES (10504,21,10.0,12,0.0);
INSERT INTO `Order Details` VALUES (10504,53,32.8,10,0.0);
INSERT INTO `Order Details` VALUES (10504,61,28.5,25,0.0);
INSERT INTO `Order Details` VALUES (10505,62,49.3,3,0.0);
INSERT INTO `Order Details` VALUES (10506,25,14.0,18,0.1);
INSERT INTO `Order Details` VALUES (10506,70,15.0,14,0.1);
INSERT INTO `Order Details` VALUES (10507,43,46.0,15,0.15);
INSERT INTO `Order Details` VALUES (10507,48,12.75,15,0.15);
INSERT INTO `Order Details` VALUES (10508,13,6.0,10,0.0);
INSERT INTO `Order Details` VALUES (10508,39,18.0,10,0.0);
INSERT INTO `Order Details` VALUES (10509,28,45.6,3,0.0);
INSERT INTO `Order Details` VALUES (10510,29,123.79,36,0.0);
INSERT INTO `Order Details` VALUES (10510,75,7.75,36,0.1);
INSERT INTO `Order Details` VALUES (10511,4,22.0,50,0.15);
INSERT INTO `Order Details` VALUES (10511,7,30.0,50,0.15);
INSERT INTO `Order Details` VALUES (10511,8,40.0,10,0.15);
INSERT INTO `Order Details` VALUES (10512,24,4.5,10,0.15);
INSERT INTO `Order Details` VALUES (10512,46,12.0,9,0.15);
INSERT INTO `Order Details` VALUES (10512,47,9.5,6,0.15);
INSERT INTO `Order Details` VALUES (10512,60,34.0,12,0.15);
INSERT INTO `Order Details` VALUES (10513,21,10.0,40,0.2);
INSERT INTO `Order Details` VALUES (10513,32,32.0,50,0.2);
INSERT INTO `Order Details` VALUES (10513,61,28.5,15,0.2);
INSERT INTO `Order Details` VALUES (10514,20,81.0,39,0.0);
INSERT INTO `Order Details` VALUES (10514,28,45.6,35,0.0);
INSERT INTO `Order Details` VALUES (10514,56,38.0,70,0.0);
INSERT INTO `Order Details` VALUES (10514,65,21.05,39,0.0);
INSERT INTO `Order Details` VALUES (10514,75,7.75,50,0.0);
INSERT INTO `Order Details` VALUES (10515,9,97.0,16,0.15);
INSERT INTO `Order Details` VALUES (10515,16,17.45,50,0.0);
INSERT INTO `Order Details` VALUES (10515,27,43.9,120,0.0);
INSERT INTO `Order Details` VALUES (10515,33,2.5,16,0.15);
INSERT INTO `Order Details` VALUES (10515,60,34.0,84,0.15);
INSERT INTO `Order Details` VALUES (10516,18,62.5,25,0.1);
INSERT INTO `Order Details` VALUES (10516,41,9.65,80,0.1);
INSERT INTO `Order Details` VALUES (10516,42,14.0,20,0.0);
INSERT INTO `Order Details` VALUES (10517,52,7.0,6,0.0);
INSERT INTO `Order Details` VALUES (10517,59,55.0,4,0.0);
INSERT INTO `Order Details` VALUES (10517,70,15.0,6,0.0);
INSERT INTO `Order Details` VALUES (10518,24,4.5,5,0.0);
INSERT INTO `Order Details` VALUES (10518,38,263.5,15,0.0);
INSERT INTO `Order Details` VALUES (10518,44,19.45,9,0.0);
INSERT INTO `Order Details` VALUES (10519,10,31.0,16,0.05);
INSERT INTO `Order Details` VALUES (10519,56,38.0,40,0.0);
INSERT INTO `Order Details` VALUES (10519,60,34.0,10,0.05);
INSERT INTO `Order Details` VALUES (10520,24,4.5,8,0.0);
INSERT INTO `Order Details` VALUES (10520,53,32.8,5,0.0);
INSERT INTO `Order Details` VALUES (10521,35,18.0,3,0.0);
INSERT INTO `Order Details` VALUES (10521,41,9.65,10,0.0);
INSERT INTO `Order Details` VALUES (10521,68,12.5,6,0.0);
INSERT INTO `Order Details` VALUES (10522,1,18.0,40,0.2);
INSERT INTO `Order Details` VALUES (10522,8,40.0,24,0.0);
INSERT INTO `Order Details` VALUES (10522,30,25.89,20,0.2);
INSERT INTO `Order Details` VALUES (10522,40,18.4,25,0.2);
INSERT INTO `Order Details` VALUES (10523,17,39.0,25,0.1);
INSERT INTO `Order Details` VALUES (10523,20,81.0,15,0.1);
INSERT INTO `Order Details` VALUES (10523,37,26.0,18,0.1);
INSERT INTO `Order Details` VALUES (10523,41,9.65,6,0.1);
INSERT INTO `Order Details` VALUES (10524,10,31.0,2,0.0);
INSERT INTO `Order Details` VALUES (10524,30,25.89,10,0.0);
INSERT INTO `Order Details` VALUES (10524,43,46.0,60,0.0);
INSERT INTO `Order Details` VALUES (10524,54,7.45,15,0.0);
INSERT INTO `Order Details` VALUES (10525,36,19.0,30,0.0);
INSERT INTO `Order Details` VALUES (10525,40,18.4,15,0.1);
INSERT INTO `Order Details` VALUES (10526,1,18.0,8,0.15);
INSERT INTO `Order Details` VALUES (10526,13,6.0,10,0.0);
INSERT INTO `Order Details` VALUES (10526,56,38.0,30,0.15);
INSERT INTO `Order Details` VALUES (10527,4,22.0,50,0.1);
INSERT INTO `Order Details` VALUES (10527,36,19.0,30,0.1);
INSERT INTO `Order Details` VALUES (10528,11,21.0,3,0.0);
INSERT INTO `Order Details` VALUES (10528,33,2.5,8,0.2);
INSERT INTO `Order Details` VALUES (10528,72,34.8,9,0.0);
INSERT INTO `Order Details` VALUES (10529,55,24.0,14,0.0);
INSERT INTO `Order Details` VALUES (10529,68,12.5,20,0.0);
INSERT INTO `Order Details` VALUES (10529,69,36.0,10,0.0);
INSERT INTO `Order Details` VALUES (10530,17,39.0,40,0.0);
INSERT INTO `Order Details` VALUES (10530,43,46.0,25,0.0);
INSERT INTO `Order Details` VALUES (10530,61,28.5,20,0.0);
INSERT INTO `Order Details` VALUES (10530,76,18.0,50,0.0);
INSERT INTO `Order Details` VALUES (10531,59,55.0,2,0.0);
INSERT INTO `Order Details` VALUES (10532,30,25.89,15,0.0);
INSERT INTO `Order Details` VALUES (10532,66,17.0,24,0.0);
INSERT INTO `Order Details` VALUES (10533,4,22.0,50,0.05);
INSERT INTO `Order Details` VALUES (10533,72,34.8,24,0.0);
INSERT INTO `Order Details` VALUES (10533,73,15.0,24,0.05);
INSERT INTO `Order Details` VALUES (10534,30,25.89,10,0.0);
INSERT INTO `Order Details` VALUES (10534,40,18.4,10,0.2);
INSERT INTO `Order Details` VALUES (10534,54,7.45,10,0.2);
INSERT INTO `Order Details` VALUES (10535,11,21.0,50,0.1);
INSERT INTO `Order Details` VALUES (10535,40,18.4,10,0.1);
INSERT INTO `Order Details` VALUES (10535,57,19.5,5,0.1);
INSERT INTO `Order Details` VALUES (10535,59,55.0,15,0.1);
INSERT INTO `Order Details` VALUES (10536,12,38.0,15,0.25);
INSERT INTO `Order Details` VALUES (10536,31,12.5,20,0.0);
INSERT INTO `Order Details` VALUES (10536,33,2.5,30,0.0);
INSERT INTO `Order Details` VALUES (10536,60,34.0,35,0.25);
INSERT INTO `Order Details` VALUES (10537,31,12.5,30,0.0);
INSERT INTO `Order Details` VALUES (10537,51,53.0,6,0.0);
INSERT INTO `Order Details` VALUES (10537,58,13.25,20,0.0);
INSERT INTO `Order Details` VALUES (10537,72,34.8,21,0.0);
INSERT INTO `Order Details` VALUES (10537,73,15.0,9,0.0);
INSERT INTO `Order Details` VALUES (10538,70,15.0,7,0.0);
INSERT INTO `Order Details` VALUES (10538,72,34.8,1,0.0);
INSERT INTO `Order Details` VALUES (10539,13,6.0,8,0.0);
INSERT INTO `Order Details` VALUES (10539,21,10.0,15,0.0);
INSERT INTO `Order Details` VALUES (10539,33,2.5,15,0.0);
INSERT INTO `Order Details` VALUES (10539,49,20.0,6,0.0);
INSERT INTO `Order Details` VALUES (10540,3,10.0,60,0.0);
INSERT INTO `Order Details` VALUES (10540,26,31.23,40,0.0);
INSERT INTO `Order Details` VALUES (10540,38,263.5,30,0.0);
INSERT INTO `Order Details` VALUES (10540,68,12.5,35,0.0);
INSERT INTO `Order Details` VALUES (10541,24,4.5,35,0.1);
INSERT INTO `Order Details` VALUES (10541,38,263.5,4,0.1);
INSERT INTO `Order Details` VALUES (10541,65,21.05,36,0.1);
INSERT INTO `Order Details` VALUES (10541,71,21.5,9,0.1);
INSERT INTO `Order Details` VALUES (10542,11,21.0,15,0.05);
INSERT INTO `Order Details` VALUES (10542,54,7.45,24,0.05);
INSERT INTO `Order Details` VALUES (10543,12,38.0,30,0.15);
INSERT INTO `Order Details` VALUES (10543,23,9.0,70,0.15);
INSERT INTO `Order Details` VALUES (10544,28,45.6,7,0.0);
INSERT INTO `Order Details` VALUES (10544,67,14.0,7,0.0);
INSERT INTO `Order Details` VALUES (10545,11,21.0,10,0.0);
INSERT INTO `Order Details` VALUES (10546,7,30.0,10,0.0);
INSERT INTO `Order Details` VALUES (10546,35,18.0,30,0.0);
INSERT INTO `Order Details` VALUES (10546,62,49.3,40,0.0);
INSERT INTO `Order Details` VALUES (10547,32,32.0,24,0.15);
INSERT INTO `Order Details` VALUES (10547,36,19.0,60,0.0);
INSERT INTO `Order Details` VALUES (10548,34,14.0,10,0.25);
INSERT INTO `Order Details` VALUES (10548,41,9.65,14,0.0);
INSERT INTO `Order Details` VALUES (10549,31,12.5,55,0.15);
INSERT INTO `Order Details` VALUES (10549,45,9.5,100,0.15);
INSERT INTO `Order Details` VALUES (10549,51,53.0,48,0.15);
INSERT INTO `Order Details` VALUES (10550,17,39.0,8,0.1);
INSERT INTO `Order Details` VALUES (10550,19,9.2,10,0.0);
INSERT INTO `Order Details` VALUES (10550,21,10.0,6,0.1);
INSERT INTO `Order Details` VALUES (10550,61,28.5,10,0.1);
INSERT INTO `Order Details` VALUES (10551,16,17.45,40,0.15);
INSERT INTO `Order Details` VALUES (10551,35,18.0,20,0.15);
INSERT INTO `Order Details` VALUES (10551,44,19.45,40,0.0);
INSERT INTO `Order Details` VALUES (10552,69,36.0,18,0.0);
INSERT INTO `Order Details` VALUES (10552,75,7.75,30,0.0);
INSERT INTO `Order Details` VALUES (10553,11,21.0,15,0.0);
INSERT INTO `Order Details` VALUES (10553,16,17.45,14,0.0);
INSERT INTO `Order Details` VALUES (10553,22,21.0,24,0.0);
INSERT INTO `Order Details` VALUES (10553,31,12.5,30,0.0);
INSERT INTO `Order Details` VALUES (10553,35,18.0,6,0.0);
INSERT INTO `Order Details` VALUES (10554,16,17.45,30,0.05);
INSERT INTO `Order Details` VALUES (10554,23,9.0,20,0.05);
INSERT INTO `Order Details` VALUES (10554,62,49.3,20,0.05);
INSERT INTO `Order Details` VALUES (10554,77,13.0,10,0.05);
INSERT INTO `Order Details` VALUES (10555,14,23.25,30,0.2);
INSERT INTO `Order Details` VALUES (10555,19,9.2,35,0.2);
INSERT INTO `Order Details` VALUES (10555,24,4.5,18,0.2);
INSERT INTO `Order Details` VALUES (10555,51,53.0,20,0.2);
INSERT INTO `Order Details` VALUES (10555,56,38.0,40,0.2);
INSERT INTO `Order Details` VALUES (10556,72,34.8,24,0.0);
INSERT INTO `Order Details` VALUES (10557,64,33.25,30,0.0);
INSERT INTO `Order Details` VALUES (10557,75,7.75,20,0.0);
INSERT INTO `Order Details` VALUES (10558,47,9.5,25,0.0);
INSERT INTO `Order Details` VALUES (10558,51,53.0,20,0.0);
INSERT INTO `Order Details` VALUES (10558,52,7.0,30,0.0);
INSERT INTO `Order Details` VALUES (10558,53,32.8,18,0.0);
INSERT INTO `Order Details` VALUES (10558,73,15.0,3,0.0);
INSERT INTO `Order Details` VALUES (10559,41,9.65,12,0.05);
INSERT INTO `Order Details` VALUES (10559,55,24.0,18,0.05);
INSERT INTO `Order Details` VALUES (10560,30,25.89,20,0.0);
INSERT INTO `Order Details` VALUES (10560,62,49.3,15,0.25);
INSERT INTO `Order Details` VALUES (10561,44,19.45,10,0.0);
INSERT INTO `Order Details` VALUES (10561,51,53.0,50,0.0);
INSERT INTO `Order Details` VALUES (10562,33,2.5,20,0.1);
INSERT INTO `Order Details` VALUES (10562,62,49.3,10,0.1);
INSERT INTO `Order Details` VALUES (10563,36,19.0,25,0.0);
INSERT INTO `Order Details` VALUES (10563,52,7.0,70,0.0);
INSERT INTO `Order Details` VALUES (10564,17,39.0,16,0.05);
INSERT INTO `Order Details` VALUES (10564,31,12.5,6,0.05);
INSERT INTO `Order Details` VALUES (10564,55,24.0,25,0.05);
INSERT INTO `Order Details` VALUES (10565,24,4.5,25,0.1);
INSERT INTO `Order Details` VALUES (10565,64,33.25,18,0.1);
INSERT INTO `Order Details` VALUES (10566,11,21.0,35,0.15);
INSERT INTO `Order Details` VALUES (10566,18,62.5,18,0.15);
INSERT INTO `Order Details` VALUES (10566,76,18.0,10,0.0);
INSERT INTO `Order Details` VALUES (10567,31,12.5,60,0.2);
INSERT INTO `Order Details` VALUES (10567,51,53.0,3,0.0);
INSERT INTO `Order Details` VALUES (10567,59,55.0,40,0.2);
INSERT INTO `Order Details` VALUES (10568,10,31.0,5,0.0);
INSERT INTO `Order Details` VALUES (10569,31,12.5,35,0.2);
INSERT INTO `Order Details` VALUES (10569,76,18.0,30,0.0);
INSERT INTO `Order Details` VALUES (10570,11,21.0,15,0.05);
INSERT INTO `Order Details` VALUES (10570,56,38.0,60,0.05);
INSERT INTO `Order Details` VALUES (10571,14,23.25,11,0.15);
INSERT INTO `Order Details` VALUES (10571,42,14.0,28,0.15);
INSERT INTO `Order Details` VALUES (10572,16,17.45,12,0.1);
INSERT INTO `Order Details` VALUES (10572,32,32.0,10,0.1);
INSERT INTO `Order Details` VALUES (10572,40,18.4,50,0.0);
INSERT INTO `Order Details` VALUES (10572,75,7.75,15,0.1);
INSERT INTO `Order Details` VALUES (10573,17,39.0,18,0.0);
INSERT INTO `Order Details` VALUES (10573,34,14.0,40,0.0);
INSERT INTO `Order Details` VALUES (10573,53,32.8,25,0.0);
INSERT INTO `Order Details` VALUES (10574,33,2.5,14,0.0);
INSERT INTO `Order Details` VALUES (10574,40,18.4,2,0.0);
INSERT INTO `Order Details` VALUES (10574,62,49.3,10,0.0);
INSERT INTO `Order Details` VALUES (10574,64,33.25,6,0.0);
INSERT INTO `Order Details` VALUES (10575,59,55.0,12,0.0);
INSERT INTO `Order Details` VALUES (10575,63,43.9,6,0.0);
INSERT INTO `Order Details` VALUES (10575,72,34.8,30,0.0);
INSERT INTO `Order Details` VALUES (10575,76,18.0,10,0.0);
INSERT INTO `Order Details` VALUES (10576,1,18.0,10,0.0);
INSERT INTO `Order Details` VALUES (10576,31,12.5,20,0.0);
INSERT INTO `Order Details` VALUES (10576,44,19.45,21,0.0);
INSERT INTO `Order Details` VALUES (10577,39,18.0,10,0.0);
INSERT INTO `Order Details` VALUES (10577,75,7.75,20,0.0);
INSERT INTO `Order Details` VALUES (10577,77,13.0,18,0.0);
INSERT INTO `Order Details` VALUES (10578,35,18.0,20,0.0);
INSERT INTO `Order Details` VALUES (10578,57,19.5,6,0.0);
INSERT INTO `Order Details` VALUES (10579,15,15.5,10,0.0);
INSERT INTO `Order Details` VALUES (10579,75,7.75,21,0.0);
INSERT INTO `Order Details` VALUES (10580,14,23.25,15,0.05);
INSERT INTO `Order Details` VALUES (10580,41,9.65,9,0.05);
INSERT INTO `Order Details` VALUES (10580,65,21.05,30,0.05);
INSERT INTO `Order Details` VALUES (10581,75,7.75,50,0.2);
INSERT INTO `Order Details` VALUES (10582,57,19.5,4,0.0);
INSERT INTO `Order Details` VALUES (10582,76,18.0,14,0.0);
INSERT INTO `Order Details` VALUES (10583,29,123.79,10,0.0);
INSERT INTO `Order Details` VALUES (10583,60,34.0,24,0.15);
INSERT INTO `Order Details` VALUES (10583,69,36.0,10,0.15);
INSERT INTO `Order Details` VALUES (10584,31,12.5,50,0.05);
INSERT INTO `Order Details` VALUES (10585,47,9.5,15,0.0);
INSERT INTO `Order Details` VALUES (10586,52,7.0,4,0.15);
INSERT INTO `Order Details` VALUES (10587,26,31.23,6,0.0);
INSERT INTO `Order Details` VALUES (10587,35,18.0,20,0.0);
INSERT INTO `Order Details` VALUES (10587,77,13.0,20,0.0);
INSERT INTO `Order Details` VALUES (10588,18,62.5,40,0.2);
INSERT INTO `Order Details` VALUES (10588,42,14.0,100,0.2);
INSERT INTO `Order Details` VALUES (10589,35,18.0,4,0.0);
INSERT INTO `Order Details` VALUES (10590,1,18.0,20,0.0);
INSERT INTO `Order Details` VALUES (10590,77,13.0,60,0.05);
INSERT INTO `Order Details` VALUES (10591,3,10.0,14,0.0);
INSERT INTO `Order Details` VALUES (10591,7,30.0,10,0.0);
INSERT INTO `Order Details` VALUES (10591,54,7.45,50,0.0);
INSERT INTO `Order Details` VALUES (10592,15,15.5,25,0.05);
INSERT INTO `Order Details` VALUES (10592,26,31.23,5,0.05);
INSERT INTO `Order Details` VALUES (10593,20,81.0,21,0.2);
INSERT INTO `Order Details` VALUES (10593,69,36.0,20,0.2);
INSERT INTO `Order Details` VALUES (10593,76,18.0,4,0.2);
INSERT INTO `Order Details` VALUES (10594,52,7.0,24,0.0);
INSERT INTO `Order Details` VALUES (10594,58,13.25,30,0.0);
INSERT INTO `Order Details` VALUES (10595,35,18.0,30,0.25);
INSERT INTO `Order Details` VALUES (10595,61,28.5,120,0.25);
INSERT INTO `Order Details` VALUES (10595,69,36.0,65,0.25);
INSERT INTO `Order Details` VALUES (10596,56,38.0,5,0.2);
INSERT INTO `Order Details` VALUES (10596,63,43.9,24,0.2);
INSERT INTO `Order Details` VALUES (10596,75,7.75,30,0.2);
INSERT INTO `Order Details` VALUES (10597,24,4.5,35,0.2);
INSERT INTO `Order Details` VALUES (10597,57,19.5,20,0.0);
INSERT INTO `Order Details` VALUES (10597,65,21.05,12,0.2);
INSERT INTO `Order Details` VALUES (10598,27,43.9,50,0.0);
INSERT INTO `Order Details` VALUES (10598,71,21.5,9,0.0);
INSERT INTO `Order Details` VALUES (10599,62,49.3,10,0.0);
INSERT INTO `Order Details` VALUES (10600,54,7.45,4,0.0);
INSERT INTO `Order Details` VALUES (10600,73,15.0,30,0.0);
INSERT INTO `Order Details` VALUES (10601,13,6.0,60,0.0);
INSERT INTO `Order Details` VALUES (10601,59,55.0,35,0.0);
INSERT INTO `Order Details` VALUES (10602,77,13.0,5,0.25);
INSERT INTO `Order Details` VALUES (10603,22,21.0,48,0.0);
INSERT INTO `Order Details` VALUES (10603,49,20.0,25,0.05);
INSERT INTO `Order Details` VALUES (10604,48,12.75,6,0.1);
INSERT INTO `Order Details` VALUES (10604,76,18.0,10,0.1);
INSERT INTO `Order Details` VALUES (10605,16,17.45,30,0.05);
INSERT INTO `Order Details` VALUES (10605,59,55.0,20,0.05);
INSERT INTO `Order Details` VALUES (10605,60,34.0,70,0.05);
INSERT INTO `Order Details` VALUES (10605,71,21.5,15,0.05);
INSERT INTO `Order Details` VALUES (10606,4,22.0,20,0.2);
INSERT INTO `Order Details` VALUES (10606,55,24.0,20,0.2);
INSERT INTO `Order Details` VALUES (10606,62,49.3,10,0.2);
INSERT INTO `Order Details` VALUES (10607,7,30.0,45,0.0);
INSERT INTO `Order Details` VALUES (10607,17,39.0,100,0.0);
INSERT INTO `Order Details` VALUES (10607,33,2.5,14,0.0);
INSERT INTO `Order Details` VALUES (10607,40,18.4,42,0.0);
INSERT INTO `Order Details` VALUES (10607,72,34.8,12,0.0);
INSERT INTO `Order Details` VALUES (10608,56,38.0,28,0.0);
INSERT INTO `Order Details` VALUES (10609,1,18.0,3,0.0);
INSERT INTO `Order Details` VALUES (10609,10,31.0,10,0.0);
INSERT INTO `Order Details` VALUES (10609,21,10.0,6,0.0);
INSERT INTO `Order Details` VALUES (10610,36,19.0,21,0.25);
INSERT INTO `Order Details` VALUES (10611,1,18.0,6,0.0);
INSERT INTO `Order Details` VALUES (10611,2,19.0,10,0.0);
INSERT INTO `Order Details` VALUES (10611,60,34.0,15,0.0);
INSERT INTO `Order Details` VALUES (10612,10,31.0,70,0.0);
INSERT INTO `Order Details` VALUES (10612,36,19.0,55,0.0);
INSERT INTO `Order Details` VALUES (10612,49,20.0,18,0.0);
INSERT INTO `Order Details` VALUES (10612,60,34.0,40,0.0);
INSERT INTO `Order Details` VALUES (10612,76,18.0,80,0.0);
INSERT INTO `Order Details` VALUES (10613,13,6.0,8,0.1);
INSERT INTO `Order Details` VALUES (10613,75,7.75,40,0.0);
INSERT INTO `Order Details` VALUES (10614,11,21.0,14,0.0);
INSERT INTO `Order Details` VALUES (10614,21,10.0,8,0.0);
INSERT INTO `Order Details` VALUES (10614,39,18.0,5,0.0);
INSERT INTO `Order Details` VALUES (10615,55,24.0,5,0.0);
INSERT INTO `Order Details` VALUES (10616,38,263.5,15,0.05);
INSERT INTO `Order Details` VALUES (10616,56,38.0,14,0.0);
INSERT INTO `Order Details` VALUES (10616,70,15.0,15,0.05);
INSERT INTO `Order Details` VALUES (10616,71,21.5,15,0.05);
INSERT INTO `Order Details` VALUES (10617,59,55.0,30,0.15);
INSERT INTO `Order Details` VALUES (10618,6,25.0,70,0.0);
INSERT INTO `Order Details` VALUES (10618,56,38.0,20,0.0);
INSERT INTO `Order Details` VALUES (10618,68,12.5,15,0.0);
INSERT INTO `Order Details` VALUES (10619,21,10.0,42,0.0);
INSERT INTO `Order Details` VALUES (10619,22,21.0,40,0.0);
INSERT INTO `Order Details` VALUES (10620,24,4.5,5,0.0);
INSERT INTO `Order Details` VALUES (10620,52,7.0,5,0.0);
INSERT INTO `Order Details` VALUES (10621,19,9.2,5,0.0);
INSERT INTO `Order Details` VALUES (10621,23,9.0,10,0.0);
INSERT INTO `Order Details` VALUES (10621,70,15.0,20,0.0);
INSERT INTO `Order Details` VALUES (10621,71,21.5,15,0.0);
INSERT INTO `Order Details` VALUES (10622,2,19.0,20,0.0);
INSERT INTO `Order Details` VALUES (10622,68,12.5,18,0.2);
INSERT INTO `Order Details` VALUES (10623,14,23.25,21,0.0);
INSERT INTO `Order Details` VALUES (10623,19,9.2,15,0.1);
INSERT INTO `Order Details` VALUES (10623,21,10.0,25,0.1);
INSERT INTO `Order Details` VALUES (10623,24,4.5,3,0.0);
INSERT INTO `Order Details` VALUES (10623,35,18.0,30,0.1);
INSERT INTO `Order Details` VALUES (10624,28,45.6,10,0.0);
INSERT INTO `Order Details` VALUES (10624,29,123.79,6,0.0);
INSERT INTO `Order Details` VALUES (10624,44,19.45,10,0.0);
INSERT INTO `Order Details` VALUES (10625,14,23.25,3,0.0);
INSERT INTO `Order Details` VALUES (10625,42,14.0,5,0.0);
INSERT INTO `Order Details` VALUES (10625,60,34.0,10,0.0);
INSERT INTO `Order Details` VALUES (10626,53,32.8,12,0.0);
INSERT INTO `Order Details` VALUES (10626,60,34.0,20,0.0);
INSERT INTO `Order Details` VALUES (10626,71,21.5,20,0.0);
INSERT INTO `Order Details` VALUES (10627,62,49.3,15,0.0);
INSERT INTO `Order Details` VALUES (10627,73,15.0,35,0.15);
INSERT INTO `Order Details` VALUES (10628,1,18.0,25,0.0);
INSERT INTO `Order Details` VALUES (10629,29,123.79,20,0.0);
INSERT INTO `Order Details` VALUES (10629,64,33.25,9,0.0);
INSERT INTO `Order Details` VALUES (10630,55,24.0,12,0.05);
INSERT INTO `Order Details` VALUES (10630,76,18.0,35,0.0);
INSERT INTO `Order Details` VALUES (10631,75,7.75,8,0.1);
INSERT INTO `Order Details` VALUES (10632,2,19.0,30,0.05);
INSERT INTO `Order Details` VALUES (10632,33,2.5,20,0.05);
INSERT INTO `Order Details` VALUES (10633,12,38.0,36,0.15);
INSERT INTO `Order Details` VALUES (10633,13,6.0,13,0.15);
INSERT INTO `Order Details` VALUES (10633,26,31.23,35,0.15);
INSERT INTO `Order Details` VALUES (10633,62,49.3,80,0.15);
INSERT INTO `Order Details` VALUES (10634,7,30.0,35,0.0);
INSERT INTO `Order Details` VALUES (10634,18,62.5,50,0.0);
INSERT INTO `Order Details` VALUES (10634,51,53.0,15,0.0);
INSERT INTO `Order Details` VALUES (10634,75,7.75,2,0.0);
INSERT INTO `Order Details` VALUES (10635,4,22.0,10,0.1);
INSERT INTO `Order Details` VALUES (10635,5,21.35,15,0.1);
INSERT INTO `Order Details` VALUES (10635,22,21.0,40,0.0);
INSERT INTO `Order Details` VALUES (10636,4,22.0,25,0.0);
INSERT INTO `Order Details` VALUES (10636,58,13.25,6,0.0);
INSERT INTO `Order Details` VALUES (10637,11,21.0,10,0.0);
INSERT INTO `Order Details` VALUES (10637,50,16.25,25,0.05);
INSERT INTO `Order Details` VALUES (10637,56,38.0,60,0.05);
INSERT INTO `Order Details` VALUES (10638,45,9.5,20,0.0);
INSERT INTO `Order Details` VALUES (10638,65,21.05,21,0.0);
INSERT INTO `Order Details` VALUES (10638,72,34.8,60,0.0);
INSERT INTO `Order Details` VALUES (10639,18,62.5,8,0.0);
INSERT INTO `Order Details` VALUES (10640,69,36.0,20,0.25);
INSERT INTO `Order Details` VALUES (10640,70,15.0,15,0.25);
INSERT INTO `Order Details` VALUES (10641,2,19.0,50,0.0);
INSERT INTO `Order Details` VALUES (10641,40,18.4,60,0.0);
INSERT INTO `Order Details` VALUES (10642,21,10.0,30,0.2);
INSERT INTO `Order Details` VALUES (10642,61,28.5,20,0.2);
INSERT INTO `Order Details` VALUES (10643,28,45.6,15,0.25);
INSERT INTO `Order Details` VALUES (10643,39,18.0,21,0.25);
INSERT INTO `Order Details` VALUES (10643,46,12.0,2,0.25);
INSERT INTO `Order Details` VALUES (10644,18,62.5,4,0.1);
INSERT INTO `Order Details` VALUES (10644,43,46.0,20,0.0);
INSERT INTO `Order Details` VALUES (10644,46,12.0,21,0.1);
INSERT INTO `Order Details` VALUES (10645,18,62.5,20,0.0);
INSERT INTO `Order Details` VALUES (10645,36,19.0,15,0.0);
INSERT INTO `Order Details` VALUES (10646,1,18.0,15,0.25);
INSERT INTO `Order Details` VALUES (10646,10,31.0,18,0.25);
INSERT INTO `Order Details` VALUES (10646,71,21.5,30,0.25);
INSERT INTO `Order Details` VALUES (10646,77,13.0,35,0.25);
INSERT INTO `Order Details` VALUES (10647,19,9.2,30,0.0);
INSERT INTO `Order Details` VALUES (10647,39,18.0,20,0.0);
INSERT INTO `Order Details` VALUES (10648,22,21.0,15,0.0);
INSERT INTO `Order Details` VALUES (10648,24,4.5,15,0.15);
INSERT INTO `Order Details` VALUES (10649,28,45.6,20,0.0);
INSERT INTO `Order Details` VALUES (10649,72,34.8,15,0.0);
INSERT INTO `Order Details` VALUES (10650,30,25.89,30,0.0);
INSERT INTO `Order Details` VALUES (10650,53,32.8,25,0.05);
INSERT INTO `Order Details` VALUES (10650,54,7.45,30,0.0);
INSERT INTO `Order Details` VALUES (10651,19,9.2,12,0.25);
INSERT INTO `Order Details` VALUES (10651,22,21.0,20,0.25);
INSERT INTO `Order Details` VALUES (10652,30,25.89,2,0.25);
INSERT INTO `Order Details` VALUES (10652,42,14.0,20,0.0);
INSERT INTO `Order Details` VALUES (10653,16,17.45,30,0.1);
INSERT INTO `Order Details` VALUES (10653,60,34.0,20,0.1);
INSERT INTO `Order Details` VALUES (10654,4,22.0,12,0.1);
INSERT INTO `Order Details` VALUES (10654,39,18.0,20,0.1);
INSERT INTO `Order Details` VALUES (10654,54,7.45,6,0.1);
INSERT INTO `Order Details` VALUES (10655,41,9.65,20,0.2);
INSERT INTO `Order Details` VALUES (10656,14,23.25,3,0.1);
INSERT INTO `Order Details` VALUES (10656,44,19.45,28,0.1);
INSERT INTO `Order Details` VALUES (10656,47,9.5,6,0.1);
INSERT INTO `Order Details` VALUES (10657,15,15.5,50,0.0);
INSERT INTO `Order Details` VALUES (10657,41,9.65,24,0.0);
INSERT INTO `Order Details` VALUES (10657,46,12.0,45,0.0);
INSERT INTO `Order Details` VALUES (10657,47,9.5,10,0.0);
INSERT INTO `Order Details` VALUES (10657,56,38.0,45,0.0);
INSERT INTO `Order Details` VALUES (10657,60,34.0,30,0.0);
INSERT INTO `Order Details` VALUES (10658,21,10.0,60,0.0);
INSERT INTO `Order Details` VALUES (10658,40,18.4,70,0.05);
INSERT INTO `Order Details` VALUES (10658,60,34.0,55,0.05);
INSERT INTO `Order Details` VALUES (10658,77,13.0,70,0.05);
INSERT INTO `Order Details` VALUES (10659,31,12.5,20,0.05);
INSERT INTO `Order Details` VALUES (10659,40,18.4,24,0.05);
INSERT INTO `Order Details` VALUES (10659,70,15.0,40,0.05);
INSERT INTO `Order Details` VALUES (10660,20,81.0,21,0.0);
INSERT INTO `Order Details` VALUES (10661,39,18.0,3,0.2);
INSERT INTO `Order Details` VALUES (10661,58,13.25,49,0.2);
INSERT INTO `Order Details` VALUES (10662,68,12.5,10,0.0);
INSERT INTO `Order Details` VALUES (10663,40,18.4,30,0.05);
INSERT INTO `Order Details` VALUES (10663,42,14.0,30,0.05);
INSERT INTO `Order Details` VALUES (10663,51,53.0,20,0.05);
INSERT INTO `Order Details` VALUES (10664,10,31.0,24,0.15);
INSERT INTO `Order Details` VALUES (10664,56,38.0,12,0.15);
INSERT INTO `Order Details` VALUES (10664,65,21.05,15,0.15);
INSERT INTO `Order Details` VALUES (10665,51,53.0,20,0.0);
INSERT INTO `Order Details` VALUES (10665,59,55.0,1,0.0);
INSERT INTO `Order Details` VALUES (10665,76,18.0,10,0.0);
INSERT INTO `Order Details` VALUES (10666,29,123.79,36,0.0);
INSERT INTO `Order Details` VALUES (10666,65,21.05,10,0.0);
INSERT INTO `Order Details` VALUES (10667,69,36.0,45,0.2);
INSERT INTO `Order Details` VALUES (10667,71,21.5,14,0.2);
INSERT INTO `Order Details` VALUES (10668,31,12.5,8,0.1);
INSERT INTO `Order Details` VALUES (10668,55,24.0,4,0.1);
INSERT INTO `Order Details` VALUES (10668,64,33.25,15,0.1);
INSERT INTO `Order Details` VALUES (10669,36,19.0,30,0.0);
INSERT INTO `Order Details` VALUES (10670,23,9.0,32,0.0);
INSERT INTO `Order Details` VALUES (10670,46,12.0,60,0.0);
INSERT INTO `Order Details` VALUES (10670,67,14.0,25,0.0);
INSERT INTO `Order Details` VALUES (10670,73,15.0,50,0.0);
INSERT INTO `Order Details` VALUES (10670,75,7.75,25,0.0);
INSERT INTO `Order Details` VALUES (10671,16,17.45,10,0.0);
INSERT INTO `Order Details` VALUES (10671,62,49.3,10,0.0);
INSERT INTO `Order Details` VALUES (10671,65,21.05,12,0.0);
INSERT INTO `Order Details` VALUES (10672,38,263.5,15,0.1);
INSERT INTO `Order Details` VALUES (10672,71,21.5,12,0.0);
INSERT INTO `Order Details` VALUES (10673,16,17.45,3,0.0);
INSERT INTO `Order Details` VALUES (10673,42,14.0,6,0.0);
INSERT INTO `Order Details` VALUES (10673,43,46.0,6,0.0);
INSERT INTO `Order Details` VALUES (10674,23,9.0,5,0.0);
INSERT INTO `Order Details` VALUES (10675,14,23.25,30,0.0);
INSERT INTO `Order Details` VALUES (10675,53,32.8,10,0.0);
INSERT INTO `Order Details` VALUES (10675,58,13.25,30,0.0);
INSERT INTO `Order Details` VALUES (10676,10,31.0,2,0.0);
INSERT INTO `Order Details` VALUES (10676,19,9.2,7,0.0);
INSERT INTO `Order Details` VALUES (10676,44,19.45,21,0.0);
INSERT INTO `Order Details` VALUES (10677,26,31.23,30,0.15);
INSERT INTO `Order Details` VALUES (10677,33,2.5,8,0.15);
INSERT INTO `Order Details` VALUES (10678,12,38.0,100,0.0);
INSERT INTO `Order Details` VALUES (10678,33,2.5,30,0.0);
INSERT INTO `Order Details` VALUES (10678,41,9.65,120,0.0);
INSERT INTO `Order Details` VALUES (10678,54,7.45,30,0.0);
INSERT INTO `Order Details` VALUES (10679,59,55.0,12,0.0);
INSERT INTO `Order Details` VALUES (10680,16,17.45,50,0.25);
INSERT INTO `Order Details` VALUES (10680,31,12.5,20,0.25);
INSERT INTO `Order Details` VALUES (10680,42,14.0,40,0.25);
INSERT INTO `Order Details` VALUES (10681,19,9.2,30,0.1);
INSERT INTO `Order Details` VALUES (10681,21,10.0,12,0.1);
INSERT INTO `Order Details` VALUES (10681,64,33.25,28,0.0);
INSERT INTO `Order Details` VALUES (10682,33,2.5,30,0.0);
INSERT INTO `Order Details` VALUES (10682,66,17.0,4,0.0);
INSERT INTO `Order Details` VALUES (10682,75,7.75,30,0.0);
INSERT INTO `Order Details` VALUES (10683,52,7.0,9,0.0);
INSERT INTO `Order Details` VALUES (10684,40,18.4,20,0.0);
INSERT INTO `Order Details` VALUES (10684,47,9.5,40,0.0);
INSERT INTO `Order Details` VALUES (10684,60,34.0,30,0.0);
INSERT INTO `Order Details` VALUES (10685,10,31.0,20,0.0);
INSERT INTO `Order Details` VALUES (10685,41,9.65,4,0.0);
INSERT INTO `Order Details` VALUES (10685,47,9.5,15,0.0);
INSERT INTO `Order Details` VALUES (10686,17,39.0,30,0.2);
INSERT INTO `Order Details` VALUES (10686,26,31.23,15,0.0);
INSERT INTO `Order Details` VALUES (10687,9,97.0,50,0.25);
INSERT INTO `Order Details` VALUES (10687,29,123.79,10,0.0);
INSERT INTO `Order Details` VALUES (10687,36,19.0,6,0.25);
INSERT INTO `Order Details` VALUES (10688,10,31.0,18,0.1);
INSERT INTO `Order Details` VALUES (10688,28,45.6,60,0.1);
INSERT INTO `Order Details` VALUES (10688,34,14.0,14,0.0);
INSERT INTO `Order Details` VALUES (10689,1,18.0,35,0.25);
INSERT INTO `Order Details` VALUES (10690,56,38.0,20,0.25);
INSERT INTO `Order Details` VALUES (10690,77,13.0,30,0.25);
INSERT INTO `Order Details` VALUES (10691,1,18.0,30,0.0);
INSERT INTO `Order Details` VALUES (10691,29,123.79,40,0.0);
INSERT INTO `Order Details` VALUES (10691,43,46.0,40,0.0);
INSERT INTO `Order Details` VALUES (10691,44,19.45,24,0.0);
INSERT INTO `Order Details` VALUES (10691,62,49.3,48,0.0);
INSERT INTO `Order Details` VALUES (10692,63,43.9,20,0.0);
INSERT INTO `Order Details` VALUES (10693,9,97.0,6,0.0);
INSERT INTO `Order Details` VALUES (10693,54,7.45,60,0.15);
INSERT INTO `Order Details` VALUES (10693,69,36.0,30,0.15);
INSERT INTO `Order Details` VALUES (10693,73,15.0,15,0.15);
INSERT INTO `Order Details` VALUES (10694,7,30.0,90,0.0);
INSERT INTO `Order Details` VALUES (10694,59,55.0,25,0.0);
INSERT INTO `Order Details` VALUES (10694,70,15.0,50,0.0);
INSERT INTO `Order Details` VALUES (10695,8,40.0,10,0.0);
INSERT INTO `Order Details` VALUES (10695,12,38.0,4,0.0);
INSERT INTO `Order Details` VALUES (10695,24,4.5,20,0.0);
INSERT INTO `Order Details` VALUES (10696,17,39.0,20,0.0);
INSERT INTO `Order Details` VALUES (10696,46,12.0,18,0.0);
INSERT INTO `Order Details` VALUES (10697,19,9.2,7,0.25);
INSERT INTO `Order Details` VALUES (10697,35,18.0,9,0.25);
INSERT INTO `Order Details` VALUES (10697,58,13.25,30,0.25);
INSERT INTO `Order Details` VALUES (10697,70,15.0,30,0.25);
INSERT INTO `Order Details` VALUES (10698,11,21.0,15,0.0);
INSERT INTO `Order Details` VALUES (10698,17,39.0,8,0.05);
INSERT INTO `Order Details` VALUES (10698,29,123.79,12,0.05);
INSERT INTO `Order Details` VALUES (10698,65,21.05,65,0.05);
INSERT INTO `Order Details` VALUES (10698,70,15.0,8,0.05);
INSERT INTO `Order Details` VALUES (10699,47,9.5,12,0.0);
INSERT INTO `Order Details` VALUES (10700,1,18.0,5,0.2);
INSERT INTO `Order Details` VALUES (10700,34,14.0,12,0.2);
INSERT INTO `Order Details` VALUES (10700,68,12.5,40,0.2);
INSERT INTO `Order Details` VALUES (10700,71,21.5,60,0.2);
INSERT INTO `Order Details` VALUES (10701,59,55.0,42,0.15);
INSERT INTO `Order Details` VALUES (10701,71,21.5,20,0.15);
INSERT INTO `Order Details` VALUES (10701,76,18.0,35,0.15);
INSERT INTO `Order Details` VALUES (10702,3,10.0,6,0.0);
INSERT INTO `Order Details` VALUES (10702,76,18.0,15,0.0);
INSERT INTO `Order Details` VALUES (10703,2,19.0,5,0.0);
INSERT INTO `Order Details` VALUES (10703,59,55.0,35,0.0);
INSERT INTO `Order Details` VALUES (10703,73,15.0,35,0.0);
INSERT INTO `Order Details` VALUES (10704,4,22.0,6,0.0);
INSERT INTO `Order Details` VALUES (10704,24,4.5,35,0.0);
INSERT INTO `Order Details` VALUES (10704,48,12.75,24,0.0);
INSERT INTO `Order Details` VALUES (10705,31,12.5,20,0.0);
INSERT INTO `Order Details` VALUES (10705,32,32.0,4,0.0);
INSERT INTO `Order Details` VALUES (10706,16,17.45,20,0.0);
INSERT INTO `Order Details` VALUES (10706,43,46.0,24,0.0);
INSERT INTO `Order Details` VALUES (10706,59,55.0,8,0.0);
INSERT INTO `Order Details` VALUES (10707,55,24.0,21,0.0);
INSERT INTO `Order Details` VALUES (10707,57,19.5,40,0.0);
INSERT INTO `Order Details` VALUES (10707,70,15.0,28,0.15);
INSERT INTO `Order Details` VALUES (10708,5,21.35,4,0.0);
INSERT INTO `Order Details` VALUES (10708,36,19.0,5,0.0);
INSERT INTO `Order Details` VALUES (10709,8,40.0,40,0.0);
INSERT INTO `Order Details` VALUES (10709,51,53.0,28,0.0);
INSERT INTO `Order Details` VALUES (10709,60,34.0,10,0.0);
INSERT INTO `Order Details` VALUES (10710,19,9.2,5,0.0);
INSERT INTO `Order Details` VALUES (10710,47,9.5,5,0.0);
INSERT INTO `Order Details` VALUES (10711,19,9.2,12,0.0);
INSERT INTO `Order Details` VALUES (10711,41,9.65,42,0.0);
INSERT INTO `Order Details` VALUES (10711,53,32.8,120,0.0);
INSERT INTO `Order Details` VALUES (10712,53,32.8,3,0.05);
INSERT INTO `Order Details` VALUES (10712,56,38.0,30,0.0);
INSERT INTO `Order Details` VALUES (10713,10,31.0,18,0.0);
INSERT INTO `Order Details` VALUES (10713,26,31.23,30,0.0);
INSERT INTO `Order Details` VALUES (10713,45,9.5,110,0.0);
INSERT INTO `Order Details` VALUES (10713,46,12.0,24,0.0);
INSERT INTO `Order Details` VALUES (10714,2,19.0,30,0.25);
INSERT INTO `Order Details` VALUES (10714,17,39.0,27,0.25);
INSERT INTO `Order Details` VALUES (10714,47,9.5,50,0.25);
INSERT INTO `Order Details` VALUES (10714,56,38.0,18,0.25);
INSERT INTO `Order Details` VALUES (10714,58,13.25,12,0.25);
INSERT INTO `Order Details` VALUES (10715,10,31.0,21,0.0);
INSERT INTO `Order Details` VALUES (10715,71,21.5,30,0.0);
INSERT INTO `Order Details` VALUES (10716,21,10.0,5,0.0);
INSERT INTO `Order Details` VALUES (10716,51,53.0,7,0.0);
INSERT INTO `Order Details` VALUES (10716,61,28.5,10,0.0);
INSERT INTO `Order Details` VALUES (10717,21,10.0,32,0.05);
INSERT INTO `Order Details` VALUES (10717,54,7.45,15,0.0);
INSERT INTO `Order Details` VALUES (10717,69,36.0,25,0.05);
INSERT INTO `Order Details` VALUES (10718,12,38.0,36,0.0);
INSERT INTO `Order Details` VALUES (10718,16,17.45,20,0.0);
INSERT INTO `Order Details` VALUES (10718,36,19.0,40,0.0);
INSERT INTO `Order Details` VALUES (10718,62,49.3,20,0.0);
INSERT INTO `Order Details` VALUES (10719,18,62.5,12,0.25);
INSERT INTO `Order Details` VALUES (10719,30,25.89,3,0.25);
INSERT INTO `Order Details` VALUES (10719,54,7.45,40,0.25);
INSERT INTO `Order Details` VALUES (10720,35,18.0,21,0.0);
INSERT INTO `Order Details` VALUES (10720,71,21.5,8,0.0);
INSERT INTO `Order Details` VALUES (10721,44,19.45,50,0.05);
INSERT INTO `Order Details` VALUES (10722,2,19.0,3,0.0);
INSERT INTO `Order Details` VALUES (10722,31,12.5,50,0.0);
INSERT INTO `Order Details` VALUES (10722,68,12.5,45,0.0);
INSERT INTO `Order Details` VALUES (10722,75,7.75,42,0.0);
INSERT INTO `Order Details` VALUES (10723,26,31.23,15,0.0);
INSERT INTO `Order Details` VALUES (10724,10,31.0,16,0.0);
INSERT INTO `Order Details` VALUES (10724,61,28.5,5,0.0);
INSERT INTO `Order Details` VALUES (10725,41,9.65,12,0.0);
INSERT INTO `Order Details` VALUES (10725,52,7.0,4,0.0);
INSERT INTO `Order Details` VALUES (10725,55,24.0,6,0.0);
INSERT INTO `Order Details` VALUES (10726,4,22.0,25,0.0);
INSERT INTO `Order Details` VALUES (10726,11,21.0,5,0.0);
INSERT INTO `Order Details` VALUES (10727,17,39.0,20,0.05);
INSERT INTO `Order Details` VALUES (10727,56,38.0,10,0.05);
INSERT INTO `Order Details` VALUES (10727,59,55.0,10,0.05);
INSERT INTO `Order Details` VALUES (10728,30,25.89,15,0.0);
INSERT INTO `Order Details` VALUES (10728,40,18.4,6,0.0);
INSERT INTO `Order Details` VALUES (10728,55,24.0,12,0.0);
INSERT INTO `Order Details` VALUES (10728,60,34.0,15,0.0);
INSERT INTO `Order Details` VALUES (10729,1,18.0,50,0.0);
INSERT INTO `Order Details` VALUES (10729,21,10.0,30,0.0);
INSERT INTO `Order Details` VALUES (10729,50,16.25,40,0.0);
INSERT INTO `Order Details` VALUES (10730,16,17.45,15,0.05);
INSERT INTO `Order Details` VALUES (10730,31,12.5,3,0.05);
INSERT INTO `Order Details` VALUES (10730,65,21.05,10,0.05);
INSERT INTO `Order Details` VALUES (10731,21,10.0,40,0.05);
INSERT INTO `Order Details` VALUES (10731,51,53.0,30,0.05);
INSERT INTO `Order Details` VALUES (10732,76,18.0,20,0.0);
INSERT INTO `Order Details` VALUES (10733,14,23.25,16,0.0);
INSERT INTO `Order Details` VALUES (10733,28,45.6,20,0.0);
INSERT INTO `Order Details` VALUES (10733,52,7.0,25,0.0);
INSERT INTO `Order Details` VALUES (10734,6,25.0,30,0.0);
INSERT INTO `Order Details` VALUES (10734,30,25.89,15,0.0);
INSERT INTO `Order Details` VALUES (10734,76,18.0,20,0.0);
INSERT INTO `Order Details` VALUES (10735,61,28.5,20,0.1);
INSERT INTO `Order Details` VALUES (10735,77,13.0,2,0.1);
INSERT INTO `Order Details` VALUES (10736,65,21.05,40,0.0);
INSERT INTO `Order Details` VALUES (10736,75,7.75,20,0.0);
INSERT INTO `Order Details` VALUES (10737,13,6.0,4,0.0);
INSERT INTO `Order Details` VALUES (10737,41,9.65,12,0.0);
INSERT INTO `Order Details` VALUES (10738,16,17.45,3,0.0);
INSERT INTO `Order Details` VALUES (10739,36,19.0,6,0.0);
INSERT INTO `Order Details` VALUES (10739,52,7.0,18,0.0);
INSERT INTO `Order Details` VALUES (10740,28,45.6,5,0.2);
INSERT INTO `Order Details` VALUES (10740,35,18.0,35,0.2);
INSERT INTO `Order Details` VALUES (10740,45,9.5,40,0.2);
INSERT INTO `Order Details` VALUES (10740,56,38.0,14,0.2);
INSERT INTO `Order Details` VALUES (10741,2,19.0,15,0.2);
INSERT INTO `Order Details` VALUES (10742,3,10.0,20,0.0);
INSERT INTO `Order Details` VALUES (10742,60,34.0,50,0.0);
INSERT INTO `Order Details` VALUES (10742,72,34.8,35,0.0);
INSERT INTO `Order Details` VALUES (10743,46,12.0,28,0.05);
INSERT INTO `Order Details` VALUES (10744,40,18.4,50,0.2);
INSERT INTO `Order Details` VALUES (10745,18,62.5,24,0.0);
INSERT INTO `Order Details` VALUES (10745,44,19.45,16,0.0);
INSERT INTO `Order Details` VALUES (10745,59,55.0,45,0.0);
INSERT INTO `Order Details` VALUES (10745,72,34.8,7,0.0);
INSERT INTO `Order Details` VALUES (10746,13,6.0,6,0.0);
INSERT INTO `Order Details` VALUES (10746,42,14.0,28,0.0);
INSERT INTO `Order Details` VALUES (10746,62,49.3,9,0.0);
INSERT INTO `Order Details` VALUES (10746,69,36.0,40,0.0);
INSERT INTO `Order Details` VALUES (10747,31,12.5,8,0.0);
INSERT INTO `Order Details` VALUES (10747,41,9.65,35,0.0);
INSERT INTO `Order Details` VALUES (10747,63,43.9,9,0.0);
INSERT INTO `Order Details` VALUES (10747,69,36.0,30,0.0);
INSERT INTO `Order Details` VALUES (10748,23,9.0,44,0.0);
INSERT INTO `Order Details` VALUES (10748,40,18.4,40,0.0);
INSERT INTO `Order Details` VALUES (10748,56,38.0,28,0.0);
INSERT INTO `Order Details` VALUES (10749,56,38.0,15,0.0);
INSERT INTO `Order Details` VALUES (10749,59,55.0,6,0.0);
INSERT INTO `Order Details` VALUES (10749,76,18.0,10,0.0);
INSERT INTO `Order Details` VALUES (10750,14,23.25,5,0.15);
INSERT INTO `Order Details` VALUES (10750,45,9.5,40,0.15);
INSERT INTO `Order Details` VALUES (10750,59,55.0,25,0.15);
INSERT INTO `Order Details` VALUES (10751,26,31.23,12,0.1);
INSERT INTO `Order Details` VALUES (10751,30,25.89,30,0.0);
INSERT INTO `Order Details` VALUES (10751,50,16.25,20,0.1);
INSERT INTO `Order Details` VALUES (10751,73,15.0,15,0.0);
INSERT INTO `Order Details` VALUES (10752,1,18.0,8,0.0);
INSERT INTO `Order Details` VALUES (10752,69,36.0,3,0.0);
INSERT INTO `Order Details` VALUES (10753,45,9.5,4,0.0);
INSERT INTO `Order Details` VALUES (10753,74,10.0,5,0.0);
INSERT INTO `Order Details` VALUES (10754,40,18.4,3,0.0);
INSERT INTO `Order Details` VALUES (10755,47,9.5,30,0.25);
INSERT INTO `Order Details` VALUES (10755,56,38.0,30,0.25);
INSERT INTO `Order Details` VALUES (10755,57,19.5,14,0.25);
INSERT INTO `Order Details` VALUES (10755,69,36.0,25,0.25);
INSERT INTO `Order Details` VALUES (10756,18,62.5,21,0.2);
INSERT INTO `Order Details` VALUES (10756,36,19.0,20,0.2);
INSERT INTO `Order Details` VALUES (10756,68,12.5,6,0.2);
INSERT INTO `Order Details` VALUES (10756,69,36.0,20,0.2);
INSERT INTO `Order Details` VALUES (10757,34,14.0,30,0.0);
INSERT INTO `Order Details` VALUES (10757,59,55.0,7,0.0);
INSERT INTO `Order Details` VALUES (10757,62,49.3,30,0.0);
INSERT INTO `Order Details` VALUES (10757,64,33.25,24,0.0);
INSERT INTO `Order Details` VALUES (10758,26,31.23,20,0.0);
INSERT INTO `Order Details` VALUES (10758,52,7.0,60,0.0);
INSERT INTO `Order Details` VALUES (10758,70,15.0,40,0.0);
INSERT INTO `Order Details` VALUES (10759,32,32.0,10,0.0);
INSERT INTO `Order Details` VALUES (10760,25,14.0,12,0.25);
INSERT INTO `Order Details` VALUES (10760,27,43.9,40,0.0);
INSERT INTO `Order Details` VALUES (10760,43,46.0,30,0.25);
INSERT INTO `Order Details` VALUES (10761,25,14.0,35,0.25);
INSERT INTO `Order Details` VALUES (10761,75,7.75,18,0.0);
INSERT INTO `Order Details` VALUES (10762,39,18.0,16,0.0);
INSERT INTO `Order Details` VALUES (10762,47,9.5,30,0.0);
INSERT INTO `Order Details` VALUES (10762,51,53.0,28,0.0);
INSERT INTO `Order Details` VALUES (10762,56,38.0,60,0.0);
INSERT INTO `Order Details` VALUES (10763,21,10.0,40,0.0);
INSERT INTO `Order Details` VALUES (10763,22,21.0,6,0.0);
INSERT INTO `Order Details` VALUES (10763,24,4.5,20,0.0);
INSERT INTO `Order Details` VALUES (10764,3,10.0,20,0.1);
INSERT INTO `Order Details` VALUES (10764,39,18.0,130,0.1);
INSERT INTO `Order Details` VALUES (10765,65,21.05,80,0.1);
INSERT INTO `Order Details` VALUES (10766,2,19.0,40,0.0);
INSERT INTO `Order Details` VALUES (10766,7,30.0,35,0.0);
INSERT INTO `Order Details` VALUES (10766,68,12.5,40,0.0);
INSERT INTO `Order Details` VALUES (10767,42,14.0,2,0.0);
INSERT INTO `Order Details` VALUES (10768,22,21.0,4,0.0);
INSERT INTO `Order Details` VALUES (10768,31,12.5,50,0.0);
INSERT INTO `Order Details` VALUES (10768,60,34.0,15,0.0);
INSERT INTO `Order Details` VALUES (10768,71,21.5,12,0.0);
INSERT INTO `Order Details` VALUES (10769,41,9.65,30,0.05);
INSERT INTO `Order Details` VALUES (10769,52,7.0,15,0.05);
INSERT INTO `Order Details` VALUES (10769,61,28.5,20,0.0);
INSERT INTO `Order Details` VALUES (10769,62,49.3,15,0.0);
INSERT INTO `Order Details` VALUES (10770,11,21.0,15,0.25);
INSERT INTO `Order Details` VALUES (10771,71,21.5,16,0.0);
INSERT INTO `Order Details` VALUES (10772,29,123.79,18,0.0);
INSERT INTO `Order Details` VALUES (10772,59,55.0,25,0.0);
INSERT INTO `Order Details` VALUES (10773,17,39.0,33,0.0);
INSERT INTO `Order Details` VALUES (10773,31,12.5,70,0.2);
INSERT INTO `Order Details` VALUES (10773,75,7.75,7,0.2);
INSERT INTO `Order Details` VALUES (10774,31,12.5,2,0.25);
INSERT INTO `Order Details` VALUES (10774,66,17.0,50,0.0);
INSERT INTO `Order Details` VALUES (10775,10,31.0,6,0.0);
INSERT INTO `Order Details` VALUES (10775,67,14.0,3,0.0);
INSERT INTO `Order Details` VALUES (10776,31,12.5,16,0.05);
INSERT INTO `Order Details` VALUES (10776,42,14.0,12,0.05);
INSERT INTO `Order Details` VALUES (10776,45,9.5,27,0.05);
INSERT INTO `Order Details` VALUES (10776,51,53.0,120,0.05);
INSERT INTO `Order Details` VALUES (10777,42,14.0,20,0.2);
INSERT INTO `Order Details` VALUES (10778,41,9.65,10,0.0);
INSERT INTO `Order Details` VALUES (10779,16,17.45,20,0.0);
INSERT INTO `Order Details` VALUES (10779,62,49.3,20,0.0);
INSERT INTO `Order Details` VALUES (10780,70,15.0,35,0.0);
INSERT INTO `Order Details` VALUES (10780,77,13.0,15,0.0);
INSERT INTO `Order Details` VALUES (10781,54,7.45,3,0.2);
INSERT INTO `Order Details` VALUES (10781,56,38.0,20,0.2);
INSERT INTO `Order Details` VALUES (10781,74,10.0,35,0.0);
INSERT INTO `Order Details` VALUES (10782,31,12.5,1,0.0);
INSERT INTO `Order Details` VALUES (10783,31,12.5,10,0.0);
INSERT INTO `Order Details` VALUES (10783,38,263.5,5,0.0);
INSERT INTO `Order Details` VALUES (10784,36,19.0,30,0.0);
INSERT INTO `Order Details` VALUES (10784,39,18.0,2,0.15);
INSERT INTO `Order Details` VALUES (10784,72,34.8,30,0.15);
INSERT INTO `Order Details` VALUES (10785,10,31.0,10,0.0);
INSERT INTO `Order Details` VALUES (10785,75,7.75,10,0.0);
INSERT INTO `Order Details` VALUES (10786,8,40.0,30,0.2);
INSERT INTO `Order Details` VALUES (10786,30,25.89,15,0.2);
INSERT INTO `Order Details` VALUES (10786,75,7.75,42,0.2);
INSERT INTO `Order Details` VALUES (10787,2,19.0,15,0.05);
INSERT INTO `Order Details` VALUES (10787,29,123.79,20,0.05);
INSERT INTO `Order Details` VALUES (10788,19,9.2,50,0.05);
INSERT INTO `Order Details` VALUES (10788,75,7.75,40,0.05);
INSERT INTO `Order Details` VALUES (10789,18,62.5,30,0.0);
INSERT INTO `Order Details` VALUES (10789,35,18.0,15,0.0);
INSERT INTO `Order Details` VALUES (10789,63,43.9,30,0.0);
INSERT INTO `Order Details` VALUES (10789,68,12.5,18,0.0);
INSERT INTO `Order Details` VALUES (10790,7,30.0,3,0.15);
INSERT INTO `Order Details` VALUES (10790,56,38.0,20,0.15);
INSERT INTO `Order Details` VALUES (10791,29,123.79,14,0.05);
INSERT INTO `Order Details` VALUES (10791,41,9.65,20,0.05);
INSERT INTO `Order Details` VALUES (10792,2,19.0,10,0.0);
INSERT INTO `Order Details` VALUES (10792,54,7.45,3,0.0);
INSERT INTO `Order Details` VALUES (10792,68,12.5,15,0.0);
INSERT INTO `Order Details` VALUES (10793,41,9.65,14,0.0);
INSERT INTO `Order Details` VALUES (10793,52,7.0,8,0.0);
INSERT INTO `Order Details` VALUES (10794,14,23.25,15,0.2);
INSERT INTO `Order Details` VALUES (10794,54,7.45,6,0.2);
INSERT INTO `Order Details` VALUES (10795,16,17.45,65,0.0);
INSERT INTO `Order Details` VALUES (10795,17,39.0,35,0.25);
INSERT INTO `Order Details` VALUES (10796,26,31.23,21,0.2);
INSERT INTO `Order Details` VALUES (10796,44,19.45,10,0.0);
INSERT INTO `Order Details` VALUES (10796,64,33.25,35,0.2);
INSERT INTO `Order Details` VALUES (10796,69,36.0,24,0.2);
INSERT INTO `Order Details` VALUES (10797,11,21.0,20,0.0);
INSERT INTO `Order Details` VALUES (10798,62,49.3,2,0.0);
INSERT INTO `Order Details` VALUES (10798,72,34.8,10,0.0);
INSERT INTO `Order Details` VALUES (10799,13,6.0,20,0.15);
INSERT INTO `Order Details` VALUES (10799,24,4.5,20,0.15);
INSERT INTO `Order Details` VALUES (10799,59,55.0,25,0.0);
INSERT INTO `Order Details` VALUES (10800,11,21.0,50,0.1);
INSERT INTO `Order Details` VALUES (10800,51,53.0,10,0.1);
INSERT INTO `Order Details` VALUES (10800,54,7.45,7,0.1);
INSERT INTO `Order Details` VALUES (10801,17,39.0,40,0.25);
INSERT INTO `Order Details` VALUES (10801,29,123.79,20,0.25);
INSERT INTO `Order Details` VALUES (10802,30,25.89,25,0.25);
INSERT INTO `Order Details` VALUES (10802,51,53.0,30,0.25);
INSERT INTO `Order Details` VALUES (10802,55,24.0,60,0.25);
INSERT INTO `Order Details` VALUES (10802,62,49.3,5,0.25);
INSERT INTO `Order Details` VALUES (10803,19,9.2,24,0.05);
INSERT INTO `Order Details` VALUES (10803,25,14.0,15,0.05);
INSERT INTO `Order Details` VALUES (10803,59,55.0,15,0.05);
INSERT INTO `Order Details` VALUES (10804,10,31.0,36,0.0);
INSERT INTO `Order Details` VALUES (10804,28,45.6,24,0.0);
INSERT INTO `Order Details` VALUES (10804,49,20.0,4,0.15);
INSERT INTO `Order Details` VALUES (10805,34,14.0,10,0.0);
INSERT INTO `Order Details` VALUES (10805,38,263.5,10,0.0);
INSERT INTO `Order Details` VALUES (10806,2,19.0,20,0.25);
INSERT INTO `Order Details` VALUES (10806,65,21.05,2,0.0);
INSERT INTO `Order Details` VALUES (10806,74,10.0,15,0.25);
INSERT INTO `Order Details` VALUES (10807,40,18.4,1,0.0);
INSERT INTO `Order Details` VALUES (10808,56,38.0,20,0.15);
INSERT INTO `Order Details` VALUES (10808,76,18.0,50,0.15);
INSERT INTO `Order Details` VALUES (10809,52,7.0,20,0.0);
INSERT INTO `Order Details` VALUES (10810,13,6.0,7,0.0);
INSERT INTO `Order Details` VALUES (10810,25,14.0,5,0.0);
INSERT INTO `Order Details` VALUES (10810,70,15.0,5,0.0);
INSERT INTO `Order Details` VALUES (10811,19,9.2,15,0.0);
INSERT INTO `Order Details` VALUES (10811,23,9.0,18,0.0);
INSERT INTO `Order Details` VALUES (10811,40,18.4,30,0.0);
INSERT INTO `Order Details` VALUES (10812,31,12.5,16,0.1);
INSERT INTO `Order Details` VALUES (10812,72,34.8,40,0.1);
INSERT INTO `Order Details` VALUES (10812,77,13.0,20,0.0);
INSERT INTO `Order Details` VALUES (10813,2,19.0,12,0.2);
INSERT INTO `Order Details` VALUES (10813,46,12.0,35,0.0);
INSERT INTO `Order Details` VALUES (10814,41,9.65,20,0.0);
INSERT INTO `Order Details` VALUES (10814,43,46.0,20,0.15);
INSERT INTO `Order Details` VALUES (10814,48,12.75,8,0.15);
INSERT INTO `Order Details` VALUES (10814,61,28.5,30,0.15);
INSERT INTO `Order Details` VALUES (10815,33,2.5,16,0.0);
INSERT INTO `Order Details` VALUES (10816,38,263.5,30,0.05);
INSERT INTO `Order Details` VALUES (10816,62,49.3,20,0.05);
INSERT INTO `Order Details` VALUES (10817,26,31.23,40,0.15);
INSERT INTO `Order Details` VALUES (10817,38,263.5,30,0.0);
INSERT INTO `Order Details` VALUES (10817,40,18.4,60,0.15);
INSERT INTO `Order Details` VALUES (10817,62,49.3,25,0.15);
INSERT INTO `Order Details` VALUES (10818,32,32.0,20,0.0);
INSERT INTO `Order Details` VALUES (10818,41,9.65,20,0.0);
INSERT INTO `Order Details` VALUES (10819,43,46.0,7,0.0);
INSERT INTO `Order Details` VALUES (10819,75,7.75,20,0.0);
INSERT INTO `Order Details` VALUES (10820,56,38.0,30,0.0);
INSERT INTO `Order Details` VALUES (10821,35,18.0,20,0.0);
INSERT INTO `Order Details` VALUES (10821,51,53.0,6,0.0);
INSERT INTO `Order Details` VALUES (10822,62,49.3,3,0.0);
INSERT INTO `Order Details` VALUES (10822,70,15.0,6,0.0);
INSERT INTO `Order Details` VALUES (10823,11,21.0,20,0.1);
INSERT INTO `Order Details` VALUES (10823,57,19.5,15,0.0);
INSERT INTO `Order Details` VALUES (10823,59,55.0,40,0.1);
INSERT INTO `Order Details` VALUES (10823,77,13.0,15,0.1);
INSERT INTO `Order Details` VALUES (10824,41,9.65,12,0.0);
INSERT INTO `Order Details` VALUES (10824,70,15.0,9,0.0);
INSERT INTO `Order Details` VALUES (10825,26,31.23,12,0.0);
INSERT INTO `Order Details` VALUES (10825,53,32.8,20,0.0);
INSERT INTO `Order Details` VALUES (10826,31,12.5,35,0.0);
INSERT INTO `Order Details` VALUES (10826,57,19.5,15,0.0);
INSERT INTO `Order Details` VALUES (10827,10,31.0,15,0.0);
INSERT INTO `Order Details` VALUES (10827,39,18.0,21,0.0);
INSERT INTO `Order Details` VALUES (10828,20,81.0,5,0.0);
INSERT INTO `Order Details` VALUES (10828,38,263.5,2,0.0);
INSERT INTO `Order Details` VALUES (10829,2,19.0,10,0.0);
INSERT INTO `Order Details` VALUES (10829,8,40.0,20,0.0);
INSERT INTO `Order Details` VALUES (10829,13,6.0,10,0.0);
INSERT INTO `Order Details` VALUES (10829,60,34.0,21,0.0);
INSERT INTO `Order Details` VALUES (10830,6,25.0,6,0.0);
INSERT INTO `Order Details` VALUES (10830,39,18.0,28,0.0);
INSERT INTO `Order Details` VALUES (10830,60,34.0,30,0.0);
INSERT INTO `Order Details` VALUES (10830,68,12.5,24,0.0);
INSERT INTO `Order Details` VALUES (10831,19,9.2,2,0.0);
INSERT INTO `Order Details` VALUES (10831,35,18.0,8,0.0);
INSERT INTO `Order Details` VALUES (10831,38,263.5,8,0.0);
INSERT INTO `Order Details` VALUES (10831,43,46.0,9,0.0);
INSERT INTO `Order Details` VALUES (10832,13,6.0,3,0.2);
INSERT INTO `Order Details` VALUES (10832,25,14.0,10,0.2);
INSERT INTO `Order Details` VALUES (10832,44,19.45,16,0.2);
INSERT INTO `Order Details` VALUES (10832,64,33.25,3,0.0);
INSERT INTO `Order Details` VALUES (10833,7,30.0,20,0.1);
INSERT INTO `Order Details` VALUES (10833,31,12.5,9,0.1);
INSERT INTO `Order Details` VALUES (10833,53,32.8,9,0.1);
INSERT INTO `Order Details` VALUES (10834,29,123.79,8,0.05);
INSERT INTO `Order Details` VALUES (10834,30,25.89,20,0.05);
INSERT INTO `Order Details` VALUES (10835,59,55.0,15,0.0);
INSERT INTO `Order Details` VALUES (10835,77,13.0,2,0.2);
INSERT INTO `Order Details` VALUES (10836,22,21.0,52,0.0);
INSERT INTO `Order Details` VALUES (10836,35,18.0,6,0.0);
INSERT INTO `Order Details` VALUES (10836,57,19.5,24,0.0);
INSERT INTO `Order Details` VALUES (10836,60,34.0,60,0.0);
INSERT INTO `Order Details` VALUES (10836,64,33.25,30,0.0);
INSERT INTO `Order Details` VALUES (10837,13,6.0,6,0.0);
INSERT INTO `Order Details` VALUES (10837,40,18.4,25,0.0);
INSERT INTO `Order Details` VALUES (10837,47,9.5,40,0.25);
INSERT INTO `Order Details` VALUES (10837,76,18.0,21,0.25);
INSERT INTO `Order Details` VALUES (10838,1,18.0,4,0.25);
INSERT INTO `Order Details` VALUES (10838,18,62.5,25,0.25);
INSERT INTO `Order Details` VALUES (10838,36,19.0,50,0.25);
INSERT INTO `Order Details` VALUES (10839,58,13.25,30,0.1);
INSERT INTO `Order Details` VALUES (10839,72,34.8,15,0.1);
INSERT INTO `Order Details` VALUES (10840,25,14.0,6,0.2);
INSERT INTO `Order Details` VALUES (10840,39,18.0,10,0.2);
INSERT INTO `Order Details` VALUES (10841,10,31.0,16,0.0);
INSERT INTO `Order Details` VALUES (10841,56,38.0,30,0.0);
INSERT INTO `Order Details` VALUES (10841,59,55.0,50,0.0);
INSERT INTO `Order Details` VALUES (10841,77,13.0,15,0.0);
INSERT INTO `Order Details` VALUES (10842,11,21.0,15,0.0);
INSERT INTO `Order Details` VALUES (10842,43,46.0,5,0.0);
INSERT INTO `Order Details` VALUES (10842,68,12.5,20,0.0);
INSERT INTO `Order Details` VALUES (10842,70,15.0,12,0.0);
INSERT INTO `Order Details` VALUES (10843,51,53.0,4,0.25);
INSERT INTO `Order Details` VALUES (10844,22,21.0,35,0.0);
INSERT INTO `Order Details` VALUES (10845,23,9.0,70,0.1);
INSERT INTO `Order Details` VALUES (10845,35,18.0,25,0.1);
INSERT INTO `Order Details` VALUES (10845,42,14.0,42,0.1);
INSERT INTO `Order Details` VALUES (10845,58,13.25,60,0.1);
INSERT INTO `Order Details` VALUES (10845,64,33.25,48,0.0);
INSERT INTO `Order Details` VALUES (10846,4,22.0,21,0.0);
INSERT INTO `Order Details` VALUES (10846,70,15.0,30,0.0);
INSERT INTO `Order Details` VALUES (10846,74,10.0,20,0.0);
INSERT INTO `Order Details` VALUES (10847,1,18.0,80,0.2);
INSERT INTO `Order Details` VALUES (10847,19,9.2,12,0.2);
INSERT INTO `Order Details` VALUES (10847,37,26.0,60,0.2);
INSERT INTO `Order Details` VALUES (10847,45,9.5,36,0.2);
INSERT INTO `Order Details` VALUES (10847,60,34.0,45,0.2);
INSERT INTO `Order Details` VALUES (10847,71,21.5,55,0.2);
INSERT INTO `Order Details` VALUES (10848,5,21.35,30,0.0);
INSERT INTO `Order Details` VALUES (10848,9,97.0,3,0.0);
INSERT INTO `Order Details` VALUES (10849,3,10.0,49,0.0);
INSERT INTO `Order Details` VALUES (10849,26,31.23,18,0.15);
INSERT INTO `Order Details` VALUES (10850,25,14.0,20,0.15);
INSERT INTO `Order Details` VALUES (10850,33,2.5,4,0.15);
INSERT INTO `Order Details` VALUES (10850,70,15.0,30,0.15);
INSERT INTO `Order Details` VALUES (10851,2,19.0,5,0.05);
INSERT INTO `Order Details` VALUES (10851,25,14.0,10,0.05);
INSERT INTO `Order Details` VALUES (10851,57,19.5,10,0.05);
INSERT INTO `Order Details` VALUES (10851,59,55.0,42,0.05);
INSERT INTO `Order Details` VALUES (10852,2,19.0,15,0.0);
INSERT INTO `Order Details` VALUES (10852,17,39.0,6,0.0);
INSERT INTO `Order Details` VALUES (10852,62,49.3,50,0.0);
INSERT INTO `Order Details` VALUES (10853,18,62.5,10,0.0);
INSERT INTO `Order Details` VALUES (10854,10,31.0,100,0.15);
INSERT INTO `Order Details` VALUES (10854,13,6.0,65,0.15);
INSERT INTO `Order Details` VALUES (10855,16,17.45,50,0.0);
INSERT INTO `Order Details` VALUES (10855,31,12.5,14,0.0);
INSERT INTO `Order Details` VALUES (10855,56,38.0,24,0.0);
INSERT INTO `Order Details` VALUES (10855,65,21.05,15,0.15);
INSERT INTO `Order Details` VALUES (10856,2,19.0,20,0.0);
INSERT INTO `Order Details` VALUES (10856,42,14.0,20,0.0);
INSERT INTO `Order Details` VALUES (10857,3,10.0,30,0.0);
INSERT INTO `Order Details` VALUES (10857,26,31.23,35,0.25);
INSERT INTO `Order Details` VALUES (10857,29,123.79,10,0.25);
INSERT INTO `Order Details` VALUES (10858,7,30.0,5,0.0);
INSERT INTO `Order Details` VALUES (10858,27,43.9,10,0.0);
INSERT INTO `Order Details` VALUES (10858,70,15.0,4,0.0);
INSERT INTO `Order Details` VALUES (10859,24,4.5,40,0.25);
INSERT INTO `Order Details` VALUES (10859,54,7.45,35,0.25);
INSERT INTO `Order Details` VALUES (10859,64,33.25,30,0.25);
INSERT INTO `Order Details` VALUES (10860,51,53.0,3,0.0);
INSERT INTO `Order Details` VALUES (10860,76,18.0,20,0.0);
INSERT INTO `Order Details` VALUES (10861,17,39.0,42,0.0);
INSERT INTO `Order Details` VALUES (10861,18,62.5,20,0.0);
INSERT INTO `Order Details` VALUES (10861,21,10.0,40,0.0);
INSERT INTO `Order Details` VALUES (10861,33,2.5,35,0.0);
INSERT INTO `Order Details` VALUES (10861,62,49.3,3,0.0);
INSERT INTO `Order Details` VALUES (10862,11,21.0,25,0.0);
INSERT INTO `Order Details` VALUES (10862,52,7.0,8,0.0);
INSERT INTO `Order Details` VALUES (10863,1,18.0,20,0.15);
INSERT INTO `Order Details` VALUES (10863,58,13.25,12,0.15);
INSERT INTO `Order Details` VALUES (10864,35,18.0,4,0.0);
INSERT INTO `Order Details` VALUES (10864,67,14.0,15,0.0);
INSERT INTO `Order Details` VALUES (10865,38,263.5,60,0.05);
INSERT INTO `Order Details` VALUES (10865,39,18.0,80,0.05);
INSERT INTO `Order Details` VALUES (10866,2,19.0,21,0.25);
INSERT INTO `Order Details` VALUES (10866,24,4.5,6,0.25);
INSERT INTO `Order Details` VALUES (10866,30,25.89,40,0.25);
INSERT INTO `Order Details` VALUES (10867,53,32.8,3,0.0);
INSERT INTO `Order Details` VALUES (10868,26,31.23,20,0.0);
INSERT INTO `Order Details` VALUES (10868,35,18.0,30,0.0);
INSERT INTO `Order Details` VALUES (10868,49,20.0,42,0.1);
INSERT INTO `Order Details` VALUES (10869,1,18.0,40,0.0);
INSERT INTO `Order Details` VALUES (10869,11,21.0,10,0.0);
INSERT INTO `Order Details` VALUES (10869,23,9.0,50,0.0);
INSERT INTO `Order Details` VALUES (10869,68,12.5,20,0.0);
INSERT INTO `Order Details` VALUES (10870,35,18.0,3,0.0);
INSERT INTO `Order Details` VALUES (10870,51,53.0,2,0.0);
INSERT INTO `Order Details` VALUES (10871,6,25.0,50,0.05);
INSERT INTO `Order Details` VALUES (10871,16,17.45,12,0.05);
INSERT INTO `Order Details` VALUES (10871,17,39.0,16,0.05);
INSERT INTO `Order Details` VALUES (10872,55,24.0,10,0.05);
INSERT INTO `Order Details` VALUES (10872,62,49.3,20,0.05);
INSERT INTO `Order Details` VALUES (10872,64,33.25,15,0.05);
INSERT INTO `Order Details` VALUES (10872,65,21.05,21,0.05);
INSERT INTO `Order Details` VALUES (10873,21,10.0,20,0.0);
INSERT INTO `Order Details` VALUES (10873,28,45.6,3,0.0);
INSERT INTO `Order Details` VALUES (10874,10,31.0,10,0.0);
INSERT INTO `Order Details` VALUES (10875,19,9.2,25,0.0);
INSERT INTO `Order Details` VALUES (10875,47,9.5,21,0.1);
INSERT INTO `Order Details` VALUES (10875,49,20.0,15,0.0);
INSERT INTO `Order Details` VALUES (10876,46,12.0,21,0.0);
INSERT INTO `Order Details` VALUES (10876,64,33.25,20,0.0);
INSERT INTO `Order Details` VALUES (10877,16,17.45,30,0.25);
INSERT INTO `Order Details` VALUES (10877,18,62.5,25,0.0);
INSERT INTO `Order Details` VALUES (10878,20,81.0,20,0.05);
INSERT INTO `Order Details` VALUES (10879,40,18.4,12,0.0);
INSERT INTO `Order Details` VALUES (10879,65,21.05,10,0.0);
INSERT INTO `Order Details` VALUES (10879,76,18.0,10,0.0);
INSERT INTO `Order Details` VALUES (10880,23,9.0,30,0.2);
INSERT INTO `Order Details` VALUES (10880,61,28.5,30,0.2);
INSERT INTO `Order Details` VALUES (10880,70,15.0,50,0.2);
INSERT INTO `Order Details` VALUES (10881,73,15.0,10,0.0);
INSERT INTO `Order Details` VALUES (10882,42,14.0,25,0.0);
INSERT INTO `Order Details` VALUES (10882,49,20.0,20,0.15);
INSERT INTO `Order Details` VALUES (10882,54,7.45,32,0.15);
INSERT INTO `Order Details` VALUES (10883,24,4.5,8,0.0);
INSERT INTO `Order Details` VALUES (10884,21,10.0,40,0.05);
INSERT INTO `Order Details` VALUES (10884,56,38.0,21,0.05);
INSERT INTO `Order Details` VALUES (10884,65,21.05,12,0.05);
INSERT INTO `Order Details` VALUES (10885,2,19.0,20,0.0);
INSERT INTO `Order Details` VALUES (10885,24,4.5,12,0.0);
INSERT INTO `Order Details` VALUES (10885,70,15.0,30,0.0);
INSERT INTO `Order Details` VALUES (10885,77,13.0,25,0.0);
INSERT INTO `Order Details` VALUES (10886,10,31.0,70,0.0);
INSERT INTO `Order Details` VALUES (10886,31,12.5,35,0.0);
INSERT INTO `Order Details` VALUES (10886,77,13.0,40,0.0);
INSERT INTO `Order Details` VALUES (10887,25,14.0,5,0.0);
INSERT INTO `Order Details` VALUES (10888,2,19.0,20,0.0);
INSERT INTO `Order Details` VALUES (10888,68,12.5,18,0.0);
INSERT INTO `Order Details` VALUES (10889,11,21.0,40,0.0);
INSERT INTO `Order Details` VALUES (10889,38,263.5,40,0.0);
INSERT INTO `Order Details` VALUES (10890,17,39.0,15,0.0);
INSERT INTO `Order Details` VALUES (10890,34,14.0,10,0.0);
INSERT INTO `Order Details` VALUES (10890,41,9.65,14,0.0);
INSERT INTO `Order Details` VALUES (10891,30,25.89,15,0.05);
INSERT INTO `Order Details` VALUES (10892,59,55.0,40,0.05);
INSERT INTO `Order Details` VALUES (10893,8,40.0,30,0.0);
INSERT INTO `Order Details` VALUES (10893,24,4.5,10,0.0);
INSERT INTO `Order Details` VALUES (10893,29,123.79,24,0.0);
INSERT INTO `Order Details` VALUES (10893,30,25.89,35,0.0);
INSERT INTO `Order Details` VALUES (10893,36,19.0,20,0.0);
INSERT INTO `Order Details` VALUES (10894,13,6.0,28,0.05);
INSERT INTO `Order Details` VALUES (10894,69,36.0,50,0.05);
INSERT INTO `Order Details` VALUES (10894,75,7.75,120,0.05);
INSERT INTO `Order Details` VALUES (10895,24,4.5,110,0.0);
INSERT INTO `Order Details` VALUES (10895,39,18.0,45,0.0);
INSERT INTO `Order Details` VALUES (10895,40,18.4,91,0.0);
INSERT INTO `Order Details` VALUES (10895,60,34.0,100,0.0);
INSERT INTO `Order Details` VALUES (10896,45,9.5,15,0.0);
INSERT INTO `Order Details` VALUES (10896,56,38.0,16,0.0);
INSERT INTO `Order Details` VALUES (10897,29,123.79,80,0.0);
INSERT INTO `Order Details` VALUES (10897,30,25.89,36,0.0);
INSERT INTO `Order Details` VALUES (10898,13,6.0,5,0.0);
INSERT INTO `Order Details` VALUES (10899,39,18.0,8,0.15);
INSERT INTO `Order Details` VALUES (10900,70,15.0,3,0.25);
INSERT INTO `Order Details` VALUES (10901,41,9.65,30,0.0);
INSERT INTO `Order Details` VALUES (10901,71,21.5,30,0.0);
INSERT INTO `Order Details` VALUES (10902,55,24.0,30,0.15);
INSERT INTO `Order Details` VALUES (10902,62,49.3,6,0.15);
INSERT INTO `Order Details` VALUES (10903,13,6.0,40,0.0);
INSERT INTO `Order Details` VALUES (10903,65,21.05,21,0.0);
INSERT INTO `Order Details` VALUES (10903,68,12.5,20,0.0);
INSERT INTO `Order Details` VALUES (10904,58,13.25,15,0.0);
INSERT INTO `Order Details` VALUES (10904,62,49.3,35,0.0);
INSERT INTO `Order Details` VALUES (10905,1,18.0,20,0.05);
INSERT INTO `Order Details` VALUES (10906,61,28.5,15,0.0);
INSERT INTO `Order Details` VALUES (10907,75,7.75,14,0.0);
INSERT INTO `Order Details` VALUES (10908,7,30.0,20,0.05);
INSERT INTO `Order Details` VALUES (10908,52,7.0,14,0.05);
INSERT INTO `Order Details` VALUES (10909,7,30.0,12,0.0);
INSERT INTO `Order Details` VALUES (10909,16,17.45,15,0.0);
INSERT INTO `Order Details` VALUES (10909,41,9.65,5,0.0);
INSERT INTO `Order Details` VALUES (10910,19,9.2,12,0.0);
INSERT INTO `Order Details` VALUES (10910,49,20.0,10,0.0);
INSERT INTO `Order Details` VALUES (10910,61,28.5,5,0.0);
INSERT INTO `Order Details` VALUES (10911,1,18.0,10,0.0);
INSERT INTO `Order Details` VALUES (10911,17,39.0,12,0.0);
INSERT INTO `Order Details` VALUES (10911,67,14.0,15,0.0);
INSERT INTO `Order Details` VALUES (10912,11,21.0,40,0.25);
INSERT INTO `Order Details` VALUES (10912,29,123.79,60,0.25);
INSERT INTO `Order Details` VALUES (10913,4,22.0,30,0.25);
INSERT INTO `Order Details` VALUES (10913,33,2.5,40,0.25);
INSERT INTO `Order Details` VALUES (10913,58,13.25,15,0.0);
INSERT INTO `Order Details` VALUES (10914,71,21.5,25,0.0);
INSERT INTO `Order Details` VALUES (10915,17,39.0,10,0.0);
INSERT INTO `Order Details` VALUES (10915,33,2.5,30,0.0);
INSERT INTO `Order Details` VALUES (10915,54,7.45,10,0.0);
INSERT INTO `Order Details` VALUES (10916,16,17.45,6,0.0);
INSERT INTO `Order Details` VALUES (10916,32,32.0,6,0.0);
INSERT INTO `Order Details` VALUES (10916,57,19.5,20,0.0);
INSERT INTO `Order Details` VALUES (10917,30,25.89,1,0.0);
INSERT INTO `Order Details` VALUES (10917,60,34.0,10,0.0);
INSERT INTO `Order Details` VALUES (10918,1,18.0,60,0.25);
INSERT INTO `Order Details` VALUES (10918,60,34.0,25,0.25);
INSERT INTO `Order Details` VALUES (10919,16,17.45,24,0.0);
INSERT INTO `Order Details` VALUES (10919,25,14.0,24,0.0);
INSERT INTO `Order Details` VALUES (10919,40,18.4,20,0.0);
INSERT INTO `Order Details` VALUES (10920,50,16.25,24,0.0);
INSERT INTO `Order Details` VALUES (10921,35,18.0,10,0.0);
INSERT INTO `Order Details` VALUES (10921,63,43.9,40,0.0);
INSERT INTO `Order Details` VALUES (10922,17,39.0,15,0.0);
INSERT INTO `Order Details` VALUES (10922,24,4.5,35,0.0);
INSERT INTO `Order Details` VALUES (10923,42,14.0,10,0.2);
INSERT INTO `Order Details` VALUES (10923,43,46.0,10,0.2);
INSERT INTO `Order Details` VALUES (10923,67,14.0,24,0.2);
INSERT INTO `Order Details` VALUES (10924,10,31.0,20,0.1);
INSERT INTO `Order Details` VALUES (10924,28,45.6,30,0.1);
INSERT INTO `Order Details` VALUES (10924,75,7.75,6,0.0);
INSERT INTO `Order Details` VALUES (10925,36,19.0,25,0.15);
INSERT INTO `Order Details` VALUES (10925,52,7.0,12,0.15);
INSERT INTO `Order Details` VALUES (10926,11,21.0,2,0.0);
INSERT INTO `Order Details` VALUES (10926,13,6.0,10,0.0);
INSERT INTO `Order Details` VALUES (10926,19,9.2,7,0.0);
INSERT INTO `Order Details` VALUES (10926,72,34.8,10,0.0);
INSERT INTO `Order Details` VALUES (10927,20,81.0,5,0.0);
INSERT INTO `Order Details` VALUES (10927,52,7.0,5,0.0);
INSERT INTO `Order Details` VALUES (10927,76,18.0,20,0.0);
INSERT INTO `Order Details` VALUES (10928,47,9.5,5,0.0);
INSERT INTO `Order Details` VALUES (10928,76,18.0,5,0.0);
INSERT INTO `Order Details` VALUES (10929,21,10.0,60,0.0);
INSERT INTO `Order Details` VALUES (10929,75,7.75,49,0.0);
INSERT INTO `Order Details` VALUES (10929,77,13.0,15,0.0);
INSERT INTO `Order Details` VALUES (10930,21,10.0,36,0.0);
INSERT INTO `Order Details` VALUES (10930,27,43.9,25,0.0);
INSERT INTO `Order Details` VALUES (10930,55,24.0,25,0.2);
INSERT INTO `Order Details` VALUES (10930,58,13.25,30,0.2);
INSERT INTO `Order Details` VALUES (10931,13,6.0,42,0.15);
INSERT INTO `Order Details` VALUES (10931,57,19.5,30,0.0);
INSERT INTO `Order Details` VALUES (10932,16,17.45,30,0.1);
INSERT INTO `Order Details` VALUES (10932,62,49.3,14,0.1);
INSERT INTO `Order Details` VALUES (10932,72,34.8,16,0.0);
INSERT INTO `Order Details` VALUES (10932,75,7.75,20,0.1);
INSERT INTO `Order Details` VALUES (10933,53,32.8,2,0.0);
INSERT INTO `Order Details` VALUES (10933,61,28.5,30,0.0);
INSERT INTO `Order Details` VALUES (10934,6,25.0,20,0.0);
INSERT INTO `Order Details` VALUES (10935,1,18.0,21,0.0);
INSERT INTO `Order Details` VALUES (10935,18,62.5,4,0.25);
INSERT INTO `Order Details` VALUES (10935,23,9.0,8,0.25);
INSERT INTO `Order Details` VALUES (10936,36,19.0,30,0.2);
INSERT INTO `Order Details` VALUES (10937,28,45.6,8,0.0);
INSERT INTO `Order Details` VALUES (10937,34,14.0,20,0.0);
INSERT INTO `Order Details` VALUES (10938,13,6.0,20,0.25);
INSERT INTO `Order Details` VALUES (10938,43,46.0,24,0.25);
INSERT INTO `Order Details` VALUES (10938,60,34.0,49,0.25);
INSERT INTO `Order Details` VALUES (10938,71,21.5,35,0.25);
INSERT INTO `Order Details` VALUES (10939,2,19.0,10,0.15);
INSERT INTO `Order Details` VALUES (10939,67,14.0,40,0.15);
INSERT INTO `Order Details` VALUES (10940,7,30.0,8,0.0);
INSERT INTO `Order Details` VALUES (10940,13,6.0,20,0.0);
INSERT INTO `Order Details` VALUES (10941,31,12.5,44,0.25);
INSERT INTO `Order Details` VALUES (10941,62,49.3,30,0.25);
INSERT INTO `Order Details` VALUES (10941,68,12.5,80,0.25);
INSERT INTO `Order Details` VALUES (10941,72,34.8,50,0.0);
INSERT INTO `Order Details` VALUES (10942,49,20.0,28,0.0);
INSERT INTO `Order Details` VALUES (10943,13,6.0,15,0.0);
INSERT INTO `Order Details` VALUES (10943,22,21.0,21,0.0);
INSERT INTO `Order Details` VALUES (10943,46,12.0,15,0.0);
INSERT INTO `Order Details` VALUES (10944,11,21.0,5,0.25);
INSERT INTO `Order Details` VALUES (10944,44,19.45,18,0.25);
INSERT INTO `Order Details` VALUES (10944,56,38.0,18,0.0);
INSERT INTO `Order Details` VALUES (10945,13,6.0,20,0.0);
INSERT INTO `Order Details` VALUES (10945,31,12.5,10,0.0);
INSERT INTO `Order Details` VALUES (10946,10,31.0,25,0.0);
INSERT INTO `Order Details` VALUES (10946,24,4.5,25,0.0);
INSERT INTO `Order Details` VALUES (10946,77,13.0,40,0.0);
INSERT INTO `Order Details` VALUES (10947,59,55.0,4,0.0);
INSERT INTO `Order Details` VALUES (10948,50,16.25,9,0.0);
INSERT INTO `Order Details` VALUES (10948,51,53.0,40,0.0);
INSERT INTO `Order Details` VALUES (10948,55,24.0,4,0.0);
INSERT INTO `Order Details` VALUES (10949,6,25.0,12,0.0);
INSERT INTO `Order Details` VALUES (10949,10,31.0,30,0.0);
INSERT INTO `Order Details` VALUES (10949,17,39.0,6,0.0);
INSERT INTO `Order Details` VALUES (10949,62,49.3,60,0.0);
INSERT INTO `Order Details` VALUES (10950,4,22.0,5,0.0);
INSERT INTO `Order Details` VALUES (10951,33,2.5,15,0.05);
INSERT INTO `Order Details` VALUES (10951,41,9.65,6,0.05);
INSERT INTO `Order Details` VALUES (10951,75,7.75,50,0.05);
INSERT INTO `Order Details` VALUES (10952,6,25.0,16,0.05);
INSERT INTO `Order Details` VALUES (10952,28,45.6,2,0.0);
INSERT INTO `Order Details` VALUES (10953,20,81.0,50,0.05);
INSERT INTO `Order Details` VALUES (10953,31,12.5,50,0.05);
INSERT INTO `Order Details` VALUES (10954,16,17.45,28,0.15);
INSERT INTO `Order Details` VALUES (10954,31,12.5,25,0.15);
INSERT INTO `Order Details` VALUES (10954,45,9.5,30,0.0);
INSERT INTO `Order Details` VALUES (10954,60,34.0,24,0.15);
INSERT INTO `Order Details` VALUES (10955,75,7.75,12,0.2);
INSERT INTO `Order Details` VALUES (10956,21,10.0,12,0.0);
INSERT INTO `Order Details` VALUES (10956,47,9.5,14,0.0);
INSERT INTO `Order Details` VALUES (10956,51,53.0,8,0.0);
INSERT INTO `Order Details` VALUES (10957,30,25.89,30,0.0);
INSERT INTO `Order Details` VALUES (10957,35,18.0,40,0.0);
INSERT INTO `Order Details` VALUES (10957,64,33.25,8,0.0);
INSERT INTO `Order Details` VALUES (10958,5,21.35,20,0.0);
INSERT INTO `Order Details` VALUES (10958,7,30.0,6,0.0);
INSERT INTO `Order Details` VALUES (10958,72,34.8,5,0.0);
INSERT INTO `Order Details` VALUES (10959,75,7.75,20,0.15);
INSERT INTO `Order Details` VALUES (10960,24,4.5,10,0.25);
INSERT INTO `Order Details` VALUES (10960,41,9.65,24,0.0);
INSERT INTO `Order Details` VALUES (10961,52,7.0,6,0.05);
INSERT INTO `Order Details` VALUES (10961,76,18.0,60,0.0);
INSERT INTO `Order Details` VALUES (10962,7,30.0,45,0.0);
INSERT INTO `Order Details` VALUES (10962,13,6.0,77,0.0);
INSERT INTO `Order Details` VALUES (10962,53,32.8,20,0.0);
INSERT INTO `Order Details` VALUES (10962,69,36.0,9,0.0);
INSERT INTO `Order Details` VALUES (10962,76,18.0,44,0.0);
INSERT INTO `Order Details` VALUES (10963,60,34.0,2,0.15);
INSERT INTO `Order Details` VALUES (10964,18,62.5,6,0.0);
INSERT INTO `Order Details` VALUES (10964,38,263.5,5,0.0);
INSERT INTO `Order Details` VALUES (10964,69,36.0,10,0.0);
INSERT INTO `Order Details` VALUES (10965,51,53.0,16,0.0);
INSERT INTO `Order Details` VALUES (10966,37,26.0,8,0.0);
INSERT INTO `Order Details` VALUES (10966,56,38.0,12,0.15);
INSERT INTO `Order Details` VALUES (10966,62,49.3,12,0.15);
INSERT INTO `Order Details` VALUES (10967,19,9.2,12,0.0);
INSERT INTO `Order Details` VALUES (10967,49,20.0,40,0.0);
INSERT INTO `Order Details` VALUES (10968,12,38.0,30,0.0);
INSERT INTO `Order Details` VALUES (10968,24,4.5,30,0.0);
INSERT INTO `Order Details` VALUES (10968,64,33.25,4,0.0);
INSERT INTO `Order Details` VALUES (10969,46,12.0,9,0.0);
INSERT INTO `Order Details` VALUES (10970,52,7.0,40,0.2);
INSERT INTO `Order Details` VALUES (10971,29,123.79,14,0.0);
INSERT INTO `Order Details` VALUES (10972,17,39.0,6,0.0);
INSERT INTO `Order Details` VALUES (10972,33,2.5,7,0.0);
INSERT INTO `Order Details` VALUES (10973,26,31.23,5,0.0);
INSERT INTO `Order Details` VALUES (10973,41,9.65,6,0.0);
INSERT INTO `Order Details` VALUES (10973,75,7.75,10,0.0);
INSERT INTO `Order Details` VALUES (10974,63,43.9,10,0.0);
INSERT INTO `Order Details` VALUES (10975,8,40.0,16,0.0);
INSERT INTO `Order Details` VALUES (10975,75,7.75,10,0.0);
INSERT INTO `Order Details` VALUES (10976,28,45.6,20,0.0);
INSERT INTO `Order Details` VALUES (10977,39,18.0,30,0.0);
INSERT INTO `Order Details` VALUES (10977,47,9.5,30,0.0);
INSERT INTO `Order Details` VALUES (10977,51,53.0,10,0.0);
INSERT INTO `Order Details` VALUES (10977,63,43.9,20,0.0);
INSERT INTO `Order Details` VALUES (10978,8,40.0,20,0.15);
INSERT INTO `Order Details` VALUES (10978,21,10.0,40,0.15);
INSERT INTO `Order Details` VALUES (10978,40,18.4,10,0.0);
INSERT INTO `Order Details` VALUES (10978,44,19.45,6,0.15);
INSERT INTO `Order Details` VALUES (10979,7,30.0,18,0.0);
INSERT INTO `Order Details` VALUES (10979,12,38.0,20,0.0);
INSERT INTO `Order Details` VALUES (10979,24,4.5,80,0.0);
INSERT INTO `Order Details` VALUES (10979,27,43.9,30,0.0);
INSERT INTO `Order Details` VALUES (10979,31,12.5,24,0.0);
INSERT INTO `Order Details` VALUES (10979,63,43.9,35,0.0);
INSERT INTO `Order Details` VALUES (10980,75,7.75,40,0.2);
INSERT INTO `Order Details` VALUES (10981,38,263.5,60,0.0);
INSERT INTO `Order Details` VALUES (10982,7,30.0,20,0.0);
INSERT INTO `Order Details` VALUES (10982,43,46.0,9,0.0);
INSERT INTO `Order Details` VALUES (10983,13,6.0,84,0.15);
INSERT INTO `Order Details` VALUES (10983,57,19.5,15,0.0);
INSERT INTO `Order Details` VALUES (10984,16,17.45,55,0.0);
INSERT INTO `Order Details` VALUES (10984,24,4.5,20,0.0);
INSERT INTO `Order Details` VALUES (10984,36,19.0,40,0.0);
INSERT INTO `Order Details` VALUES (10985,16,17.45,36,0.1);
INSERT INTO `Order Details` VALUES (10985,18,62.5,8,0.1);
INSERT INTO `Order Details` VALUES (10985,32,32.0,35,0.1);
INSERT INTO `Order Details` VALUES (10986,11,21.0,30,0.0);
INSERT INTO `Order Details` VALUES (10986,20,81.0,15,0.0);
INSERT INTO `Order Details` VALUES (10986,76,18.0,10,0.0);
INSERT INTO `Order Details` VALUES (10986,77,13.0,15,0.0);
INSERT INTO `Order Details` VALUES (10987,7,30.0,60,0.0);
INSERT INTO `Order Details` VALUES (10987,43,46.0,6,0.0);
INSERT INTO `Order Details` VALUES (10987,72,34.8,20,0.0);
INSERT INTO `Order Details` VALUES (10988,7,30.0,60,0.0);
INSERT INTO `Order Details` VALUES (10988,62,49.3,40,0.1);
INSERT INTO `Order Details` VALUES (10989,6,25.0,40,0.0);
INSERT INTO `Order Details` VALUES (10989,11,21.0,15,0.0);
INSERT INTO `Order Details` VALUES (10989,41,9.65,4,0.0);
INSERT INTO `Order Details` VALUES (10990,21,10.0,65,0.0);
INSERT INTO `Order Details` VALUES (10990,34,14.0,60,0.15);
INSERT INTO `Order Details` VALUES (10990,55,24.0,65,0.15);
INSERT INTO `Order Details` VALUES (10990,61,28.5,66,0.15);
INSERT INTO `Order Details` VALUES (10991,2,19.0,50,0.2);
INSERT INTO `Order Details` VALUES (10991,70,15.0,20,0.2);
INSERT INTO `Order Details` VALUES (10991,76,18.0,90,0.2);
INSERT INTO `Order Details` VALUES (10992,72,34.8,2,0.0);
INSERT INTO `Order Details` VALUES (10993,29,123.79,50,0.25);
INSERT INTO `Order Details` VALUES (10993,41,9.65,35,0.25);
INSERT INTO `Order Details` VALUES (10994,59,55.0,18,0.05);
INSERT INTO `Order Details` VALUES (10995,51,53.0,20,0.0);
INSERT INTO `Order Details` VALUES (10995,60,34.0,4,0.0);
INSERT INTO `Order Details` VALUES (10996,42,14.0,40,0.0);
INSERT INTO `Order Details` VALUES (10997,32,32.0,50,0.0);
INSERT INTO `Order Details` VALUES (10997,46,12.0,20,0.25);
INSERT INTO `Order Details` VALUES (10997,52,7.0,20,0.25);
INSERT INTO `Order Details` VALUES (10998,24,4.5,12,0.0);
INSERT INTO `Order Details` VALUES (10998,61,28.5,7,0.0);
INSERT INTO `Order Details` VALUES (10998,74,10.0,20,0.0);
INSERT INTO `Order Details` VALUES (10998,75,7.75,30,0.0);
INSERT INTO `Order Details` VALUES (10999,41,9.65,20,0.05);
INSERT INTO `Order Details` VALUES (10999,51,53.0,15,0.05);
INSERT INTO `Order Details` VALUES (10999,77,13.0,21,0.05);
INSERT INTO `Order Details` VALUES (11000,4,22.0,25,0.25);
INSERT INTO `Order Details` VALUES (11000,24,4.5,30,0.25);
INSERT INTO `Order Details` VALUES (11000,77,13.0,30,0.0);
INSERT INTO `Order Details` VALUES (11001,7,30.0,60,0.0);
INSERT INTO `Order Details` VALUES (11001,22,21.0,25,0.0);
INSERT INTO `Order Details` VALUES (11001,46,12.0,25,0.0);
INSERT INTO `Order Details` VALUES (11001,55,24.0,6,0.0);
INSERT INTO `Order Details` VALUES (11002,13,6.0,56,0.0);
INSERT INTO `Order Details` VALUES (11002,35,18.0,15,0.15);
INSERT INTO `Order Details` VALUES (11002,42,14.0,24,0.15);
INSERT INTO `Order Details` VALUES (11002,55,24.0,40,0.0);
INSERT INTO `Order Details` VALUES (11003,1,18.0,4,0.0);
INSERT INTO `Order Details` VALUES (11003,40,18.4,10,0.0);
INSERT INTO `Order Details` VALUES (11003,52,7.0,10,0.0);
INSERT INTO `Order Details` VALUES (11004,26,31.23,6,0.0);
INSERT INTO `Order Details` VALUES (11004,76,18.0,6,0.0);
INSERT INTO `Order Details` VALUES (11005,1,18.0,2,0.0);
INSERT INTO `Order Details` VALUES (11005,59,55.0,10,0.0);
INSERT INTO `Order Details` VALUES (11006,1,18.0,8,0.0);
INSERT INTO `Order Details` VALUES (11006,29,123.79,2,0.25);
INSERT INTO `Order Details` VALUES (11007,8,40.0,30,0.0);
INSERT INTO `Order Details` VALUES (11007,29,123.79,10,0.0);
INSERT INTO `Order Details` VALUES (11007,42,14.0,14,0.0);
INSERT INTO `Order Details` VALUES (11008,28,45.6,70,0.05);
INSERT INTO `Order Details` VALUES (11008,34,14.0,90,0.05);
INSERT INTO `Order Details` VALUES (11008,71,21.5,21,0.0);
INSERT INTO `Order Details` VALUES (11009,24,4.5,12,0.0);
INSERT INTO `Order Details` VALUES (11009,36,19.0,18,0.25);
INSERT INTO `Order Details` VALUES (11009,60,34.0,9,0.0);
INSERT INTO `Order Details` VALUES (11010,7,30.0,20,0.0);
INSERT INTO `Order Details` VALUES (11010,24,4.5,10,0.0);
INSERT INTO `Order Details` VALUES (11011,58,13.25,40,0.05);
INSERT INTO `Order Details` VALUES (11011,71,21.5,20,0.0);
INSERT INTO `Order Details` VALUES (11012,19,9.2,50,0.05);
INSERT INTO `Order Details` VALUES (11012,60,34.0,36,0.05);
INSERT INTO `Order Details` VALUES (11012,71,21.5,60,0.05);
INSERT INTO `Order Details` VALUES (11013,23,9.0,10,0.0);
INSERT INTO `Order Details` VALUES (11013,42,14.0,4,0.0);
INSERT INTO `Order Details` VALUES (11013,45,9.5,20,0.0);
INSERT INTO `Order Details` VALUES (11013,68,12.5,2,0.0);
INSERT INTO `Order Details` VALUES (11014,41,9.65,28,0.1);
INSERT INTO `Order Details` VALUES (11015,30,25.89,15,0.0);
INSERT INTO `Order Details` VALUES (11015,77,13.0,18,0.0);
INSERT INTO `Order Details` VALUES (11016,31,12.5,15,0.0);
INSERT INTO `Order Details` VALUES (11016,36,19.0,16,0.0);
INSERT INTO `Order Details` VALUES (11017,3,10.0,25,0.0);
INSERT INTO `Order Details` VALUES (11017,59,55.0,110,0.0);
INSERT INTO `Order Details` VALUES (11017,70,15.0,30,0.0);
INSERT INTO `Order Details` VALUES (11018,12,38.0,20,0.0);
INSERT INTO `Order Details` VALUES (11018,18,62.5,10,0.0);
INSERT INTO `Order Details` VALUES (11018,56,38.0,5,0.0);
INSERT INTO `Order Details` VALUES (11019,46,12.0,3,0.0);
INSERT INTO `Order Details` VALUES (11019,49,20.0,2,0.0);
INSERT INTO `Order Details` VALUES (11020,10,31.0,24,0.15);
INSERT INTO `Order Details` VALUES (11021,2,19.0,11,0.25);
INSERT INTO `Order Details` VALUES (11021,20,81.0,15,0.0);
INSERT INTO `Order Details` VALUES (11021,26,31.23,63,0.0);
INSERT INTO `Order Details` VALUES (11021,51,53.0,44,0.25);
INSERT INTO `Order Details` VALUES (11021,72,34.8,35,0.0);
INSERT INTO `Order Details` VALUES (11022,19,9.2,35,0.0);
INSERT INTO `Order Details` VALUES (11022,69,36.0,30,0.0);
INSERT INTO `Order Details` VALUES (11023,7,30.0,4,0.0);
INSERT INTO `Order Details` VALUES (11023,43,46.0,30,0.0);
INSERT INTO `Order Details` VALUES (11024,26,31.23,12,0.0);
INSERT INTO `Order Details` VALUES (11024,33,2.5,30,0.0);
INSERT INTO `Order Details` VALUES (11024,65,21.05,21,0.0);
INSERT INTO `Order Details` VALUES (11024,71,21.5,50,0.0);
INSERT INTO `Order Details` VALUES (11025,1,18.0,10,0.1);
INSERT INTO `Order Details` VALUES (11025,13,6.0,20,0.1);
INSERT INTO `Order Details` VALUES (11026,18,62.5,8,0.0);
INSERT INTO `Order Details` VALUES (11026,51,53.0,10,0.0);
INSERT INTO `Order Details` VALUES (11027,24,4.5,30,0.25);
INSERT INTO `Order Details` VALUES (11027,62,49.3,21,0.25);
INSERT INTO `Order Details` VALUES (11028,55,24.0,35,0.0);
INSERT INTO `Order Details` VALUES (11028,59,55.0,24,0.0);
INSERT INTO `Order Details` VALUES (11029,56,38.0,20,0.0);
INSERT INTO `Order Details` VALUES (11029,63,43.9,12,0.0);
INSERT INTO `Order Details` VALUES (11030,2,19.0,100,0.25);
INSERT INTO `Order Details` VALUES (11030,5,21.35,70,0.0);
INSERT INTO `Order Details` VALUES (11030,29,123.79,60,0.25);
INSERT INTO `Order Details` VALUES (11030,59,55.0,100,0.25);
INSERT INTO `Order Details` VALUES (11031,1,18.0,45,0.0);
INSERT INTO `Order Details` VALUES (11031,13,6.0,80,0.0);
INSERT INTO `Order Details` VALUES (11031,24,4.5,21,0.0);
INSERT INTO `Order Details` VALUES (11031,64,33.25,20,0.0);
INSERT INTO `Order Details` VALUES (11031,71,21.5,16,0.0);
INSERT INTO `Order Details` VALUES (11032,36,19.0,35,0.0);
INSERT INTO `Order Details` VALUES (11032,38,263.5,25,0.0);
INSERT INTO `Order Details` VALUES (11032,59,55.0,30,0.0);
INSERT INTO `Order Details` VALUES (11033,53,32.8,70,0.1);
INSERT INTO `Order Details` VALUES (11033,69,36.0,36,0.1);
INSERT INTO `Order Details` VALUES (11034,21,10.0,15,0.1);
INSERT INTO `Order Details` VALUES (11034,44,19.45,12,0.0);
INSERT INTO `Order Details` VALUES (11034,61,28.5,6,0.0);
INSERT INTO `Order Details` VALUES (11035,1,18.0,10,0.0);
INSERT INTO `Order Details` VALUES (11035,35,18.0,60,0.0);
INSERT INTO `Order Details` VALUES (11035,42,14.0,30,0.0);
INSERT INTO `Order Details` VALUES (11035,54,7.45,10,0.0);
INSERT INTO `Order Details` VALUES (11036,13,6.0,7,0.0);
INSERT INTO `Order Details` VALUES (11036,59,55.0,30,0.0);
INSERT INTO `Order Details` VALUES (11037,70,15.0,4,0.0);
INSERT INTO `Order Details` VALUES (11038,40,18.4,5,0.2);
INSERT INTO `Order Details` VALUES (11038,52,7.0,2,0.0);
INSERT INTO `Order Details` VALUES (11038,71,21.5,30,0.0);
INSERT INTO `Order Details` VALUES (11039,28,45.6,20,0.0);
INSERT INTO `Order Details` VALUES (11039,35,18.0,24,0.0);
INSERT INTO `Order Details` VALUES (11039,49,20.0,60,0.0);
INSERT INTO `Order Details` VALUES (11039,57,19.5,28,0.0);
INSERT INTO `Order Details` VALUES (11040,21,10.0,20,0.0);
INSERT INTO `Order Details` VALUES (11041,2,19.0,30,0.2);
INSERT INTO `Order Details` VALUES (11041,63,43.9,30,0.0);
INSERT INTO `Order Details` VALUES (11042,44,19.45,15,0.0);
INSERT INTO `Order Details` VALUES (11042,61,28.5,4,0.0);
INSERT INTO `Order Details` VALUES (11043,11,21.0,10,0.0);
INSERT INTO `Order Details` VALUES (11044,62,49.3,12,0.0);
INSERT INTO `Order Details` VALUES (11045,33,2.5,15,0.0);
INSERT INTO `Order Details` VALUES (11045,51,53.0,24,0.0);
INSERT INTO `Order Details` VALUES (11046,12,38.0,20,0.05);
INSERT INTO `Order Details` VALUES (11046,32,32.0,15,0.05);
INSERT INTO `Order Details` VALUES (11046,35,18.0,18,0.05);
INSERT INTO `Order Details` VALUES (11047,1,18.0,25,0.25);
INSERT INTO `Order Details` VALUES (11047,5,21.35,30,0.25);
INSERT INTO `Order Details` VALUES (11048,68,12.5,42,0.0);
INSERT INTO `Order Details` VALUES (11049,2,19.0,10,0.2);
INSERT INTO `Order Details` VALUES (11049,12,38.0,4,0.2);
INSERT INTO `Order Details` VALUES (11050,76,18.0,50,0.1);
INSERT INTO `Order Details` VALUES (11051,24,4.5,10,0.2);
INSERT INTO `Order Details` VALUES (11052,43,46.0,30,0.2);
INSERT INTO `Order Details` VALUES (11052,61,28.5,10,0.2);
INSERT INTO `Order Details` VALUES (11053,18,62.5,35,0.2);
INSERT INTO `Order Details` VALUES (11053,32,32.0,20,0.0);
INSERT INTO `Order Details` VALUES (11053,64,33.25,25,0.2);
INSERT INTO `Order Details` VALUES (11054,33,2.5,10,0.0);
INSERT INTO `Order Details` VALUES (11054,67,14.0,20,0.0);
INSERT INTO `Order Details` VALUES (11055,24,4.5,15,0.0);
INSERT INTO `Order Details` VALUES (11055,25,14.0,15,0.0);
INSERT INTO `Order Details` VALUES (11055,51,53.0,20,0.0);
INSERT INTO `Order Details` VALUES (11055,57,19.5,20,0.0);
INSERT INTO `Order Details` VALUES (11056,7,30.0,40,0.0);
INSERT INTO `Order Details` VALUES (11056,55,24.0,35,0.0);
INSERT INTO `Order Details` VALUES (11056,60,34.0,50,0.0);
INSERT INTO `Order Details` VALUES (11057,70,15.0,3,0.0);
INSERT INTO `Order Details` VALUES (11058,21,10.0,3,0.0);
INSERT INTO `Order Details` VALUES (11058,60,34.0,21,0.0);
INSERT INTO `Order Details` VALUES (11058,61,28.5,4,0.0);
INSERT INTO `Order Details` VALUES (11059,13,6.0,30,0.0);
INSERT INTO `Order Details` VALUES (11059,17,39.0,12,0.0);
INSERT INTO `Order Details` VALUES (11059,60,34.0,35,0.0);
INSERT INTO `Order Details` VALUES (11060,60,34.0,4,0.0);
INSERT INTO `Order Details` VALUES (11060,77,13.0,10,0.0);
INSERT INTO `Order Details` VALUES (11061,60,34.0,15,0.0);
INSERT INTO `Order Details` VALUES (11062,53,32.8,10,0.2);
INSERT INTO `Order Details` VALUES (11062,70,15.0,12,0.2);
INSERT INTO `Order Details` VALUES (11063,34,14.0,30,0.0);
INSERT INTO `Order Details` VALUES (11063,40,18.4,40,0.1);
INSERT INTO `Order Details` VALUES (11063,41,9.65,30,0.1);
INSERT INTO `Order Details` VALUES (11064,17,39.0,77,0.1);
INSERT INTO `Order Details` VALUES (11064,41,9.65,12,0.0);
INSERT INTO `Order Details` VALUES (11064,53,32.8,25,0.1);
INSERT INTO `Order Details` VALUES (11064,55,24.0,4,0.1);
INSERT INTO `Order Details` VALUES (11064,68,12.5,55,0.0);
INSERT INTO `Order Details` VALUES (11065,30,25.89,4,0.25);
INSERT INTO `Order Details` VALUES (11065,54,7.45,20,0.25);
INSERT INTO `Order Details` VALUES (11066,16,17.45,3,0.0);
INSERT INTO `Order Details` VALUES (11066,19,9.2,42,0.0);
INSERT INTO `Order Details` VALUES (11066,34,14.0,35,0.0);
INSERT INTO `Order Details` VALUES (11067,41,9.65,9,0.0);
INSERT INTO `Order Details` VALUES (11068,28,45.6,8,0.15);
INSERT INTO `Order Details` VALUES (11068,43,46.0,36,0.15);
INSERT INTO `Order Details` VALUES (11068,77,13.0,28,0.15);
INSERT INTO `Order Details` VALUES (11069,39,18.0,20,0.0);
INSERT INTO `Order Details` VALUES (11070,1,18.0,40,0.15);
INSERT INTO `Order Details` VALUES (11070,2,19.0,20,0.15);
INSERT INTO `Order Details` VALUES (11070,16,17.45,30,0.15);
INSERT INTO `Order Details` VALUES (11070,31,12.5,20,0.0);
INSERT INTO `Order Details` VALUES (11071,7,30.0,15,0.05);
INSERT INTO `Order Details` VALUES (11071,13,6.0,10,0.05);
INSERT INTO `Order Details` VALUES (11072,2,19.0,8,0.0);
INSERT INTO `Order Details` VALUES (11072,41,9.65,40,0.0);
INSERT INTO `Order Details` VALUES (11072,50,16.25,22,0.0);
INSERT INTO `Order Details` VALUES (11072,64,33.25,130,0.0);
INSERT INTO `Order Details` VALUES (11073,11,21.0,10,0.0);
INSERT INTO `Order Details` VALUES (11073,24,4.5,20,0.0);
INSERT INTO `Order Details` VALUES (11074,16,17.45,14,0.05);
INSERT INTO `Order Details` VALUES (11075,2,19.0,10,0.15);
INSERT INTO `Order Details` VALUES (11075,46,12.0,30,0.15);
INSERT INTO `Order Details` VALUES (11075,76,18.0,2,0.15);
INSERT INTO `Order Details` VALUES (11076,6,25.0,20,0.25);
INSERT INTO `Order Details` VALUES (11076,14,23.25,20,0.25);
INSERT INTO `Order Details` VALUES (11076,19,9.2,10,0.25);
INSERT INTO `Order Details` VALUES (11077,2,19.0,24,0.2);
INSERT INTO `Order Details` VALUES (11077,3,10.0,4,0.0);
INSERT INTO `Order Details` VALUES (11077,4,22.0,1,0.0);
INSERT INTO `Order Details` VALUES (11077,6,25.0,1,0.02);
INSERT INTO `Order Details` VALUES (11077,7,30.0,1,0.05);
INSERT INTO `Order Details` VALUES (11077,8,40.0,2,0.1);
INSERT INTO `Order Details` VALUES (11077,10,31.0,1,0.0);
INSERT INTO `Order Details` VALUES (11077,12,38.0,2,0.05);
INSERT INTO `Order Details` VALUES (11077,13,6.0,4,0.0);
INSERT INTO `Order Details` VALUES (11077,14,23.25,1,0.03);
INSERT INTO `Order Details` VALUES (11077,16,17.45,2,0.03);
INSERT INTO `Order Details` VALUES (11077,20,81.0,1,0.04);
INSERT INTO `Order Details` VALUES (11077,23,9.0,2,0.0);
INSERT INTO `Order Details` VALUES (11077,32,32.0,1,0.0);
INSERT INTO `Order Details` VALUES (11077,39,18.0,2,0.05);
INSERT INTO `Order Details` VALUES (11077,41,9.65,3,0.0);
INSERT INTO `Order Details` VALUES (11077,46,12.0,3,0.02);
INSERT INTO `Order Details` VALUES (11077,52,7.0,2,0.0);
INSERT INTO `Order Details` VALUES (11077,55,24.0,2,0.0);
INSERT INTO `Order Details` VALUES (11077,60,34.0,2,0.06);
INSERT INTO `Order Details` VALUES (11077,64,33.25,2,0.03);
INSERT INTO `Order Details` VALUES (11077,66,17.0,1,0.0);
INSERT INTO `Order Details` VALUES (11077,73,15.0,2,0.01);
INSERT INTO `Order Details` VALUES (11077,75,7.75,4,0.0);
INSERT INTO `Order Details` VALUES (11077,77,13.0,2,0.0);
INSERT INTO `Orders` VALUES (10248,'VINET',5,"7/4/1996 12:00:00 AM","8/1/1996 12:00:00 AM","7/16/1996 12:00:00 AM",3,32.38,'Vins et alcools Chevalier','59 rue de l''Abbaye','Reims',NULL,'51100','France');
INSERT INTO `Orders` VALUES (10249,'TOMSP',6,"7/5/1996 12:00:00 AM","8/16/1996 12:00:00 AM","7/10/1996 12:00:00 AM",1,11.61,'Toms Spezialit?ten','Luisenstr. 48','M?nster',NULL,'44087','Germany');
INSERT INTO `Orders` VALUES (10250,'HANAR',4,"7/8/1996 12:00:00 AM","8/5/1996 12:00:00 AM","7/12/1996 12:00:00 AM",2,65.83,'Hanari Carnes','Rua do Pa?o, 67','Rio de Janeiro','RJ','05454-876','Brazil');
INSERT INTO `Orders` VALUES (10251,'VICTE',3,"7/8/1996 12:00:00 AM","8/5/1996 12:00:00 AM","7/15/1996 12:00:00 AM",1,41.34,'Victuailles en stock','2, rue du Commerce','Lyon',NULL,'69004','France');
INSERT INTO `Orders` VALUES (10252,'SUPRD',4,"7/9/1996 12:00:00 AM","8/6/1996 12:00:00 AM","7/11/1996 12:00:00 AM",2,51.3,'Supr?mes d?lices','Boulevard Tirou, 255','Charleroi',NULL,'B-6000','Belgium');
INSERT INTO `Orders` VALUES (10253,'HANAR',3,"7/10/1996 12:00:00 AM","7/24/1996 12:00:00 AM","7/16/1996 12:00:00 AM",2,58.17,'Hanari Carnes','Rua do Pa?o, 67','Rio de Janeiro','RJ','05454-876','Brazil');
INSERT INTO `Orders` VALUES (10254,'CHOPS',5,"7/11/1996 12:00:00 AM","8/8/1996 12:00:00 AM","7/23/1996 12:00:00 AM",2,22.98,'Chop-suey Chinese','Hauptstr. 31','Bern',NULL,'3012','Switzerland');
INSERT INTO `Orders` VALUES (10255,'RICSU',9,"7/12/1996 12:00:00 AM","8/9/1996 12:00:00 AM","7/15/1996 12:00:00 AM",3,148.33,'Richter Supermarkt','Starenweg 5','Gen?ve',NULL,'1204','Switzerland');
INSERT INTO `Orders` VALUES (10256,'WELLI',3,"7/15/1996 12:00:00 AM","8/12/1996 12:00:00 AM","7/17/1996 12:00:00 AM",2,13.97,'Wellington Importadora','Rua do Mercado, 12','Resende','SP','08737-363','Brazil');
INSERT INTO `Orders` VALUES (10257,'HILAA',4,"7/16/1996 12:00:00 AM","8/13/1996 12:00:00 AM","7/22/1996 12:00:00 AM",3,81.91,'HILARION-Abastos','Carrera 22 con Ave. Carlos Soublette #8-35','San Crist?bal','T?chira','5022','Venezuela');
INSERT INTO `Orders` VALUES (10258,'ERNSH',1,"7/17/1996 12:00:00 AM","8/14/1996 12:00:00 AM","7/23/1996 12:00:00 AM",1,140.51,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria');
INSERT INTO `Orders` VALUES (10259,'CENTC',4,"7/18/1996 12:00:00 AM","8/15/1996 12:00:00 AM","7/25/1996 12:00:00 AM",3,3.25,'Centro comercial Moctezuma','Sierras de Granada 9993','M?xico D.F.',NULL,'05022','Mexico');
INSERT INTO `Orders` VALUES (10260,'OTTIK',4,"7/19/1996 12:00:00 AM","8/16/1996 12:00:00 AM","7/29/1996 12:00:00 AM",1,55.09,'Ottilies K?seladen','Mehrheimerstr. 369','K?ln',NULL,'50739','Germany');
INSERT INTO `Orders` VALUES (10261,'QUEDE',4,"7/19/1996 12:00:00 AM","8/16/1996 12:00:00 AM","7/30/1996 12:00:00 AM",2,3.05,'Que Del?cia','Rua da Panificadora, 12','Rio de Janeiro','RJ','02389-673','Brazil');
INSERT INTO `Orders` VALUES (10262,'RATTC',8,"7/22/1996 12:00:00 AM","8/19/1996 12:00:00 AM","7/25/1996 12:00:00 AM",3,48.29,'Rattlesnake Canyon Grocery','2817 Milton Dr.','Albuquerque','NM','87110','USA');
INSERT INTO `Orders` VALUES (10263,'ERNSH',9,"7/23/1996 12:00:00 AM","8/20/1996 12:00:00 AM","7/31/1996 12:00:00 AM",3,146.06,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria');
INSERT INTO `Orders` VALUES (10264,'FOLKO',6,"7/24/1996 12:00:00 AM","8/21/1996 12:00:00 AM","8/23/1996 12:00:00 AM",3,3.67,'Folk och f? HB','?kergatan 24','Br?cke',NULL,'S-844 67','Sweden');
INSERT INTO `Orders` VALUES (10265,'BLONP',2,"7/25/1996 12:00:00 AM","8/22/1996 12:00:00 AM","8/12/1996 12:00:00 AM",1,55.28,'Blondel p?re et fils','24, place Kl?ber','Strasbourg',NULL,'67000','France');
INSERT INTO `Orders` VALUES (10266,'WARTH',3,"7/26/1996 12:00:00 AM","9/6/1996 12:00:00 AM","7/31/1996 12:00:00 AM",3,25.73,'Wartian Herkku','Torikatu 38','Oulu',NULL,'90110','Finland');
INSERT INTO `Orders` VALUES (10267,'FRANK',4,"7/29/1996 12:00:00 AM","8/26/1996 12:00:00 AM","8/6/1996 12:00:00 AM",1,208.58,'Frankenversand','Berliner Platz 43','M?nchen',NULL,'80805','Germany');
INSERT INTO `Orders` VALUES (10268,'GROSR',8,"7/30/1996 12:00:00 AM","8/27/1996 12:00:00 AM","8/2/1996 12:00:00 AM",3,66.29,'GROSELLA-Restaurante','5? Ave. Los Palos Grandes','Caracas','DF','1081','Venezuela');
INSERT INTO `Orders` VALUES (10269,'WHITC',5,"7/31/1996 12:00:00 AM","8/14/1996 12:00:00 AM","8/9/1996 12:00:00 AM",1,4.56,'White Clover Markets','1029 - 12th Ave. S.','Seattle','WA','98124','USA');
INSERT INTO `Orders` VALUES (10270,'WARTH',1,"8/1/1996 12:00:00 AM","8/29/1996 12:00:00 AM","8/2/1996 12:00:00 AM",1,136.54,'Wartian Herkku','Torikatu 38','Oulu',NULL,'90110','Finland');
INSERT INTO `Orders` VALUES (10271,'SPLIR',6,"8/1/1996 12:00:00 AM","8/29/1996 12:00:00 AM","8/30/1996 12:00:00 AM",2,4.54,'Split Rail Beer & Ale','P.O. Box 555','Lander','WY','82520','USA');
INSERT INTO `Orders` VALUES (10272,'RATTC',6,"8/2/1996 12:00:00 AM","8/30/1996 12:00:00 AM","8/6/1996 12:00:00 AM",2,98.03,'Rattlesnake Canyon Grocery','2817 Milton Dr.','Albuquerque','NM','87110','USA');
INSERT INTO `Orders` VALUES (10273,'QUICK',3,"8/5/1996 12:00:00 AM","9/2/1996 12:00:00 AM","8/12/1996 12:00:00 AM",3,76.07,'QUICK-Stop','Taucherstra?e 10','Cunewalde',NULL,'01307','Germany');
INSERT INTO `Orders` VALUES (10274,'VINET',6,"8/6/1996 12:00:00 AM","9/3/1996 12:00:00 AM","8/16/1996 12:00:00 AM",1,6.01,'Vins et alcools Chevalier','59 rue de l''Abbaye','Reims',NULL,'51100','France');
INSERT INTO `Orders` VALUES (10275,'MAGAA',1,"8/7/1996 12:00:00 AM","9/4/1996 12:00:00 AM","8/9/1996 12:00:00 AM",1,26.93,'Magazzini Alimentari Riuniti','Via Ludovico il Moro 22','Bergamo',NULL,'24100','Italy');
INSERT INTO `Orders` VALUES (10276,'TORTU',8,"8/8/1996 12:00:00 AM","8/22/1996 12:00:00 AM","8/14/1996 12:00:00 AM",3,13.84,'Tortuga Restaurante','Avda. Azteca 123','M?xico D.F.',NULL,'05033','Mexico');
INSERT INTO `Orders` VALUES (10277,'MORGK',2,"8/9/1996 12:00:00 AM","9/6/1996 12:00:00 AM","8/13/1996 12:00:00 AM",3,125.77,'Morgenstern Gesundkost','Heerstr. 22','Leipzig',NULL,'04179','Germany');
INSERT INTO `Orders` VALUES (10278,'BERGS',8,"8/12/1996 12:00:00 AM","9/9/1996 12:00:00 AM","8/16/1996 12:00:00 AM",2,92.69,'Berglunds snabbk?p','Berguvsv?gen  8','Lule?',NULL,'S-958 22','Sweden');
INSERT INTO `Orders` VALUES (10279,'LEHMS',8,"8/13/1996 12:00:00 AM","9/10/1996 12:00:00 AM","8/16/1996 12:00:00 AM",2,25.83,'Lehmanns Marktstand','Magazinweg 7','Frankfurt a.M.',NULL,'60528','Germany');
INSERT INTO `Orders` VALUES (10280,'BERGS',2,"8/14/1996 12:00:00 AM","9/11/1996 12:00:00 AM","9/12/1996 12:00:00 AM",1,8.98,'Berglunds snabbk?p','Berguvsv?gen  8','Lule?',NULL,'S-958 22','Sweden');
INSERT INTO `Orders` VALUES (10281,'ROMEY',4,"8/14/1996 12:00:00 AM","8/28/1996 12:00:00 AM","8/21/1996 12:00:00 AM",1,2.94,'Romero y tomillo','Gran V?a, 1','Madrid',NULL,'28001','Spain');
INSERT INTO `Orders` VALUES (10282,'ROMEY',4,"8/15/1996 12:00:00 AM","9/12/1996 12:00:00 AM","8/21/1996 12:00:00 AM",1,12.69,'Romero y tomillo','Gran V?a, 1','Madrid',NULL,'28001','Spain');
INSERT INTO `Orders` VALUES (10283,'LILAS',3,"8/16/1996 12:00:00 AM","9/13/1996 12:00:00 AM","8/23/1996 12:00:00 AM",3,84.81,'LILA-Supermercado','Carrera 52 con Ave. Bol?var #65-98 Llano Largo','Barquisimeto','Lara','3508','Venezuela');
INSERT INTO `Orders` VALUES (10284,'LEHMS',4,"8/19/1996 12:00:00 AM","9/16/1996 12:00:00 AM","8/27/1996 12:00:00 AM",1,76.56,'Lehmanns Marktstand','Magazinweg 7','Frankfurt a.M.',NULL,'60528','Germany');
INSERT INTO `Orders` VALUES (10285,'QUICK',1,"8/20/1996 12:00:00 AM","9/17/1996 12:00:00 AM","8/26/1996 12:00:00 AM",2,76.83,'QUICK-Stop','Taucherstra?e 10','Cunewalde',NULL,'01307','Germany');
INSERT INTO `Orders` VALUES (10286,'QUICK',8,"8/21/1996 12:00:00 AM","9/18/1996 12:00:00 AM","8/30/1996 12:00:00 AM",3,229.24,'QUICK-Stop','Taucherstra?e 10','Cunewalde',NULL,'01307','Germany');
INSERT INTO `Orders` VALUES (10287,'RICAR',8,"8/22/1996 12:00:00 AM","9/19/1996 12:00:00 AM","8/28/1996 12:00:00 AM",3,12.76,'Ricardo Adocicados','Av. Copacabana, 267','Rio de Janeiro','RJ','02389-890','Brazil');
INSERT INTO `Orders` VALUES (10288,'REGGC',4,"8/23/1996 12:00:00 AM","9/20/1996 12:00:00 AM","9/3/1996 12:00:00 AM",1,7.45,'Reggiani Caseifici','Strada Provinciale 124','Reggio Emilia',NULL,'42100','Italy');
INSERT INTO `Orders` VALUES (10289,'BSBEV',7,"8/26/1996 12:00:00 AM","9/23/1996 12:00:00 AM","8/28/1996 12:00:00 AM",3,22.77,'B''s Beverages','Fauntleroy Circus','London',NULL,'EC2 5NT','UK');
INSERT INTO `Orders` VALUES (10290,'COMMI',8,"8/27/1996 12:00:00 AM","9/24/1996 12:00:00 AM","9/3/1996 12:00:00 AM",1,79.7,'Com?rcio Mineiro','Av. dos Lus?adas, 23','Sao Paulo','SP','05432-043','Brazil');
INSERT INTO `Orders` VALUES (10291,'QUEDE',6,"8/27/1996 12:00:00 AM","9/24/1996 12:00:00 AM","9/4/1996 12:00:00 AM",2,6.4,'Que Del?cia','Rua da Panificadora, 12','Rio de Janeiro','RJ','02389-673','Brazil');
INSERT INTO `Orders` VALUES (10292,'TRADH',1,"8/28/1996 12:00:00 AM","9/25/1996 12:00:00 AM","9/2/1996 12:00:00 AM",2,1.35,'Tradi?ao Hipermercados','Av. In?s de Castro, 414','Sao Paulo','SP','05634-030','Brazil');
INSERT INTO `Orders` VALUES (10293,'TORTU',1,"8/29/1996 12:00:00 AM","9/26/1996 12:00:00 AM","9/11/1996 12:00:00 AM",3,21.18,'Tortuga Restaurante','Avda. Azteca 123','M?xico D.F.',NULL,'05033','Mexico');
INSERT INTO `Orders` VALUES (10294,'RATTC',4,"8/30/1996 12:00:00 AM","9/27/1996 12:00:00 AM","9/5/1996 12:00:00 AM",2,147.26,'Rattlesnake Canyon Grocery','2817 Milton Dr.','Albuquerque','NM','87110','USA');
INSERT INTO `Orders` VALUES (10295,'VINET',2,"9/2/1996 12:00:00 AM","9/30/1996 12:00:00 AM","9/10/1996 12:00:00 AM",2,1.15,'Vins et alcools Chevalier','59 rue de l''Abbaye','Reims',NULL,'51100','France');
INSERT INTO `Orders` VALUES (10296,'LILAS',6,"9/3/1996 12:00:00 AM","10/1/1996 12:00:00 AM","9/11/1996 12:00:00 AM",1,0.12,'LILA-Supermercado','Carrera 52 con Ave. Bol?var #65-98 Llano Largo','Barquisimeto','Lara','3508','Venezuela');
INSERT INTO `Orders` VALUES (10297,'BLONP',5,"9/4/1996 12:00:00 AM","10/16/1996 12:00:00 AM","9/10/1996 12:00:00 AM",2,5.74,'Blondel p?re et fils','24, place Kl?ber','Strasbourg',NULL,'67000','France');
INSERT INTO `Orders` VALUES (10298,'HUNGO',6,"9/5/1996 12:00:00 AM","10/3/1996 12:00:00 AM","9/11/1996 12:00:00 AM",2,168.22,'Hungry Owl All-Night Grocers','8 Johnstown Road','Cork','Co. Cork',NULL,'Ireland');
INSERT INTO `Orders` VALUES (10299,'RICAR',4,"9/6/1996 12:00:00 AM","10/4/1996 12:00:00 AM","9/13/1996 12:00:00 AM",2,29.76,'Ricardo Adocicados','Av. Copacabana, 267','Rio de Janeiro','RJ','02389-890','Brazil');
INSERT INTO `Orders` VALUES (10300,'MAGAA',2,"9/9/1996 12:00:00 AM","10/7/1996 12:00:00 AM","9/18/1996 12:00:00 AM",2,17.68,'Magazzini Alimentari Riuniti','Via Ludovico il Moro 22','Bergamo',NULL,'24100','Italy');
INSERT INTO `Orders` VALUES (10301,'WANDK',8,"9/9/1996 12:00:00 AM","10/7/1996 12:00:00 AM","9/17/1996 12:00:00 AM",2,45.08,'Die Wandernde Kuh','Adenauerallee 900','Stuttgart',NULL,'70563','Germany');
INSERT INTO `Orders` VALUES (10302,'SUPRD',4,"9/10/1996 12:00:00 AM","10/8/1996 12:00:00 AM","10/9/1996 12:00:00 AM",2,6.27,'Supr?mes d?lices','Boulevard Tirou, 255','Charleroi',NULL,'B-6000','Belgium');
INSERT INTO `Orders` VALUES (10303,'GODOS',7,"9/11/1996 12:00:00 AM","10/9/1996 12:00:00 AM","9/18/1996 12:00:00 AM",2,107.83,'Godos Cocina T?pica','C/ Romero, 33','Sevilla',NULL,'41101','Spain');
INSERT INTO `Orders` VALUES (10304,'TORTU',1,"9/12/1996 12:00:00 AM","10/10/1996 12:00:00 AM","9/17/1996 12:00:00 AM",2,63.79,'Tortuga Restaurante','Avda. Azteca 123','M?xico D.F.',NULL,'05033','Mexico');
INSERT INTO `Orders` VALUES (10305,'OLDWO',8,"9/13/1996 12:00:00 AM","10/11/1996 12:00:00 AM","10/9/1996 12:00:00 AM",3,257.62,'Old World Delicatessen','2743 Bering St.','Anchorage','AK','99508','USA');
INSERT INTO `Orders` VALUES (10306,'ROMEY',1,"9/16/1996 12:00:00 AM","10/14/1996 12:00:00 AM","9/23/1996 12:00:00 AM",3,7.56,'Romero y tomillo','Gran V?a, 1','Madrid',NULL,'28001','Spain');
INSERT INTO `Orders` VALUES (10307,'LONEP',2,"9/17/1996 12:00:00 AM","10/15/1996 12:00:00 AM","9/25/1996 12:00:00 AM",2,0.56,'Lonesome Pine Restaurant','89 Chiaroscuro Rd.','Portland','OR','97219','USA');
INSERT INTO `Orders` VALUES (10308,'ANATR',7,"9/18/1996 12:00:00 AM","10/16/1996 12:00:00 AM","9/24/1996 12:00:00 AM",3,1.61,'Ana Trujillo Emparedados y helados','Avda. de la Constituci?n 2222','M?xico D.F.',NULL,'05021','Mexico');
INSERT INTO `Orders` VALUES (10309,'HUNGO',3,"9/19/1996 12:00:00 AM","10/17/1996 12:00:00 AM","10/23/1996 12:00:00 AM",1,47.3,'Hungry Owl All-Night Grocers','8 Johnstown Road','Cork','Co. Cork',NULL,'Ireland');
INSERT INTO `Orders` VALUES (10310,'THEBI',8,"9/20/1996 12:00:00 AM","10/18/1996 12:00:00 AM","9/27/1996 12:00:00 AM",2,17.52,'The Big Cheese','89 Jefferson Way Suite 2','Portland','OR','97201','USA');
INSERT INTO `Orders` VALUES (10311,'DUMON',1,"9/20/1996 12:00:00 AM","10/4/1996 12:00:00 AM","9/26/1996 12:00:00 AM",3,24.69,'Du monde entier','67, rue des Cinquante Otages','Nantes',NULL,'44000','France');
INSERT INTO `Orders` VALUES (10312,'WANDK',2,"9/23/1996 12:00:00 AM","10/21/1996 12:00:00 AM","10/3/1996 12:00:00 AM",2,40.26,'Die Wandernde Kuh','Adenauerallee 900','Stuttgart',NULL,'70563','Germany');
INSERT INTO `Orders` VALUES (10313,'QUICK',2,"9/24/1996 12:00:00 AM","10/22/1996 12:00:00 AM","10/4/1996 12:00:00 AM",2,1.96,'QUICK-Stop','Taucherstra?e 10','Cunewalde',NULL,'01307','Germany');
INSERT INTO `Orders` VALUES (10314,'RATTC',1,"9/25/1996 12:00:00 AM","10/23/1996 12:00:00 AM","10/4/1996 12:00:00 AM",2,74.16,'Rattlesnake Canyon Grocery','2817 Milton Dr.','Albuquerque','NM','87110','USA');
INSERT INTO `Orders` VALUES (10315,'ISLAT',4,"9/26/1996 12:00:00 AM","10/24/1996 12:00:00 AM","10/3/1996 12:00:00 AM",2,41.76,'Island Trading','Garden House Crowther Way','Cowes','Isle of Wight','PO31 7PJ','UK');
INSERT INTO `Orders` VALUES (10316,'RATTC',1,"9/27/1996 12:00:00 AM","10/25/1996 12:00:00 AM","10/8/1996 12:00:00 AM",3,150.15,'Rattlesnake Canyon Grocery','2817 Milton Dr.','Albuquerque','NM','87110','USA');
INSERT INTO `Orders` VALUES (10317,'LONEP',6,"9/30/1996 12:00:00 AM","10/28/1996 12:00:00 AM","10/10/1996 12:00:00 AM",1,12.69,'Lonesome Pine Restaurant','89 Chiaroscuro Rd.','Portland','OR','97219','USA');
INSERT INTO `Orders` VALUES (10318,'ISLAT',8,"10/1/1996 12:00:00 AM","10/29/1996 12:00:00 AM","10/4/1996 12:00:00 AM",2,4.73,'Island Trading','Garden House Crowther Way','Cowes','Isle of Wight','PO31 7PJ','UK');
INSERT INTO `Orders` VALUES (10319,'TORTU',7,"10/2/1996 12:00:00 AM","10/30/1996 12:00:00 AM","10/11/1996 12:00:00 AM",3,64.5,'Tortuga Restaurante','Avda. Azteca 123','M?xico D.F.',NULL,'05033','Mexico');
INSERT INTO `Orders` VALUES (10320,'WARTH',5,"10/3/1996 12:00:00 AM","10/17/1996 12:00:00 AM","10/18/1996 12:00:00 AM",3,34.57,'Wartian Herkku','Torikatu 38','Oulu',NULL,'90110','Finland');
INSERT INTO `Orders` VALUES (10321,'ISLAT',3,"10/3/1996 12:00:00 AM","10/31/1996 12:00:00 AM","10/11/1996 12:00:00 AM",2,3.43,'Island Trading','Garden House Crowther Way','Cowes','Isle of Wight','PO31 7PJ','UK');
INSERT INTO `Orders` VALUES (10322,'PERIC',7,"10/4/1996 12:00:00 AM","11/1/1996 12:00:00 AM","10/23/1996 12:00:00 AM",3,0.4,'Pericles Comidas cl?sicas','Calle Dr. Jorge Cash 321','M?xico D.F.',NULL,'05033','Mexico');
INSERT INTO `Orders` VALUES (10323,'KOENE',4,"10/7/1996 12:00:00 AM","11/4/1996 12:00:00 AM","10/14/1996 12:00:00 AM",1,4.88,'K?niglich Essen','Maubelstr. 90','Brandenburg',NULL,'14776','Germany');
INSERT INTO `Orders` VALUES (10324,'SAVEA',9,"10/8/1996 12:00:00 AM","11/5/1996 12:00:00 AM","10/10/1996 12:00:00 AM",1,214.27,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA');
INSERT INTO `Orders` VALUES (10325,'KOENE',1,"10/9/1996 12:00:00 AM","10/23/1996 12:00:00 AM","10/14/1996 12:00:00 AM",3,64.86,'K?niglich Essen','Maubelstr. 90','Brandenburg',NULL,'14776','Germany');
INSERT INTO `Orders` VALUES (10326,'BOLID',4,"10/10/1996 12:00:00 AM","11/7/1996 12:00:00 AM","10/14/1996 12:00:00 AM",2,77.92,'B?lido Comidas preparadas','C/ Araquil, 67','Madrid',NULL,'28023','Spain');
INSERT INTO `Orders` VALUES (10327,'FOLKO',2,"10/11/1996 12:00:00 AM","11/8/1996 12:00:00 AM","10/14/1996 12:00:00 AM",1,63.36,'Folk och f? HB','?kergatan 24','Br?cke',NULL,'S-844 67','Sweden');
INSERT INTO `Orders` VALUES (10328,'FURIB',4,"10/14/1996 12:00:00 AM","11/11/1996 12:00:00 AM","10/17/1996 12:00:00 AM",3,87.03,'Furia Bacalhau e Frutos do Mar','Jardim das rosas n. 32','Lisboa',NULL,'1675','Portugal');
INSERT INTO `Orders` VALUES (10329,'SPLIR',4,"10/15/1996 12:00:00 AM","11/26/1996 12:00:00 AM","10/23/1996 12:00:00 AM",2,191.67,'Split Rail Beer & Ale','P.O. Box 555','Lander','WY','82520','USA');
INSERT INTO `Orders` VALUES (10330,'LILAS',3,"10/16/1996 12:00:00 AM","11/13/1996 12:00:00 AM","10/28/1996 12:00:00 AM",1,12.75,'LILA-Supermercado','Carrera 52 con Ave. Bol?var #65-98 Llano Largo','Barquisimeto','Lara','3508','Venezuela');
INSERT INTO `Orders` VALUES (10331,'BONAP',9,"10/16/1996 12:00:00 AM","11/27/1996 12:00:00 AM","10/21/1996 12:00:00 AM",1,10.19,'Bon app''','12, rue des Bouchers','Marseille',NULL,'13008','France');
INSERT INTO `Orders` VALUES (10332,'MEREP',3,"10/17/1996 12:00:00 AM","11/28/1996 12:00:00 AM","10/21/1996 12:00:00 AM",2,52.84,'M?re Paillarde','43 rue St. Laurent','Montr?al','Qu?bec','H1J 1C3','Canada');
INSERT INTO `Orders` VALUES (10333,'WARTH',5,"10/18/1996 12:00:00 AM","11/15/1996 12:00:00 AM","10/25/1996 12:00:00 AM",3,0.59,'Wartian Herkku','Torikatu 38','Oulu',NULL,'90110','Finland');
INSERT INTO `Orders` VALUES (10334,'VICTE',8,"10/21/1996 12:00:00 AM","11/18/1996 12:00:00 AM","10/28/1996 12:00:00 AM",2,8.56,'Victuailles en stock','2, rue du Commerce','Lyon',NULL,'69004','France');
INSERT INTO `Orders` VALUES (10335,'HUNGO',7,"10/22/1996 12:00:00 AM","11/19/1996 12:00:00 AM","10/24/1996 12:00:00 AM",2,42.11,'Hungry Owl All-Night Grocers','8 Johnstown Road','Cork','Co. Cork',NULL,'Ireland');
INSERT INTO `Orders` VALUES (10336,'PRINI',7,"10/23/1996 12:00:00 AM","11/20/1996 12:00:00 AM","10/25/1996 12:00:00 AM",2,15.51,'Princesa Isabel Vinhos','Estrada da sa?de n. 58','Lisboa',NULL,'1756','Portugal');
INSERT INTO `Orders` VALUES (10337,'FRANK',4,"10/24/1996 12:00:00 AM","11/21/1996 12:00:00 AM","10/29/1996 12:00:00 AM",3,108.26,'Frankenversand','Berliner Platz 43','M?nchen',NULL,'80805','Germany');
INSERT INTO `Orders` VALUES (10338,'OLDWO',4,"10/25/1996 12:00:00 AM","11/22/1996 12:00:00 AM","10/29/1996 12:00:00 AM",3,84.21,'Old World Delicatessen','2743 Bering St.','Anchorage','AK','99508','USA');
INSERT INTO `Orders` VALUES (10339,'MEREP',2,"10/28/1996 12:00:00 AM","11/25/1996 12:00:00 AM","11/4/1996 12:00:00 AM",2,15.66,'M?re Paillarde','43 rue St. Laurent','Montr?al','Qu?bec','H1J 1C3','Canada');
INSERT INTO `Orders` VALUES (10340,'BONAP',1,"10/29/1996 12:00:00 AM","11/26/1996 12:00:00 AM","11/8/1996 12:00:00 AM",3,166.31,'Bon app''','12, rue des Bouchers','Marseille',NULL,'13008','France');
INSERT INTO `Orders` VALUES (10341,'SIMOB',7,"10/29/1996 12:00:00 AM","11/26/1996 12:00:00 AM","11/5/1996 12:00:00 AM",3,26.78,'Simons bistro','Vinb?ltet 34','Kobenhavn',NULL,'1734','Denmark');
INSERT INTO `Orders` VALUES (10342,'FRANK',4,"10/30/1996 12:00:00 AM","11/13/1996 12:00:00 AM","11/4/1996 12:00:00 AM",2,54.83,'Frankenversand','Berliner Platz 43','M?nchen',NULL,'80805','Germany');
INSERT INTO `Orders` VALUES (10343,'LEHMS',4,"10/31/1996 12:00:00 AM","11/28/1996 12:00:00 AM","11/6/1996 12:00:00 AM",1,110.37,'Lehmanns Marktstand','Magazinweg 7','Frankfurt a.M.',NULL,'60528','Germany');
INSERT INTO `Orders` VALUES (10344,'WHITC',4,"11/1/1996 12:00:00 AM","11/29/1996 12:00:00 AM","11/5/1996 12:00:00 AM",2,23.29,'White Clover Markets','1029 - 12th Ave. S.','Seattle','WA','98124','USA');
INSERT INTO `Orders` VALUES (10345,'QUICK',2,"11/4/1996 12:00:00 AM","12/2/1996 12:00:00 AM","11/11/1996 12:00:00 AM",2,249.06,'QUICK-Stop','Taucherstra?e 10','Cunewalde',NULL,'01307','Germany');
INSERT INTO `Orders` VALUES (10346,'RATTC',3,"11/5/1996 12:00:00 AM","12/17/1996 12:00:00 AM","11/8/1996 12:00:00 AM",3,142.08,'Rattlesnake Canyon Grocery','2817 Milton Dr.','Albuquerque','NM','87110','USA');
INSERT INTO `Orders` VALUES (10347,'FAMIA',4,"11/6/1996 12:00:00 AM","12/4/1996 12:00:00 AM","11/8/1996 12:00:00 AM",3,3.1,'Familia Arquibaldo','Rua Or?s, 92','Sao Paulo','SP','05442-030','Brazil');
INSERT INTO `Orders` VALUES (10348,'WANDK',4,"11/7/1996 12:00:00 AM","12/5/1996 12:00:00 AM","11/15/1996 12:00:00 AM",2,0.78,'Die Wandernde Kuh','Adenauerallee 900','Stuttgart',NULL,'70563','Germany');
INSERT INTO `Orders` VALUES (10349,'SPLIR',7,"11/8/1996 12:00:00 AM","12/6/1996 12:00:00 AM","11/15/1996 12:00:00 AM",1,8.63,'Split Rail Beer & Ale','P.O. Box 555','Lander','WY','82520','USA');
INSERT INTO `Orders` VALUES (10350,'LAMAI',6,"11/11/1996 12:00:00 AM","12/9/1996 12:00:00 AM","12/3/1996 12:00:00 AM",2,64.19,'La maison d''Asie','1 rue Alsace-Lorraine','Toulouse',NULL,'31000','France');
INSERT INTO `Orders` VALUES (10351,'ERNSH',1,"11/11/1996 12:00:00 AM","12/9/1996 12:00:00 AM","11/20/1996 12:00:00 AM",1,162.33,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria');
INSERT INTO `Orders` VALUES (10352,'FURIB',3,"11/12/1996 12:00:00 AM","11/26/1996 12:00:00 AM","11/18/1996 12:00:00 AM",3,1.3,'Furia Bacalhau e Frutos do Mar','Jardim das rosas n. 32','Lisboa',NULL,'1675','Portugal');
INSERT INTO `Orders` VALUES (10353,'PICCO',7,"11/13/1996 12:00:00 AM","12/11/1996 12:00:00 AM","11/25/1996 12:00:00 AM",3,360.63,'Piccolo und mehr','Geislweg 14','Salzburg',NULL,'5020','Austria');
INSERT INTO `Orders` VALUES (10354,'PERIC',8,"11/14/1996 12:00:00 AM","12/12/1996 12:00:00 AM","11/20/1996 12:00:00 AM",3,53.8,'Pericles Comidas cl?sicas','Calle Dr. Jorge Cash 321','M?xico D.F.',NULL,'05033','Mexico');
INSERT INTO `Orders` VALUES (10355,'AROUT',6,"11/15/1996 12:00:00 AM","12/13/1996 12:00:00 AM","11/20/1996 12:00:00 AM",1,41.95,'Around the Horn','Brook Farm Stratford St. Mary','Colchester','Essex','CO7 6JX','UK');
INSERT INTO `Orders` VALUES (10356,'WANDK',6,"11/18/1996 12:00:00 AM","12/16/1996 12:00:00 AM","11/27/1996 12:00:00 AM",2,36.71,'Die Wandernde Kuh','Adenauerallee 900','Stuttgart',NULL,'70563','Germany');
INSERT INTO `Orders` VALUES (10357,'LILAS',1,"11/19/1996 12:00:00 AM","12/17/1996 12:00:00 AM","12/2/1996 12:00:00 AM",3,34.88,'LILA-Supermercado','Carrera 52 con Ave. Bol?var #65-98 Llano Largo','Barquisimeto','Lara','3508','Venezuela');
INSERT INTO `Orders` VALUES (10358,'LAMAI',5,"11/20/1996 12:00:00 AM","12/18/1996 12:00:00 AM","11/27/1996 12:00:00 AM",1,19.64,'La maison d''Asie','1 rue Alsace-Lorraine','Toulouse',NULL,'31000','France');
INSERT INTO `Orders` VALUES (10359,'SEVES',5,"11/21/1996 12:00:00 AM","12/19/1996 12:00:00 AM","11/26/1996 12:00:00 AM",3,288.43,'Seven Seas Imports','90 Wadhurst Rd.','London',NULL,'OX15 4NB','UK');
INSERT INTO `Orders` VALUES (10360,'BLONP',4,"11/22/1996 12:00:00 AM","12/20/1996 12:00:00 AM","12/2/1996 12:00:00 AM",3,131.7,'Blondel p?re et fils','24, place Kl?ber','Strasbourg',NULL,'67000','France');
INSERT INTO `Orders` VALUES (10361,'QUICK',1,"11/22/1996 12:00:00 AM","12/20/1996 12:00:00 AM","12/3/1996 12:00:00 AM",2,183.17,'QUICK-Stop','Taucherstra?e 10','Cunewalde',NULL,'01307','Germany');
INSERT INTO `Orders` VALUES (10362,'BONAP',3,"11/25/1996 12:00:00 AM","12/23/1996 12:00:00 AM","11/28/1996 12:00:00 AM",1,96.04,'Bon app''','12, rue des Bouchers','Marseille',NULL,'13008','France');
INSERT INTO `Orders` VALUES (10363,'DRACD',4,"11/26/1996 12:00:00 AM","12/24/1996 12:00:00 AM","12/4/1996 12:00:00 AM",3,30.54,'Drachenblut Delikatessen','Walserweg 21','Aachen',NULL,'52066','Germany');
INSERT INTO `Orders` VALUES (10364,'EASTC',1,"11/26/1996 12:00:00 AM","1/7/1997 12:00:00 AM","12/4/1996 12:00:00 AM",1,71.97,'Eastern Connection','35 King George','London',NULL,'WX3 6FW','UK');
INSERT INTO `Orders` VALUES (10365,'ANTON',3,"11/27/1996 12:00:00 AM","12/25/1996 12:00:00 AM","12/2/1996 12:00:00 AM",2,22.0,'Antonio Moreno Taquer?a','Mataderos  2312','M?xico D.F.',NULL,'05023','Mexico');
INSERT INTO `Orders` VALUES (10366,'GALED',8,"11/28/1996 12:00:00 AM","1/9/1997 12:00:00 AM","12/30/1996 12:00:00 AM",2,10.14,'Galer?a del gastron?mo','Rambla de Catalu?a, 23','Barcelona',NULL,'8022','Spain');
INSERT INTO `Orders` VALUES (10367,'VAFFE',7,"11/28/1996 12:00:00 AM","12/26/1996 12:00:00 AM","12/2/1996 12:00:00 AM",3,13.55,'Vaffeljernet','Smagsloget 45','?rhus',NULL,'8200','Denmark');
INSERT INTO `Orders` VALUES (10368,'ERNSH',2,"11/29/1996 12:00:00 AM","12/27/1996 12:00:00 AM","12/2/1996 12:00:00 AM",2,101.95,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria');
INSERT INTO `Orders` VALUES (10369,'SPLIR',8,"12/2/1996 12:00:00 AM","12/30/1996 12:00:00 AM","12/9/1996 12:00:00 AM",2,195.68,'Split Rail Beer & Ale','P.O. Box 555','Lander','WY','82520','USA');
INSERT INTO `Orders` VALUES (10370,'CHOPS',6,"12/3/1996 12:00:00 AM","12/31/1996 12:00:00 AM","12/27/1996 12:00:00 AM",2,1.17,'Chop-suey Chinese','Hauptstr. 31','Bern',NULL,'3012','Switzerland');
INSERT INTO `Orders` VALUES (10371,'LAMAI',1,"12/3/1996 12:00:00 AM","12/31/1996 12:00:00 AM","12/24/1996 12:00:00 AM",1,0.45,'La maison d''Asie','1 rue Alsace-Lorraine','Toulouse',NULL,'31000','France');
INSERT INTO `Orders` VALUES (10372,'QUEEN',5,"12/4/1996 12:00:00 AM","1/1/1997 12:00:00 AM","12/9/1996 12:00:00 AM",2,890.78,'Queen Cozinha','Alameda dos Can?rios, 891','Sao Paulo','SP','05487-020','Brazil');
INSERT INTO `Orders` VALUES (10373,'HUNGO',4,"12/5/1996 12:00:00 AM","1/2/1997 12:00:00 AM","12/11/1996 12:00:00 AM",3,124.12,'Hungry Owl All-Night Grocers','8 Johnstown Road','Cork','Co. Cork',NULL,'Ireland');
INSERT INTO `Orders` VALUES (10374,'WOLZA',1,"12/5/1996 12:00:00 AM","1/2/1997 12:00:00 AM","12/9/1996 12:00:00 AM",3,3.94,'Wolski Zajazd','ul. Filtrowa 68','Warszawa',NULL,'01-012','Poland');
INSERT INTO `Orders` VALUES (10375,'HUNGC',3,"12/6/1996 12:00:00 AM","1/3/1997 12:00:00 AM","12/9/1996 12:00:00 AM",2,20.12,'Hungry Coyote Import Store','City Center Plaza 516 Main St.','Elgin','OR','97827','USA');
INSERT INTO `Orders` VALUES (10376,'MEREP',1,"12/9/1996 12:00:00 AM","1/6/1997 12:00:00 AM","12/13/1996 12:00:00 AM",2,20.39,'M?re Paillarde','43 rue St. Laurent','Montr?al','Qu?bec','H1J 1C3','Canada');
INSERT INTO `Orders` VALUES (10377,'SEVES',1,"12/9/1996 12:00:00 AM","1/6/1997 12:00:00 AM","12/13/1996 12:00:00 AM",3,22.21,'Seven Seas Imports','90 Wadhurst Rd.','London',NULL,'OX15 4NB','UK');
INSERT INTO `Orders` VALUES (10378,'FOLKO',5,"12/10/1996 12:00:00 AM","1/7/1997 12:00:00 AM","12/19/1996 12:00:00 AM",3,5.44,'Folk och f? HB','?kergatan 24','Br?cke',NULL,'S-844 67','Sweden');
INSERT INTO `Orders` VALUES (10379,'QUEDE',2,"12/11/1996 12:00:00 AM","1/8/1997 12:00:00 AM","12/13/1996 12:00:00 AM",1,45.03,'Que Del?cia','Rua da Panificadora, 12','Rio de Janeiro','RJ','02389-673','Brazil');
INSERT INTO `Orders` VALUES (10380,'HUNGO',8,"12/12/1996 12:00:00 AM","1/9/1997 12:00:00 AM","1/16/1997 12:00:00 AM",3,35.03,'Hungry Owl All-Night Grocers','8 Johnstown Road','Cork','Co. Cork',NULL,'Ireland');
INSERT INTO `Orders` VALUES (10381,'LILAS',3,"12/12/1996 12:00:00 AM","1/9/1997 12:00:00 AM","12/13/1996 12:00:00 AM",3,7.99,'LILA-Supermercado','Carrera 52 con Ave. Bol?var #65-98 Llano Largo','Barquisimeto','Lara','3508','Venezuela');
INSERT INTO `Orders` VALUES (10382,'ERNSH',4,"12/13/1996 12:00:00 AM","1/10/1997 12:00:00 AM","12/16/1996 12:00:00 AM",1,94.77,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria');
INSERT INTO `Orders` VALUES (10383,'AROUT',8,"12/16/1996 12:00:00 AM","1/13/1997 12:00:00 AM","12/18/1996 12:00:00 AM",3,34.24,'Around the Horn','Brook Farm Stratford St. Mary','Colchester','Essex','CO7 6JX','UK');
INSERT INTO `Orders` VALUES (10384,'BERGS',3,"12/16/1996 12:00:00 AM","1/13/1997 12:00:00 AM","12/20/1996 12:00:00 AM",3,168.64,'Berglunds snabbk?p','Berguvsv?gen  8','Lule?',NULL,'S-958 22','Sweden');
INSERT INTO `Orders` VALUES (10385,'SPLIR',1,"12/17/1996 12:00:00 AM","1/14/1997 12:00:00 AM","12/23/1996 12:00:00 AM",2,30.96,'Split Rail Beer & Ale','P.O. Box 555','Lander','WY','82520','USA');
INSERT INTO `Orders` VALUES (10386,'FAMIA',9,"12/18/1996 12:00:00 AM","1/1/1997 12:00:00 AM","12/25/1996 12:00:00 AM",3,13.99,'Familia Arquibaldo','Rua Or?s, 92','Sao Paulo','SP','05442-030','Brazil');
INSERT INTO `Orders` VALUES (10387,'SANTG',1,"12/18/1996 12:00:00 AM","1/15/1997 12:00:00 AM","12/20/1996 12:00:00 AM",2,93.63,'Sant? Gourmet','Erling Skakkes gate 78','Stavern',NULL,'4110','Norway');
INSERT INTO `Orders` VALUES (10388,'SEVES',2,"12/19/1996 12:00:00 AM","1/16/1997 12:00:00 AM","12/20/1996 12:00:00 AM",1,34.86,'Seven Seas Imports','90 Wadhurst Rd.','London',NULL,'OX15 4NB','UK');
INSERT INTO `Orders` VALUES (10389,'BOTTM',4,"12/20/1996 12:00:00 AM","1/17/1997 12:00:00 AM","12/24/1996 12:00:00 AM",2,47.42,'Bottom-Dollar Markets','23 Tsawassen Blvd.','Tsawassen','BC','T2F 8M4','Canada');
INSERT INTO `Orders` VALUES (10390,'ERNSH',6,"12/23/1996 12:00:00 AM","1/20/1997 12:00:00 AM","12/26/1996 12:00:00 AM",1,126.38,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria');
INSERT INTO `Orders` VALUES (10391,'DRACD',3,"12/23/1996 12:00:00 AM","1/20/1997 12:00:00 AM","12/31/1996 12:00:00 AM",3,5.45,'Drachenblut Delikatessen','Walserweg 21','Aachen',NULL,'52066','Germany');
INSERT INTO `Orders` VALUES (10392,'PICCO',2,"12/24/1996 12:00:00 AM","1/21/1997 12:00:00 AM","1/1/1997 12:00:00 AM",3,122.46,'Piccolo und mehr','Geislweg 14','Salzburg',NULL,'5020','Austria');
INSERT INTO `Orders` VALUES (10393,'SAVEA',1,"12/25/1996 12:00:00 AM","1/22/1997 12:00:00 AM","1/3/1997 12:00:00 AM",3,126.56,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA');
INSERT INTO `Orders` VALUES (10394,'HUNGC',1,"12/25/1996 12:00:00 AM","1/22/1997 12:00:00 AM","1/3/1997 12:00:00 AM",3,30.34,'Hungry Coyote Import Store','City Center Plaza 516 Main St.','Elgin','OR','97827','USA');
INSERT INTO `Orders` VALUES (10395,'HILAA',6,"12/26/1996 12:00:00 AM","1/23/1997 12:00:00 AM","1/3/1997 12:00:00 AM",1,184.41,'HILARION-Abastos','Carrera 22 con Ave. Carlos Soublette #8-35','San Crist?bal','T?chira','5022','Venezuela');
INSERT INTO `Orders` VALUES (10396,'FRANK',1,"12/27/1996 12:00:00 AM","1/10/1997 12:00:00 AM","1/6/1997 12:00:00 AM",3,135.35,'Frankenversand','Berliner Platz 43','M?nchen',NULL,'80805','Germany');
INSERT INTO `Orders` VALUES (10397,'PRINI',5,"12/27/1996 12:00:00 AM","1/24/1997 12:00:00 AM","1/2/1997 12:00:00 AM",1,60.26,'Princesa Isabel Vinhos','Estrada da sa?de n. 58','Lisboa',NULL,'1756','Portugal');
INSERT INTO `Orders` VALUES (10398,'SAVEA',2,"12/30/1996 12:00:00 AM","1/27/1997 12:00:00 AM","1/9/1997 12:00:00 AM",3,89.16,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA');
INSERT INTO `Orders` VALUES (10399,'VAFFE',8,"12/31/1996 12:00:00 AM","1/14/1997 12:00:00 AM","1/8/1997 12:00:00 AM",3,27.36,'Vaffeljernet','Smagsloget 45','?rhus',NULL,'8200','Denmark');
INSERT INTO `Orders` VALUES (10400,'EASTC',1,"1/1/1997 12:00:00 AM","1/29/1997 12:00:00 AM","1/16/1997 12:00:00 AM",3,83.93,'Eastern Connection','35 King George','London',NULL,'WX3 6FW','UK');
INSERT INTO `Orders` VALUES (10401,'RATTC',1,"1/1/1997 12:00:00 AM","1/29/1997 12:00:00 AM","1/10/1997 12:00:00 AM",1,12.51,'Rattlesnake Canyon Grocery','2817 Milton Dr.','Albuquerque','NM','87110','USA');
INSERT INTO `Orders` VALUES (10402,'ERNSH',8,"1/2/1997 12:00:00 AM","2/13/1997 12:00:00 AM","1/10/1997 12:00:00 AM",2,67.88,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria');
INSERT INTO `Orders` VALUES (10403,'ERNSH',4,"1/3/1997 12:00:00 AM","1/31/1997 12:00:00 AM","1/9/1997 12:00:00 AM",3,73.79,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria');
INSERT INTO `Orders` VALUES (10404,'MAGAA',2,"1/3/1997 12:00:00 AM","1/31/1997 12:00:00 AM","1/8/1997 12:00:00 AM",1,155.97,'Magazzini Alimentari Riuniti','Via Ludovico il Moro 22','Bergamo',NULL,'24100','Italy');
INSERT INTO `Orders` VALUES (10405,'LINOD',1,"1/6/1997 12:00:00 AM","2/3/1997 12:00:00 AM","1/22/1997 12:00:00 AM",1,34.82,'LINO-Delicateses','Ave. 5 de Mayo Porlamar','I. de Margarita','Nueva Esparta','4980','Venezuela');
INSERT INTO `Orders` VALUES (10406,'QUEEN',7,"1/7/1997 12:00:00 AM","2/18/1997 12:00:00 AM","1/13/1997 12:00:00 AM",1,108.04,'Queen Cozinha','Alameda dos Can?rios, 891','Sao Paulo','SP','05487-020','Brazil');
INSERT INTO `Orders` VALUES (10407,'OTTIK',2,"1/7/1997 12:00:00 AM","2/4/1997 12:00:00 AM","1/30/1997 12:00:00 AM",2,91.48,'Ottilies K?seladen','Mehrheimerstr. 369','K?ln',NULL,'50739','Germany');
INSERT INTO `Orders` VALUES (10408,'FOLIG',8,"1/8/1997 12:00:00 AM","2/5/1997 12:00:00 AM","1/14/1997 12:00:00 AM",1,11.26,'Folies gourmandes','184, chauss?e de Tournai','Lille',NULL,'59000','France');
INSERT INTO `Orders` VALUES (10409,'OCEAN',3,"1/9/1997 12:00:00 AM","2/6/1997 12:00:00 AM","1/14/1997 12:00:00 AM",1,29.83,'Oc?ano Atl?ntico Ltda.','Ing. Gustavo Moncada 8585 Piso 20-A','Buenos Aires',NULL,'1010','Argentina');
INSERT INTO `Orders` VALUES (10410,'BOTTM',3,"1/10/1997 12:00:00 AM","2/7/1997 12:00:00 AM","1/15/1997 12:00:00 AM",3,2.4,'Bottom-Dollar Markets','23 Tsawassen Blvd.','Tsawassen','BC','T2F 8M4','Canada');
INSERT INTO `Orders` VALUES (10411,'BOTTM',9,"1/10/1997 12:00:00 AM","2/7/1997 12:00:00 AM","1/21/1997 12:00:00 AM",3,23.65,'Bottom-Dollar Markets','23 Tsawassen Blvd.','Tsawassen','BC','T2F 8M4','Canada');
INSERT INTO `Orders` VALUES (10412,'WARTH',8,"1/13/1997 12:00:00 AM","2/10/1997 12:00:00 AM","1/15/1997 12:00:00 AM",2,3.77,'Wartian Herkku','Torikatu 38','Oulu',NULL,'90110','Finland');
INSERT INTO `Orders` VALUES (10413,'LAMAI',3,"1/14/1997 12:00:00 AM","2/11/1997 12:00:00 AM","1/16/1997 12:00:00 AM",2,95.66,'La maison d''Asie','1 rue Alsace-Lorraine','Toulouse',NULL,'31000','France');
INSERT INTO `Orders` VALUES (10414,'FAMIA',2,"1/14/1997 12:00:00 AM","2/11/1997 12:00:00 AM","1/17/1997 12:00:00 AM",3,21.48,'Familia Arquibaldo','Rua Or?s, 92','Sao Paulo','SP','05442-030','Brazil');
INSERT INTO `Orders` VALUES (10415,'HUNGC',3,"1/15/1997 12:00:00 AM","2/12/1997 12:00:00 AM","1/24/1997 12:00:00 AM",1,0.2,'Hungry Coyote Import Store','City Center Plaza 516 Main St.','Elgin','OR','97827','USA');
INSERT INTO `Orders` VALUES (10416,'WARTH',8,"1/16/1997 12:00:00 AM","2/13/1997 12:00:00 AM","1/27/1997 12:00:00 AM",3,22.72,'Wartian Herkku','Torikatu 38','Oulu',NULL,'90110','Finland');
INSERT INTO `Orders` VALUES (10417,'SIMOB',4,"1/16/1997 12:00:00 AM","2/13/1997 12:00:00 AM","1/28/1997 12:00:00 AM",3,70.29,'Simons bistro','Vinb?ltet 34','Kobenhavn',NULL,'1734','Denmark');
INSERT INTO `Orders` VALUES (10418,'QUICK',4,"1/17/1997 12:00:00 AM","2/14/1997 12:00:00 AM","1/24/1997 12:00:00 AM",1,17.55,'QUICK-Stop','Taucherstra?e 10','Cunewalde',NULL,'01307','Germany');
INSERT INTO `Orders` VALUES (10419,'RICSU',4,"1/20/1997 12:00:00 AM","2/17/1997 12:00:00 AM","1/30/1997 12:00:00 AM",2,137.35,'Richter Supermarkt','Starenweg 5','Gen?ve',NULL,'1204','Switzerland');
INSERT INTO `Orders` VALUES (10420,'WELLI',3,"1/21/1997 12:00:00 AM","2/18/1997 12:00:00 AM","1/27/1997 12:00:00 AM",1,44.12,'Wellington Importadora','Rua do Mercado, 12','Resende','SP','08737-363','Brazil');
INSERT INTO `Orders` VALUES (10421,'QUEDE',8,"1/21/1997 12:00:00 AM","3/4/1997 12:00:00 AM","1/27/1997 12:00:00 AM",1,99.23,'Que Del?cia','Rua da Panificadora, 12','Rio de Janeiro','RJ','02389-673','Brazil');
INSERT INTO `Orders` VALUES (10422,'FRANS',2,"1/22/1997 12:00:00 AM","2/19/1997 12:00:00 AM","1/31/1997 12:00:00 AM",1,3.02,'Franchi S.p.A.','Via Monte Bianco 34','Torino',NULL,'10100','Italy');
INSERT INTO `Orders` VALUES (10423,'GOURL',6,"1/23/1997 12:00:00 AM","2/6/1997 12:00:00 AM","2/24/1997 12:00:00 AM",3,24.5,'Gourmet Lanchonetes','Av. Brasil, 442','Campinas','SP','04876-786','Brazil');
INSERT INTO `Orders` VALUES (10424,'MEREP',7,"1/23/1997 12:00:00 AM","2/20/1997 12:00:00 AM","1/27/1997 12:00:00 AM",2,370.61,'M?re Paillarde','43 rue St. Laurent','Montr?al','Qu?bec','H1J 1C3','Canada');
INSERT INTO `Orders` VALUES (10425,'LAMAI',6,"1/24/1997 12:00:00 AM","2/21/1997 12:00:00 AM","2/14/1997 12:00:00 AM",2,7.93,'La maison d''Asie','1 rue Alsace-Lorraine','Toulouse',NULL,'31000','France');
INSERT INTO `Orders` VALUES (10426,'GALED',4,"1/27/1997 12:00:00 AM","2/24/1997 12:00:00 AM","2/6/1997 12:00:00 AM",1,18.69,'Galer?a del gastron?mo','Rambla de Catalu?a, 23','Barcelona',NULL,'8022','Spain');
INSERT INTO `Orders` VALUES (10427,'PICCO',4,"1/27/1997 12:00:00 AM","2/24/1997 12:00:00 AM","3/3/1997 12:00:00 AM",2,31.29,'Piccolo und mehr','Geislweg 14','Salzburg',NULL,'5020','Austria');
INSERT INTO `Orders` VALUES (10428,'REGGC',7,"1/28/1997 12:00:00 AM","2/25/1997 12:00:00 AM","2/4/1997 12:00:00 AM",1,11.09,'Reggiani Caseifici','Strada Provinciale 124','Reggio Emilia',NULL,'42100','Italy');
INSERT INTO `Orders` VALUES (10429,'HUNGO',3,"1/29/1997 12:00:00 AM","3/12/1997 12:00:00 AM","2/7/1997 12:00:00 AM",2,56.63,'Hungry Owl All-Night Grocers','8 Johnstown Road','Cork','Co. Cork',NULL,'Ireland');
INSERT INTO `Orders` VALUES (10430,'ERNSH',4,"1/30/1997 12:00:00 AM","2/13/1997 12:00:00 AM","2/3/1997 12:00:00 AM",1,458.78,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria');
INSERT INTO `Orders` VALUES (10431,'BOTTM',4,"1/30/1997 12:00:00 AM","2/13/1997 12:00:00 AM","2/7/1997 12:00:00 AM",2,44.17,'Bottom-Dollar Markets','23 Tsawassen Blvd.','Tsawassen','BC','T2F 8M4','Canada');
INSERT INTO `Orders` VALUES (10432,'SPLIR',3,"1/31/1997 12:00:00 AM","2/14/1997 12:00:00 AM","2/7/1997 12:00:00 AM",2,4.34,'Split Rail Beer & Ale','P.O. Box 555','Lander','WY','82520','USA');
INSERT INTO `Orders` VALUES (10433,'PRINI',3,"2/3/1997 12:00:00 AM","3/3/1997 12:00:00 AM","3/4/1997 12:00:00 AM",3,73.83,'Princesa Isabel Vinhos','Estrada da sa?de n. 58','Lisboa',NULL,'1756','Portugal');
INSERT INTO `Orders` VALUES (10434,'FOLKO',3,"2/3/1997 12:00:00 AM","3/3/1997 12:00:00 AM","2/13/1997 12:00:00 AM",2,17.92,'Folk och f? HB','?kergatan 24','Br?cke',NULL,'S-844 67','Sweden');
INSERT INTO `Orders` VALUES (10435,'CONSH',8,"2/4/1997 12:00:00 AM","3/18/1997 12:00:00 AM","2/7/1997 12:00:00 AM",2,9.21,'Consolidated Holdings','Berkeley Gardens 12  Brewery','London',NULL,'WX1 6LT','UK');
INSERT INTO `Orders` VALUES (10436,'BLONP',3,"2/5/1997 12:00:00 AM","3/5/1997 12:00:00 AM","2/11/1997 12:00:00 AM",2,156.66,'Blondel p?re et fils','24, place Kl?ber','Strasbourg',NULL,'67000','France');
INSERT INTO `Orders` VALUES (10437,'WARTH',8,"2/5/1997 12:00:00 AM","3/5/1997 12:00:00 AM","2/12/1997 12:00:00 AM",1,19.97,'Wartian Herkku','Torikatu 38','Oulu',NULL,'90110','Finland');
INSERT INTO `Orders` VALUES (10438,'TOMSP',3,"2/6/1997 12:00:00 AM","3/6/1997 12:00:00 AM","2/14/1997 12:00:00 AM",2,8.24,'Toms Spezialit?ten','Luisenstr. 48','M?nster',NULL,'44087','Germany');
INSERT INTO `Orders` VALUES (10439,'MEREP',6,"2/7/1997 12:00:00 AM","3/7/1997 12:00:00 AM","2/10/1997 12:00:00 AM",3,4.07,'M?re Paillarde','43 rue St. Laurent','Montr?al','Qu?bec','H1J 1C3','Canada');
INSERT INTO `Orders` VALUES (10440,'SAVEA',4,"2/10/1997 12:00:00 AM","3/10/1997 12:00:00 AM","2/28/1997 12:00:00 AM",2,86.53,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA');
INSERT INTO `Orders` VALUES (10441,'OLDWO',3,"2/10/1997 12:00:00 AM","3/24/1997 12:00:00 AM","3/14/1997 12:00:00 AM",2,73.02,'Old World Delicatessen','2743 Bering St.','Anchorage','AK','99508','USA');
INSERT INTO `Orders` VALUES (10442,'ERNSH',3,"2/11/1997 12:00:00 AM","3/11/1997 12:00:00 AM","2/18/1997 12:00:00 AM",2,47.94,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria');
INSERT INTO `Orders` VALUES (10443,'REGGC',8,"2/12/1997 12:00:00 AM","3/12/1997 12:00:00 AM","2/14/1997 12:00:00 AM",1,13.95,'Reggiani Caseifici','Strada Provinciale 124','Reggio Emilia',NULL,'42100','Italy');
INSERT INTO `Orders` VALUES (10444,'BERGS',3,"2/12/1997 12:00:00 AM","3/12/1997 12:00:00 AM","2/21/1997 12:00:00 AM",3,3.5,'Berglunds snabbk?p','Berguvsv?gen  8','Lule?',NULL,'S-958 22','Sweden');
INSERT INTO `Orders` VALUES (10445,'BERGS',3,"2/13/1997 12:00:00 AM","3/13/1997 12:00:00 AM","2/20/1997 12:00:00 AM",1,9.3,'Berglunds snabbk?p','Berguvsv?gen  8','Lule?',NULL,'S-958 22','Sweden');
INSERT INTO `Orders` VALUES (10446,'TOMSP',6,"2/14/1997 12:00:00 AM","3/14/1997 12:00:00 AM","2/19/1997 12:00:00 AM",1,14.68,'Toms Spezialit?ten','Luisenstr. 48','M?nster',NULL,'44087','Germany');
INSERT INTO `Orders` VALUES (10447,'RICAR',4,"2/14/1997 12:00:00 AM","3/14/1997 12:00:00 AM","3/7/1997 12:00:00 AM",2,68.66,'Ricardo Adocicados','Av. Copacabana, 267','Rio de Janeiro','RJ','02389-890','Brazil');
INSERT INTO `Orders` VALUES (10448,'RANCH',4,"2/17/1997 12:00:00 AM","3/17/1997 12:00:00 AM","2/24/1997 12:00:00 AM",2,38.82,'Rancho grande','Av. del Libertador 900','Buenos Aires',NULL,'1010','Argentina');
INSERT INTO `Orders` VALUES (10449,'BLONP',3,"2/18/1997 12:00:00 AM","3/18/1997 12:00:00 AM","2/27/1997 12:00:00 AM",2,53.3,'Blondel p?re et fils','24, place Kl?ber','Strasbourg',NULL,'67000','France');
INSERT INTO `Orders` VALUES (10450,'VICTE',8,"2/19/1997 12:00:00 AM","3/19/1997 12:00:00 AM","3/11/1997 12:00:00 AM",2,7.23,'Victuailles en stock','2, rue du Commerce','Lyon',NULL,'69004','France');
INSERT INTO `Orders` VALUES (10451,'QUICK',4,"2/19/1997 12:00:00 AM","3/5/1997 12:00:00 AM","3/12/1997 12:00:00 AM",3,189.09,'QUICK-Stop','Taucherstra?e 10','Cunewalde',NULL,'01307','Germany');
INSERT INTO `Orders` VALUES (10452,'SAVEA',8,"2/20/1997 12:00:00 AM","3/20/1997 12:00:00 AM","2/26/1997 12:00:00 AM",1,140.26,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA');
INSERT INTO `Orders` VALUES (10453,'AROUT',1,"2/21/1997 12:00:00 AM","3/21/1997 12:00:00 AM","2/26/1997 12:00:00 AM",2,25.36,'Around the Horn','Brook Farm Stratford St. Mary','Colchester','Essex','CO7 6JX','UK');
INSERT INTO `Orders` VALUES (10454,'LAMAI',4,"2/21/1997 12:00:00 AM","3/21/1997 12:00:00 AM","2/25/1997 12:00:00 AM",3,2.74,'La maison d''Asie','1 rue Alsace-Lorraine','Toulouse',NULL,'31000','France');
INSERT INTO `Orders` VALUES (10455,'WARTH',8,"2/24/1997 12:00:00 AM","4/7/1997 12:00:00 AM","3/3/1997 12:00:00 AM",2,180.45,'Wartian Herkku','Torikatu 38','Oulu',NULL,'90110','Finland');
INSERT INTO `Orders` VALUES (10456,'KOENE',8,"2/25/1997 12:00:00 AM","4/8/1997 12:00:00 AM","2/28/1997 12:00:00 AM",2,8.12,'K?niglich Essen','Maubelstr. 90','Brandenburg',NULL,'14776','Germany');
INSERT INTO `Orders` VALUES (10457,'KOENE',2,"2/25/1997 12:00:00 AM","3/25/1997 12:00:00 AM","3/3/1997 12:00:00 AM",1,11.57,'K?niglich Essen','Maubelstr. 90','Brandenburg',NULL,'14776','Germany');
INSERT INTO `Orders` VALUES (10458,'SUPRD',7,"2/26/1997 12:00:00 AM","3/26/1997 12:00:00 AM","3/4/1997 12:00:00 AM",3,147.06,'Supr?mes d?lices','Boulevard Tirou, 255','Charleroi',NULL,'B-6000','Belgium');
INSERT INTO `Orders` VALUES (10459,'VICTE',4,"2/27/1997 12:00:00 AM","3/27/1997 12:00:00 AM","2/28/1997 12:00:00 AM",2,25.09,'Victuailles en stock','2, rue du Commerce','Lyon',NULL,'69004','France');
INSERT INTO `Orders` VALUES (10460,'FOLKO',8,"2/28/1997 12:00:00 AM","3/28/1997 12:00:00 AM","3/3/1997 12:00:00 AM",1,16.27,'Folk och f? HB','?kergatan 24','Br?cke',NULL,'S-844 67','Sweden');
INSERT INTO `Orders` VALUES (10461,'LILAS',1,"2/28/1997 12:00:00 AM","3/28/1997 12:00:00 AM","3/5/1997 12:00:00 AM",3,148.61,'LILA-Supermercado','Carrera 52 con Ave. Bol?var #65-98 Llano Largo','Barquisimeto','Lara','3508','Venezuela');
INSERT INTO `Orders` VALUES (10462,'CONSH',2,"3/3/1997 12:00:00 AM","3/31/1997 12:00:00 AM","3/18/1997 12:00:00 AM",1,6.17,'Consolidated Holdings','Berkeley Gardens 12  Brewery','London',NULL,'WX1 6LT','UK');
INSERT INTO `Orders` VALUES (10463,'SUPRD',5,"3/4/1997 12:00:00 AM","4/1/1997 12:00:00 AM","3/6/1997 12:00:00 AM",3,14.78,'Supr?mes d?lices','Boulevard Tirou, 255','Charleroi',NULL,'B-6000','Belgium');
INSERT INTO `Orders` VALUES (10464,'FURIB',4,"3/4/1997 12:00:00 AM","4/1/1997 12:00:00 AM","3/14/1997 12:00:00 AM",2,89.0,'Furia Bacalhau e Frutos do Mar','Jardim das rosas n. 32','Lisboa',NULL,'1675','Portugal');
INSERT INTO `Orders` VALUES (10465,'VAFFE',1,"3/5/1997 12:00:00 AM","4/2/1997 12:00:00 AM","3/14/1997 12:00:00 AM",3,145.04,'Vaffeljernet','Smagsloget 45','?rhus',NULL,'8200','Denmark');
INSERT INTO `Orders` VALUES (10466,'COMMI',4,"3/6/1997 12:00:00 AM","4/3/1997 12:00:00 AM","3/13/1997 12:00:00 AM",1,11.93,'Com?rcio Mineiro','Av. dos Lus?adas, 23','Sao Paulo','SP','05432-043','Brazil');
INSERT INTO `Orders` VALUES (10467,'MAGAA',8,"3/6/1997 12:00:00 AM","4/3/1997 12:00:00 AM","3/11/1997 12:00:00 AM",2,4.93,'Magazzini Alimentari Riuniti','Via Ludovico il Moro 22','Bergamo',NULL,'24100','Italy');
INSERT INTO `Orders` VALUES (10468,'KOENE',3,"3/7/1997 12:00:00 AM","4/4/1997 12:00:00 AM","3/12/1997 12:00:00 AM",3,44.12,'K?niglich Essen','Maubelstr. 90','Brandenburg',NULL,'14776','Germany');
INSERT INTO `Orders` VALUES (10469,'WHITC',1,"3/10/1997 12:00:00 AM","4/7/1997 12:00:00 AM","3/14/1997 12:00:00 AM",1,60.18,'White Clover Markets','1029 - 12th Ave. S.','Seattle','WA','98124','USA');
INSERT INTO `Orders` VALUES (10470,'BONAP',4,"3/11/1997 12:00:00 AM","4/8/1997 12:00:00 AM","3/14/1997 12:00:00 AM",2,64.56,'Bon app''','12, rue des Bouchers','Marseille',NULL,'13008','France');
INSERT INTO `Orders` VALUES (10471,'BSBEV',2,"3/11/1997 12:00:00 AM","4/8/1997 12:00:00 AM","3/18/1997 12:00:00 AM",3,45.59,'B''s Beverages','Fauntleroy Circus','London',NULL,'EC2 5NT','UK');
INSERT INTO `Orders` VALUES (10472,'SEVES',8,"3/12/1997 12:00:00 AM","4/9/1997 12:00:00 AM","3/19/1997 12:00:00 AM",1,4.2,'Seven Seas Imports','90 Wadhurst Rd.','London',NULL,'OX15 4NB','UK');
INSERT INTO `Orders` VALUES (10473,'ISLAT',1,"3/13/1997 12:00:00 AM","3/27/1997 12:00:00 AM","3/21/1997 12:00:00 AM",3,16.37,'Island Trading','Garden House Crowther Way','Cowes','Isle of Wight','PO31 7PJ','UK');
INSERT INTO `Orders` VALUES (10474,'PERIC',5,"3/13/1997 12:00:00 AM","4/10/1997 12:00:00 AM","3/21/1997 12:00:00 AM",2,83.49,'Pericles Comidas cl?sicas','Calle Dr. Jorge Cash 321','M?xico D.F.',NULL,'05033','Mexico');
INSERT INTO `Orders` VALUES (10475,'SUPRD',9,"3/14/1997 12:00:00 AM","4/11/1997 12:00:00 AM","4/4/1997 12:00:00 AM",1,68.52,'Supr?mes d?lices','Boulevard Tirou, 255','Charleroi',NULL,'B-6000','Belgium');
INSERT INTO `Orders` VALUES (10476,'HILAA',8,"3/17/1997 12:00:00 AM","4/14/1997 12:00:00 AM","3/24/1997 12:00:00 AM",3,4.41,'HILARION-Abastos','Carrera 22 con Ave. Carlos Soublette #8-35','San Crist?bal','T?chira','5022','Venezuela');
INSERT INTO `Orders` VALUES (10477,'PRINI',5,"3/17/1997 12:00:00 AM","4/14/1997 12:00:00 AM","3/25/1997 12:00:00 AM",2,13.02,'Princesa Isabel Vinhos','Estrada da sa?de n. 58','Lisboa',NULL,'1756','Portugal');
INSERT INTO `Orders` VALUES (10478,'VICTE',2,"3/18/1997 12:00:00 AM","4/1/1997 12:00:00 AM","3/26/1997 12:00:00 AM",3,4.81,'Victuailles en stock','2, rue du Commerce','Lyon',NULL,'69004','France');
INSERT INTO `Orders` VALUES (10479,'RATTC',3,"3/19/1997 12:00:00 AM","4/16/1997 12:00:00 AM","3/21/1997 12:00:00 AM",3,708.95,'Rattlesnake Canyon Grocery','2817 Milton Dr.','Albuquerque','NM','87110','USA');
INSERT INTO `Orders` VALUES (10480,'FOLIG',6,"3/20/1997 12:00:00 AM","4/17/1997 12:00:00 AM","3/24/1997 12:00:00 AM",2,1.35,'Folies gourmandes','184, chauss?e de Tournai','Lille',NULL,'59000','France');
INSERT INTO `Orders` VALUES (10481,'RICAR',8,"3/20/1997 12:00:00 AM","4/17/1997 12:00:00 AM","3/25/1997 12:00:00 AM",2,64.33,'Ricardo Adocicados','Av. Copacabana, 267','Rio de Janeiro','RJ','02389-890','Brazil');
INSERT INTO `Orders` VALUES (10482,'LAZYK',1,"3/21/1997 12:00:00 AM","4/18/1997 12:00:00 AM","4/10/1997 12:00:00 AM",3,7.48,'Lazy K Kountry Store','12 Orchestra Terrace','Walla Walla','WA','99362','USA');
INSERT INTO `Orders` VALUES (10483,'WHITC',7,"3/24/1997 12:00:00 AM","4/21/1997 12:00:00 AM","4/25/1997 12:00:00 AM",2,15.28,'White Clover Markets','1029 - 12th Ave. S.','Seattle','WA','98124','USA');
INSERT INTO `Orders` VALUES (10484,'BSBEV',3,"3/24/1997 12:00:00 AM","4/21/1997 12:00:00 AM","4/1/1997 12:00:00 AM",3,6.88,'B''s Beverages','Fauntleroy Circus','London',NULL,'EC2 5NT','UK');
INSERT INTO `Orders` VALUES (10485,'LINOD',4,"3/25/1997 12:00:00 AM","4/8/1997 12:00:00 AM","3/31/1997 12:00:00 AM",2,64.45,'LINO-Delicateses','Ave. 5 de Mayo Porlamar','I. de Margarita','Nueva Esparta','4980','Venezuela');
INSERT INTO `Orders` VALUES (10486,'HILAA',1,"3/26/1997 12:00:00 AM","4/23/1997 12:00:00 AM","4/2/1997 12:00:00 AM",2,30.53,'HILARION-Abastos','Carrera 22 con Ave. Carlos Soublette #8-35','San Crist?bal','T?chira','5022','Venezuela');
INSERT INTO `Orders` VALUES (10487,'QUEEN',2,"3/26/1997 12:00:00 AM","4/23/1997 12:00:00 AM","3/28/1997 12:00:00 AM",2,71.07,'Queen Cozinha','Alameda dos Can?rios, 891','Sao Paulo','SP','05487-020','Brazil');
INSERT INTO `Orders` VALUES (10488,'FRANK',8,"3/27/1997 12:00:00 AM","4/24/1997 12:00:00 AM","4/2/1997 12:00:00 AM",2,4.93,'Frankenversand','Berliner Platz 43','M?nchen',NULL,'80805','Germany');
INSERT INTO `Orders` VALUES (10489,'PICCO',6,"3/28/1997 12:00:00 AM","4/25/1997 12:00:00 AM","4/9/1997 12:00:00 AM",2,5.29,'Piccolo und mehr','Geislweg 14','Salzburg',NULL,'5020','Austria');
INSERT INTO `Orders` VALUES (10490,'HILAA',7,"3/31/1997 12:00:00 AM","4/28/1997 12:00:00 AM","4/3/1997 12:00:00 AM",2,210.19,'HILARION-Abastos','Carrera 22 con Ave. Carlos Soublette #8-35','San Crist?bal','T?chira','5022','Venezuela');
INSERT INTO `Orders` VALUES (10491,'FURIB',8,"3/31/1997 12:00:00 AM","4/28/1997 12:00:00 AM","4/8/1997 12:00:00 AM",3,16.96,'Furia Bacalhau e Frutos do Mar','Jardim das rosas n. 32','Lisboa',NULL,'1675','Portugal');
INSERT INTO `Orders` VALUES (10492,'BOTTM',3,"4/1/1997 12:00:00 AM","4/29/1997 12:00:00 AM","4/11/1997 12:00:00 AM",1,62.89,'Bottom-Dollar Markets','23 Tsawassen Blvd.','Tsawassen','BC','T2F 8M4','Canada');
INSERT INTO `Orders` VALUES (10493,'LAMAI',4,"4/2/1997 12:00:00 AM","4/30/1997 12:00:00 AM","4/10/1997 12:00:00 AM",3,10.64,'La maison d''Asie','1 rue Alsace-Lorraine','Toulouse',NULL,'31000','France');
INSERT INTO `Orders` VALUES (10494,'COMMI',4,"4/2/1997 12:00:00 AM","4/30/1997 12:00:00 AM","4/9/1997 12:00:00 AM",2,65.99,'Com?rcio Mineiro','Av. dos Lus?adas, 23','Sao Paulo','SP','05432-043','Brazil');
INSERT INTO `Orders` VALUES (10495,'LAUGB',3,"4/3/1997 12:00:00 AM","5/1/1997 12:00:00 AM","4/11/1997 12:00:00 AM",3,4.65,'Laughing Bacchus Wine Cellars','2319 Elm St.','Vancouver','BC','V3F 2K1','Canada');
INSERT INTO `Orders` VALUES (10496,'TRADH',7,"4/4/1997 12:00:00 AM","5/2/1997 12:00:00 AM","4/7/1997 12:00:00 AM",2,46.77,'Tradi?ao Hipermercados','Av. In?s de Castro, 414','Sao Paulo','SP','05634-030','Brazil');
INSERT INTO `Orders` VALUES (10497,'LEHMS',7,"4/4/1997 12:00:00 AM","5/2/1997 12:00:00 AM","4/7/1997 12:00:00 AM",1,36.21,'Lehmanns Marktstand','Magazinweg 7','Frankfurt a.M.',NULL,'60528','Germany');
INSERT INTO `Orders` VALUES (10498,'HILAA',8,"4/7/1997 12:00:00 AM","5/5/1997 12:00:00 AM","4/11/1997 12:00:00 AM",2,29.75,'HILARION-Abastos','Carrera 22 con Ave. Carlos Soublette #8-35','San Crist?bal','T?chira','5022','Venezuela');
INSERT INTO `Orders` VALUES (10499,'LILAS',4,"4/8/1997 12:00:00 AM","5/6/1997 12:00:00 AM","4/16/1997 12:00:00 AM",2,102.02,'LILA-Supermercado','Carrera 52 con Ave. Bol?var #65-98 Llano Largo','Barquisimeto','Lara','3508','Venezuela');
INSERT INTO `Orders` VALUES (10500,'LAMAI',6,"4/9/1997 12:00:00 AM","5/7/1997 12:00:00 AM","4/17/1997 12:00:00 AM",1,42.68,'La maison d''Asie','1 rue Alsace-Lorraine','Toulouse',NULL,'31000','France');
INSERT INTO `Orders` VALUES (10501,'BLAUS',9,"4/9/1997 12:00:00 AM","5/7/1997 12:00:00 AM","4/16/1997 12:00:00 AM",3,8.85,'Blauer See Delikatessen','Forsterstr. 57','Mannheim',NULL,'68306','Germany');
INSERT INTO `Orders` VALUES (10502,'PERIC',2,"4/10/1997 12:00:00 AM","5/8/1997 12:00:00 AM","4/29/1997 12:00:00 AM",1,69.32,'Pericles Comidas cl?sicas','Calle Dr. Jorge Cash 321','M?xico D.F.',NULL,'05033','Mexico');
INSERT INTO `Orders` VALUES (10503,'HUNGO',6,"4/11/1997 12:00:00 AM","5/9/1997 12:00:00 AM","4/16/1997 12:00:00 AM",2,16.74,'Hungry Owl All-Night Grocers','8 Johnstown Road','Cork','Co. Cork',NULL,'Ireland');
INSERT INTO `Orders` VALUES (10504,'WHITC',4,"4/11/1997 12:00:00 AM","5/9/1997 12:00:00 AM","4/18/1997 12:00:00 AM",3,59.13,'White Clover Markets','1029 - 12th Ave. S.','Seattle','WA','98124','USA');
INSERT INTO `Orders` VALUES (10505,'MEREP',3,"4/14/1997 12:00:00 AM","5/12/1997 12:00:00 AM","4/21/1997 12:00:00 AM",3,7.13,'M?re Paillarde','43 rue St. Laurent','Montr?al','Qu?bec','H1J 1C3','Canada');
INSERT INTO `Orders` VALUES (10506,'KOENE',9,"4/15/1997 12:00:00 AM","5/13/1997 12:00:00 AM","5/2/1997 12:00:00 AM",2,21.19,'K?niglich Essen','Maubelstr. 90','Brandenburg',NULL,'14776','Germany');
INSERT INTO `Orders` VALUES (10507,'ANTON',7,"4/15/1997 12:00:00 AM","5/13/1997 12:00:00 AM","4/22/1997 12:00:00 AM",1,47.45,'Antonio Moreno Taquer?a','Mataderos  2312','M?xico D.F.',NULL,'05023','Mexico');
INSERT INTO `Orders` VALUES (10508,'OTTIK',1,"4/16/1997 12:00:00 AM","5/14/1997 12:00:00 AM","5/13/1997 12:00:00 AM",2,4.99,'Ottilies K?seladen','Mehrheimerstr. 369','K?ln',NULL,'50739','Germany');
INSERT INTO `Orders` VALUES (10509,'BLAUS',4,"4/17/1997 12:00:00 AM","5/15/1997 12:00:00 AM","4/29/1997 12:00:00 AM",1,0.15,'Blauer See Delikatessen','Forsterstr. 57','Mannheim',NULL,'68306','Germany');
INSERT INTO `Orders` VALUES (10510,'SAVEA',6,"4/18/1997 12:00:00 AM","5/16/1997 12:00:00 AM","4/28/1997 12:00:00 AM",3,367.63,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA');
INSERT INTO `Orders` VALUES (10511,'BONAP',4,"4/18/1997 12:00:00 AM","5/16/1997 12:00:00 AM","4/21/1997 12:00:00 AM",3,350.64,'Bon app''','12, rue des Bouchers','Marseille',NULL,'13008','France');
INSERT INTO `Orders` VALUES (10512,'FAMIA',7,"4/21/1997 12:00:00 AM","5/19/1997 12:00:00 AM","4/24/1997 12:00:00 AM",2,3.53,'Familia Arquibaldo','Rua Or?s, 92','Sao Paulo','SP','05442-030','Brazil');
INSERT INTO `Orders` VALUES (10513,'WANDK',7,"4/22/1997 12:00:00 AM","6/3/1997 12:00:00 AM","4/28/1997 12:00:00 AM",1,105.65,'Die Wandernde Kuh','Adenauerallee 900','Stuttgart',NULL,'70563','Germany');
INSERT INTO `Orders` VALUES (10514,'ERNSH',3,"4/22/1997 12:00:00 AM","5/20/1997 12:00:00 AM","5/16/1997 12:00:00 AM",2,789.95,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria');
INSERT INTO `Orders` VALUES (10515,'QUICK',2,"4/23/1997 12:00:00 AM","5/7/1997 12:00:00 AM","5/23/1997 12:00:00 AM",1,204.47,'QUICK-Stop','Taucherstra?e 10','Cunewalde',NULL,'01307','Germany');
INSERT INTO `Orders` VALUES (10516,'HUNGO',2,"4/24/1997 12:00:00 AM","5/22/1997 12:00:00 AM","5/1/1997 12:00:00 AM",3,62.78,'Hungry Owl All-Night Grocers','8 Johnstown Road','Cork','Co. Cork',NULL,'Ireland');
INSERT INTO `Orders` VALUES (10517,'NORTS',3,"4/24/1997 12:00:00 AM","5/22/1997 12:00:00 AM","4/29/1997 12:00:00 AM",3,32.07,'North/South','South House 300 Queensbridge','London',NULL,'SW7 1RZ','UK');
INSERT INTO `Orders` VALUES (10518,'TORTU',4,"4/25/1997 12:00:00 AM","5/9/1997 12:00:00 AM","5/5/1997 12:00:00 AM",2,218.15,'Tortuga Restaurante','Avda. Azteca 123','M?xico D.F.',NULL,'05033','Mexico');
INSERT INTO `Orders` VALUES (10519,'CHOPS',6,"4/28/1997 12:00:00 AM","5/26/1997 12:00:00 AM","5/1/1997 12:00:00 AM",3,91.76,'Chop-suey Chinese','Hauptstr. 31','Bern',NULL,'3012','Switzerland');
INSERT INTO `Orders` VALUES (10520,'SANTG',7,"4/29/1997 12:00:00 AM","5/27/1997 12:00:00 AM","5/1/1997 12:00:00 AM",1,13.37,'Sant? Gourmet','Erling Skakkes gate 78','Stavern',NULL,'4110','Norway');
INSERT INTO `Orders` VALUES (10521,'CACTU',8,"4/29/1997 12:00:00 AM","5/27/1997 12:00:00 AM","5/2/1997 12:00:00 AM",2,17.22,'Cactus Comidas para llevar','Cerrito 333','Buenos Aires',NULL,'1010','Argentina');
INSERT INTO `Orders` VALUES (10522,'LEHMS',4,"4/30/1997 12:00:00 AM","5/28/1997 12:00:00 AM","5/6/1997 12:00:00 AM",1,45.33,'Lehmanns Marktstand','Magazinweg 7','Frankfurt a.M.',NULL,'60528','Germany');
INSERT INTO `Orders` VALUES (10523,'SEVES',7,"5/1/1997 12:00:00 AM","5/29/1997 12:00:00 AM","5/30/1997 12:00:00 AM",2,77.63,'Seven Seas Imports','90 Wadhurst Rd.','London',NULL,'OX15 4NB','UK');
INSERT INTO `Orders` VALUES (10524,'BERGS',1,"5/1/1997 12:00:00 AM","5/29/1997 12:00:00 AM","5/7/1997 12:00:00 AM",2,244.79,'Berglunds snabbk?p','Berguvsv?gen  8','Lule?',NULL,'S-958 22','Sweden');
INSERT INTO `Orders` VALUES (10525,'BONAP',1,"5/2/1997 12:00:00 AM","5/30/1997 12:00:00 AM","5/23/1997 12:00:00 AM",2,11.06,'Bon app''','12, rue des Bouchers','Marseille',NULL,'13008','France');
INSERT INTO `Orders` VALUES (10526,'WARTH',4,"5/5/1997 12:00:00 AM","6/2/1997 12:00:00 AM","5/15/1997 12:00:00 AM",2,58.59,'Wartian Herkku','Torikatu 38','Oulu',NULL,'90110','Finland');
INSERT INTO `Orders` VALUES (10527,'QUICK',7,"5/5/1997 12:00:00 AM","6/2/1997 12:00:00 AM","5/7/1997 12:00:00 AM",1,41.9,'QUICK-Stop','Taucherstra?e 10','Cunewalde',NULL,'01307','Germany');
INSERT INTO `Orders` VALUES (10528,'GREAL',6,"5/6/1997 12:00:00 AM","5/20/1997 12:00:00 AM","5/9/1997 12:00:00 AM",2,3.35,'Great Lakes Food Market','2732 Baker Blvd.','Eugene','OR','97403','USA');
INSERT INTO `Orders` VALUES (10529,'MAISD',5,"5/7/1997 12:00:00 AM","6/4/1997 12:00:00 AM","5/9/1997 12:00:00 AM",2,66.69,'Maison Dewey','Rue Joseph-Bens 532','Bruxelles',NULL,'B-1180','Belgium');
INSERT INTO `Orders` VALUES (10530,'PICCO',3,"5/8/1997 12:00:00 AM","6/5/1997 12:00:00 AM","5/12/1997 12:00:00 AM",2,339.22,'Piccolo und mehr','Geislweg 14','Salzburg',NULL,'5020','Austria');
INSERT INTO `Orders` VALUES (10531,'OCEAN',7,"5/8/1997 12:00:00 AM","6/5/1997 12:00:00 AM","5/19/1997 12:00:00 AM",1,8.12,'Oc?ano Atl?ntico Ltda.','Ing. Gustavo Moncada 8585 Piso 20-A','Buenos Aires',NULL,'1010','Argentina');
INSERT INTO `Orders` VALUES (10532,'EASTC',7,"5/9/1997 12:00:00 AM","6/6/1997 12:00:00 AM","5/12/1997 12:00:00 AM",3,74.46,'Eastern Connection','35 King George','London',NULL,'WX3 6FW','UK');
INSERT INTO `Orders` VALUES (10533,'FOLKO',8,"5/12/1997 12:00:00 AM","6/9/1997 12:00:00 AM","5/22/1997 12:00:00 AM",1,188.04,'Folk och f? HB','?kergatan 24','Br?cke',NULL,'S-844 67','Sweden');
INSERT INTO `Orders` VALUES (10534,'LEHMS',8,"5/12/1997 12:00:00 AM","6/9/1997 12:00:00 AM","5/14/1997 12:00:00 AM",2,27.94,'Lehmanns Marktstand','Magazinweg 7','Frankfurt a.M.',NULL,'60528','Germany');
INSERT INTO `Orders` VALUES (10535,'ANTON',4,"5/13/1997 12:00:00 AM","6/10/1997 12:00:00 AM","5/21/1997 12:00:00 AM",1,15.64,'Antonio Moreno Taquer?a','Mataderos  2312','M?xico D.F.',NULL,'05023','Mexico');
INSERT INTO `Orders` VALUES (10536,'LEHMS',3,"5/14/1997 12:00:00 AM","6/11/1997 12:00:00 AM","6/6/1997 12:00:00 AM",2,58.88,'Lehmanns Marktstand','Magazinweg 7','Frankfurt a.M.',NULL,'60528','Germany');
INSERT INTO `Orders` VALUES (10537,'RICSU',1,"5/14/1997 12:00:00 AM","5/28/1997 12:00:00 AM","5/19/1997 12:00:00 AM",1,78.85,'Richter Supermarkt','Starenweg 5','Gen?ve',NULL,'1204','Switzerland');
INSERT INTO `Orders` VALUES (10538,'BSBEV',9,"5/15/1997 12:00:00 AM","6/12/1997 12:00:00 AM","5/16/1997 12:00:00 AM",3,4.87,'B''s Beverages','Fauntleroy Circus','London',NULL,'EC2 5NT','UK');
INSERT INTO `Orders` VALUES (10539,'BSBEV',6,"5/16/1997 12:00:00 AM","6/13/1997 12:00:00 AM","5/23/1997 12:00:00 AM",3,12.36,'B''s Beverages','Fauntleroy Circus','London',NULL,'EC2 5NT','UK');
INSERT INTO `Orders` VALUES (10540,'QUICK',3,"5/19/1997 12:00:00 AM","6/16/1997 12:00:00 AM","6/13/1997 12:00:00 AM",3,1007.64,'QUICK-Stop','Taucherstra?e 10','Cunewalde',NULL,'01307','Germany');
INSERT INTO `Orders` VALUES (10541,'HANAR',2,"5/19/1997 12:00:00 AM","6/16/1997 12:00:00 AM","5/29/1997 12:00:00 AM",1,68.65,'Hanari Carnes','Rua do Pa?o, 67','Rio de Janeiro','RJ','05454-876','Brazil');
INSERT INTO `Orders` VALUES (10542,'KOENE',1,"5/20/1997 12:00:00 AM","6/17/1997 12:00:00 AM","5/26/1997 12:00:00 AM",3,10.95,'K?niglich Essen','Maubelstr. 90','Brandenburg',NULL,'14776','Germany');
INSERT INTO `Orders` VALUES (10543,'LILAS',8,"5/21/1997 12:00:00 AM","6/18/1997 12:00:00 AM","5/23/1997 12:00:00 AM",2,48.17,'LILA-Supermercado','Carrera 52 con Ave. Bol?var #65-98 Llano Largo','Barquisimeto','Lara','3508','Venezuela');
INSERT INTO `Orders` VALUES (10544,'LONEP',4,"5/21/1997 12:00:00 AM","6/18/1997 12:00:00 AM","5/30/1997 12:00:00 AM",1,24.91,'Lonesome Pine Restaurant','89 Chiaroscuro Rd.','Portland','OR','97219','USA');
INSERT INTO `Orders` VALUES (10545,'LAZYK',8,"5/22/1997 12:00:00 AM","6/19/1997 12:00:00 AM","6/26/1997 12:00:00 AM",2,11.92,'Lazy K Kountry Store','12 Orchestra Terrace','Walla Walla','WA','99362','USA');
INSERT INTO `Orders` VALUES (10546,'VICTE',1,"5/23/1997 12:00:00 AM","6/20/1997 12:00:00 AM","5/27/1997 12:00:00 AM",3,194.72,'Victuailles en stock','2, rue du Commerce','Lyon',NULL,'69004','France');
INSERT INTO `Orders` VALUES (10547,'SEVES',3,"5/23/1997 12:00:00 AM","6/20/1997 12:00:00 AM","6/2/1997 12:00:00 AM",2,178.43,'Seven Seas Imports','90 Wadhurst Rd.','London',NULL,'OX15 4NB','UK');
INSERT INTO `Orders` VALUES (10548,'TOMSP',3,"5/26/1997 12:00:00 AM","6/23/1997 12:00:00 AM","6/2/1997 12:00:00 AM",2,1.43,'Toms Spezialit?ten','Luisenstr. 48','M?nster',NULL,'44087','Germany');
INSERT INTO `Orders` VALUES (10549,'QUICK',5,"5/27/1997 12:00:00 AM","6/10/1997 12:00:00 AM","5/30/1997 12:00:00 AM",1,171.24,'QUICK-Stop','Taucherstra?e 10','Cunewalde',NULL,'01307','Germany');
INSERT INTO `Orders` VALUES (10550,'GODOS',7,"5/28/1997 12:00:00 AM","6/25/1997 12:00:00 AM","6/6/1997 12:00:00 AM",3,4.32,'Godos Cocina T?pica','C/ Romero, 33','Sevilla',NULL,'41101','Spain');
INSERT INTO `Orders` VALUES (10551,'FURIB',4,"5/28/1997 12:00:00 AM","7/9/1997 12:00:00 AM","6/6/1997 12:00:00 AM",3,72.95,'Furia Bacalhau e Frutos do Mar','Jardim das rosas n. 32','Lisboa',NULL,'1675','Portugal');
INSERT INTO `Orders` VALUES (10552,'HILAA',2,"5/29/1997 12:00:00 AM","6/26/1997 12:00:00 AM","6/5/1997 12:00:00 AM",1,83.22,'HILARION-Abastos','Carrera 22 con Ave. Carlos Soublette #8-35','San Crist?bal','T?chira','5022','Venezuela');
INSERT INTO `Orders` VALUES (10553,'WARTH',2,"5/30/1997 12:00:00 AM","6/27/1997 12:00:00 AM","6/3/1997 12:00:00 AM",2,149.49,'Wartian Herkku','Torikatu 38','Oulu',NULL,'90110','Finland');
INSERT INTO `Orders` VALUES (10554,'OTTIK',4,"5/30/1997 12:00:00 AM","6/27/1997 12:00:00 AM","6/5/1997 12:00:00 AM",3,120.97,'Ottilies K?seladen','Mehrheimerstr. 369','K?ln',NULL,'50739','Germany');
INSERT INTO `Orders` VALUES (10555,'SAVEA',6,"6/2/1997 12:00:00 AM","6/30/1997 12:00:00 AM","6/4/1997 12:00:00 AM",3,252.49,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA');
INSERT INTO `Orders` VALUES (10556,'SIMOB',2,"6/3/1997 12:00:00 AM","7/15/1997 12:00:00 AM","6/13/1997 12:00:00 AM",1,9.8,'Simons bistro','Vinb?ltet 34','Kobenhavn',NULL,'1734','Denmark');
INSERT INTO `Orders` VALUES (10557,'LEHMS',9,"6/3/1997 12:00:00 AM","6/17/1997 12:00:00 AM","6/6/1997 12:00:00 AM",2,96.72,'Lehmanns Marktstand','Magazinweg 7','Frankfurt a.M.',NULL,'60528','Germany');
INSERT INTO `Orders` VALUES (10558,'AROUT',1,"6/4/1997 12:00:00 AM","7/2/1997 12:00:00 AM","6/10/1997 12:00:00 AM",2,72.97,'Around the Horn','Brook Farm Stratford St. Mary','Colchester','Essex','CO7 6JX','UK');
INSERT INTO `Orders` VALUES (10559,'BLONP',6,"6/5/1997 12:00:00 AM","7/3/1997 12:00:00 AM","6/13/1997 12:00:00 AM",1,8.05,'Blondel p?re et fils','24, place Kl?ber','Strasbourg',NULL,'67000','France');
INSERT INTO `Orders` VALUES (10560,'FRANK',8,"6/6/1997 12:00:00 AM","7/4/1997 12:00:00 AM","6/9/1997 12:00:00 AM",1,36.65,'Frankenversand','Berliner Platz 43','M?nchen',NULL,'80805','Germany');
INSERT INTO `Orders` VALUES (10561,'FOLKO',2,"6/6/1997 12:00:00 AM","7/4/1997 12:00:00 AM","6/9/1997 12:00:00 AM",2,242.21,'Folk och f? HB','?kergatan 24','Br?cke',NULL,'S-844 67','Sweden');
INSERT INTO `Orders` VALUES (10562,'REGGC',1,"6/9/1997 12:00:00 AM","7/7/1997 12:00:00 AM","6/12/1997 12:00:00 AM",1,22.95,'Reggiani Caseifici','Strada Provinciale 124','Reggio Emilia',NULL,'42100','Italy');
INSERT INTO `Orders` VALUES (10563,'RICAR',2,"6/10/1997 12:00:00 AM","7/22/1997 12:00:00 AM","6/24/1997 12:00:00 AM",2,60.43,'Ricardo Adocicados','Av. Copacabana, 267','Rio de Janeiro','RJ','02389-890','Brazil');
INSERT INTO `Orders` VALUES (10564,'RATTC',4,"6/10/1997 12:00:00 AM","7/8/1997 12:00:00 AM","6/16/1997 12:00:00 AM",3,13.75,'Rattlesnake Canyon Grocery','2817 Milton Dr.','Albuquerque','NM','87110','USA');
INSERT INTO `Orders` VALUES (10565,'MEREP',8,"6/11/1997 12:00:00 AM","7/9/1997 12:00:00 AM","6/18/1997 12:00:00 AM",2,7.15,'M?re Paillarde','43 rue St. Laurent','Montr?al','Qu?bec','H1J 1C3','Canada');
INSERT INTO `Orders` VALUES (10566,'BLONP',9,"6/12/1997 12:00:00 AM","7/10/1997 12:00:00 AM","6/18/1997 12:00:00 AM",1,88.4,'Blondel p?re et fils','24, place Kl?ber','Strasbourg',NULL,'67000','France');
INSERT INTO `Orders` VALUES (10567,'HUNGO',1,"6/12/1997 12:00:00 AM","7/10/1997 12:00:00 AM","6/17/1997 12:00:00 AM",1,33.97,'Hungry Owl All-Night Grocers','8 Johnstown Road','Cork','Co. Cork',NULL,'Ireland');
INSERT INTO `Orders` VALUES (10568,'GALED',3,"6/13/1997 12:00:00 AM","7/11/1997 12:00:00 AM","7/9/1997 12:00:00 AM",3,6.54,'Galer?a del gastron?mo','Rambla de Catalu?a, 23','Barcelona',NULL,'8022','Spain');
INSERT INTO `Orders` VALUES (10569,'RATTC',5,"6/16/1997 12:00:00 AM","7/14/1997 12:00:00 AM","7/11/1997 12:00:00 AM",1,58.98,'Rattlesnake Canyon Grocery','2817 Milton Dr.','Albuquerque','NM','87110','USA');
INSERT INTO `Orders` VALUES (10570,'MEREP',3,"6/17/1997 12:00:00 AM","7/15/1997 12:00:00 AM","6/19/1997 12:00:00 AM",3,188.99,'M?re Paillarde','43 rue St. Laurent','Montr?al','Qu?bec','H1J 1C3','Canada');
INSERT INTO `Orders` VALUES (10571,'ERNSH',8,"6/17/1997 12:00:00 AM","7/29/1997 12:00:00 AM","7/4/1997 12:00:00 AM",3,26.06,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria');
INSERT INTO `Orders` VALUES (10572,'BERGS',3,"6/18/1997 12:00:00 AM","7/16/1997 12:00:00 AM","6/25/1997 12:00:00 AM",2,116.43,'Berglunds snabbk?p','Berguvsv?gen  8','Lule?',NULL,'S-958 22','Sweden');
INSERT INTO `Orders` VALUES (10573,'ANTON',7,"6/19/1997 12:00:00 AM","7/17/1997 12:00:00 AM","6/20/1997 12:00:00 AM",3,84.84,'Antonio Moreno Taquer?a','Mataderos  2312','M?xico D.F.',NULL,'05023','Mexico');
INSERT INTO `Orders` VALUES (10574,'TRAIH',4,"6/19/1997 12:00:00 AM","7/17/1997 12:00:00 AM","6/30/1997 12:00:00 AM",2,37.6,'Trail''s Head Gourmet Provisioners','722 DaVinci Blvd.','Kirkland','WA','98034','USA');
INSERT INTO `Orders` VALUES (10575,'MORGK',5,"6/20/1997 12:00:00 AM","7/4/1997 12:00:00 AM","6/30/1997 12:00:00 AM",1,127.34,'Morgenstern Gesundkost','Heerstr. 22','Leipzig',NULL,'04179','Germany');
INSERT INTO `Orders` VALUES (10576,'TORTU',3,"6/23/1997 12:00:00 AM","7/7/1997 12:00:00 AM","6/30/1997 12:00:00 AM",3,18.56,'Tortuga Restaurante','Avda. Azteca 123','M?xico D.F.',NULL,'05033','Mexico');
INSERT INTO `Orders` VALUES (10577,'TRAIH',9,"6/23/1997 12:00:00 AM","8/4/1997 12:00:00 AM","6/30/1997 12:00:00 AM",2,25.41,'Trail''s Head Gourmet Provisioners','722 DaVinci Blvd.','Kirkland','WA','98034','USA');
INSERT INTO `Orders` VALUES (10578,'BSBEV',4,"6/24/1997 12:00:00 AM","7/22/1997 12:00:00 AM","7/25/1997 12:00:00 AM",3,29.6,'B''s Beverages','Fauntleroy Circus','London',NULL,'EC2 5NT','UK');
INSERT INTO `Orders` VALUES (10579,'LETSS',1,"6/25/1997 12:00:00 AM","7/23/1997 12:00:00 AM","7/4/1997 12:00:00 AM",2,13.73,'Let''s Stop N Shop','87 Polk St. Suite 5','San Francisco','CA','94117','USA');
INSERT INTO `Orders` VALUES (10580,'OTTIK',4,"6/26/1997 12:00:00 AM","7/24/1997 12:00:00 AM","7/1/1997 12:00:00 AM",3,75.89,'Ottilies K?seladen','Mehrheimerstr. 369','K?ln',NULL,'50739','Germany');
INSERT INTO `Orders` VALUES (10581,'FAMIA',3,"6/26/1997 12:00:00 AM","7/24/1997 12:00:00 AM","7/2/1997 12:00:00 AM",1,3.01,'Familia Arquibaldo','Rua Or?s, 92','Sao Paulo','SP','05442-030','Brazil');
INSERT INTO `Orders` VALUES (10582,'BLAUS',3,"6/27/1997 12:00:00 AM","7/25/1997 12:00:00 AM","7/14/1997 12:00:00 AM",2,27.71,'Blauer See Delikatessen','Forsterstr. 57','Mannheim',NULL,'68306','Germany');
INSERT INTO `Orders` VALUES (10583,'WARTH',2,"6/30/1997 12:00:00 AM","7/28/1997 12:00:00 AM","7/4/1997 12:00:00 AM",2,7.28,'Wartian Herkku','Torikatu 38','Oulu',NULL,'90110','Finland');
INSERT INTO `Orders` VALUES (10584,'BLONP',4,"6/30/1997 12:00:00 AM","7/28/1997 12:00:00 AM","7/4/1997 12:00:00 AM",1,59.14,'Blondel p?re et fils','24, place Kl?ber','Strasbourg',NULL,'67000','France');
INSERT INTO `Orders` VALUES (10585,'WELLI',7,"7/1/1997 12:00:00 AM","7/29/1997 12:00:00 AM","7/10/1997 12:00:00 AM",1,13.41,'Wellington Importadora','Rua do Mercado, 12','Resende','SP','08737-363','Brazil');
INSERT INTO `Orders` VALUES (10586,'REGGC',9,"7/2/1997 12:00:00 AM","7/30/1997 12:00:00 AM","7/9/1997 12:00:00 AM",1,0.48,'Reggiani Caseifici','Strada Provinciale 124','Reggio Emilia',NULL,'42100','Italy');
INSERT INTO `Orders` VALUES (10587,'QUEDE',1,"7/2/1997 12:00:00 AM","7/30/1997 12:00:00 AM","7/9/1997 12:00:00 AM",1,62.52,'Que Del?cia','Rua da Panificadora, 12','Rio de Janeiro','RJ','02389-673','Brazil');
INSERT INTO `Orders` VALUES (10588,'QUICK',2,"7/3/1997 12:00:00 AM","7/31/1997 12:00:00 AM","7/10/1997 12:00:00 AM",3,194.67,'QUICK-Stop','Taucherstra?e 10','Cunewalde',NULL,'01307','Germany');
INSERT INTO `Orders` VALUES (10589,'GREAL',8,"7/4/1997 12:00:00 AM","8/1/1997 12:00:00 AM","7/14/1997 12:00:00 AM",2,4.42,'Great Lakes Food Market','2732 Baker Blvd.','Eugene','OR','97403','USA');
INSERT INTO `Orders` VALUES (10590,'MEREP',4,"7/7/1997 12:00:00 AM","8/4/1997 12:00:00 AM","7/14/1997 12:00:00 AM",3,44.77,'M?re Paillarde','43 rue St. Laurent','Montr?al','Qu?bec','H1J 1C3','Canada');
INSERT INTO `Orders` VALUES (10591,'VAFFE',1,"7/7/1997 12:00:00 AM","7/21/1997 12:00:00 AM","7/16/1997 12:00:00 AM",1,55.92,'Vaffeljernet','Smagsloget 45','?rhus',NULL,'8200','Denmark');
INSERT INTO `Orders` VALUES (10592,'LEHMS',3,"7/8/1997 12:00:00 AM","8/5/1997 12:00:00 AM","7/16/1997 12:00:00 AM",1,32.1,'Lehmanns Marktstand','Magazinweg 7','Frankfurt a.M.',NULL,'60528','Germany');
INSERT INTO `Orders` VALUES (10593,'LEHMS',7,"7/9/1997 12:00:00 AM","8/6/1997 12:00:00 AM","8/13/1997 12:00:00 AM",2,174.2,'Lehmanns Marktstand','Magazinweg 7','Frankfurt a.M.',NULL,'60528','Germany');
INSERT INTO `Orders` VALUES (10594,'OLDWO',3,"7/9/1997 12:00:00 AM","8/6/1997 12:00:00 AM","7/16/1997 12:00:00 AM",2,5.24,'Old World Delicatessen','2743 Bering St.','Anchorage','AK','99508','USA');
INSERT INTO `Orders` VALUES (10595,'ERNSH',2,"7/10/1997 12:00:00 AM","8/7/1997 12:00:00 AM","7/14/1997 12:00:00 AM",1,96.78,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria');
INSERT INTO `Orders` VALUES (10596,'WHITC',8,"7/11/1997 12:00:00 AM","8/8/1997 12:00:00 AM","8/12/1997 12:00:00 AM",1,16.34,'White Clover Markets','1029 - 12th Ave. S.','Seattle','WA','98124','USA');
INSERT INTO `Orders` VALUES (10597,'PICCO',7,"7/11/1997 12:00:00 AM","8/8/1997 12:00:00 AM","7/18/1997 12:00:00 AM",3,35.12,'Piccolo und mehr','Geislweg 14','Salzburg',NULL,'5020','Austria');
INSERT INTO `Orders` VALUES (10598,'RATTC',1,"7/14/1997 12:00:00 AM","8/11/1997 12:00:00 AM","7/18/1997 12:00:00 AM",3,44.42,'Rattlesnake Canyon Grocery','2817 Milton Dr.','Albuquerque','NM','87110','USA');
INSERT INTO `Orders` VALUES (10599,'BSBEV',6,"7/15/1997 12:00:00 AM","8/26/1997 12:00:00 AM","7/21/1997 12:00:00 AM",3,29.98,'B''s Beverages','Fauntleroy Circus','London',NULL,'EC2 5NT','UK');
INSERT INTO `Orders` VALUES (10600,'HUNGC',4,"7/16/1997 12:00:00 AM","8/13/1997 12:00:00 AM","7/21/1997 12:00:00 AM",1,45.13,'Hungry Coyote Import Store','City Center Plaza 516 Main St.','Elgin','OR','97827','USA');
INSERT INTO `Orders` VALUES (10601,'HILAA',7,"7/16/1997 12:00:00 AM","8/27/1997 12:00:00 AM","7/22/1997 12:00:00 AM",1,58.3,'HILARION-Abastos','Carrera 22 con Ave. Carlos Soublette #8-35','San Crist?bal','T?chira','5022','Venezuela');
INSERT INTO `Orders` VALUES (10602,'VAFFE',8,"7/17/1997 12:00:00 AM","8/14/1997 12:00:00 AM","7/22/1997 12:00:00 AM",2,2.92,'Vaffeljernet','Smagsloget 45','?rhus',NULL,'8200','Denmark');
INSERT INTO `Orders` VALUES (10603,'SAVEA',8,"7/18/1997 12:00:00 AM","8/15/1997 12:00:00 AM","8/8/1997 12:00:00 AM",2,48.77,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA');
INSERT INTO `Orders` VALUES (10604,'FURIB',1,"7/18/1997 12:00:00 AM","8/15/1997 12:00:00 AM","7/29/1997 12:00:00 AM",1,7.46,'Furia Bacalhau e Frutos do Mar','Jardim das rosas n. 32','Lisboa',NULL,'1675','Portugal');
INSERT INTO `Orders` VALUES (10605,'MEREP',1,"7/21/1997 12:00:00 AM","8/18/1997 12:00:00 AM","7/29/1997 12:00:00 AM",2,379.13,'M?re Paillarde','43 rue St. Laurent','Montr?al','Qu?bec','H1J 1C3','Canada');
INSERT INTO `Orders` VALUES (10606,'TRADH',4,"7/22/1997 12:00:00 AM","8/19/1997 12:00:00 AM","7/31/1997 12:00:00 AM",3,79.4,'Tradi?ao Hipermercados','Av. In?s de Castro, 414','Sao Paulo','SP','05634-030','Brazil');
INSERT INTO `Orders` VALUES (10607,'SAVEA',5,"7/22/1997 12:00:00 AM","8/19/1997 12:00:00 AM","7/25/1997 12:00:00 AM",1,200.24,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA');
INSERT INTO `Orders` VALUES (10608,'TOMSP',4,"7/23/1997 12:00:00 AM","8/20/1997 12:00:00 AM","8/1/1997 12:00:00 AM",2,27.79,'Toms Spezialit?ten','Luisenstr. 48','M?nster',NULL,'44087','Germany');
INSERT INTO `Orders` VALUES (10609,'DUMON',7,"7/24/1997 12:00:00 AM","8/21/1997 12:00:00 AM","7/30/1997 12:00:00 AM",2,1.85,'Du monde entier','67, rue des Cinquante Otages','Nantes',NULL,'44000','France');
INSERT INTO `Orders` VALUES (10610,'LAMAI',8,"7/25/1997 12:00:00 AM","8/22/1997 12:00:00 AM","8/6/1997 12:00:00 AM",1,26.78,'La maison d''Asie','1 rue Alsace-Lorraine','Toulouse',NULL,'31000','France');
INSERT INTO `Orders` VALUES (10611,'WOLZA',6,"7/25/1997 12:00:00 AM","8/22/1997 12:00:00 AM","8/1/1997 12:00:00 AM",2,80.65,'Wolski Zajazd','ul. Filtrowa 68','Warszawa',NULL,'01-012','Poland');
INSERT INTO `Orders` VALUES (10612,'SAVEA',1,"7/28/1997 12:00:00 AM","8/25/1997 12:00:00 AM","8/1/1997 12:00:00 AM",2,544.08,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA');
INSERT INTO `Orders` VALUES (10613,'HILAA',4,"7/29/1997 12:00:00 AM","8/26/1997 12:00:00 AM","8/1/1997 12:00:00 AM",2,8.11,'HILARION-Abastos','Carrera 22 con Ave. Carlos Soublette #8-35','San Crist?bal','T?chira','5022','Venezuela');
INSERT INTO `Orders` VALUES (10614,'BLAUS',8,"7/29/1997 12:00:00 AM","8/26/1997 12:00:00 AM","8/1/1997 12:00:00 AM",3,1.93,'Blauer See Delikatessen','Forsterstr. 57','Mannheim',NULL,'68306','Germany');
INSERT INTO `Orders` VALUES (10615,'WILMK',2,"7/30/1997 12:00:00 AM","8/27/1997 12:00:00 AM","8/6/1997 12:00:00 AM",3,0.75,'Wilman Kala','Keskuskatu 45','Helsinki',NULL,'21240','Finland');
INSERT INTO `Orders` VALUES (10616,'GREAL',1,"7/31/1997 12:00:00 AM","8/28/1997 12:00:00 AM","8/5/1997 12:00:00 AM",2,116.53,'Great Lakes Food Market','2732 Baker Blvd.','Eugene','OR','97403','USA');
INSERT INTO `Orders` VALUES (10617,'GREAL',4,"7/31/1997 12:00:00 AM","8/28/1997 12:00:00 AM","8/4/1997 12:00:00 AM",2,18.53,'Great Lakes Food Market','2732 Baker Blvd.','Eugene','OR','97403','USA');
INSERT INTO `Orders` VALUES (10618,'MEREP',1,"8/1/1997 12:00:00 AM","9/12/1997 12:00:00 AM","8/8/1997 12:00:00 AM",1,154.68,'M?re Paillarde','43 rue St. Laurent','Montr?al','Qu?bec','H1J 1C3','Canada');
INSERT INTO `Orders` VALUES (10619,'MEREP',3,"8/4/1997 12:00:00 AM","9/1/1997 12:00:00 AM","8/7/1997 12:00:00 AM",3,91.05,'M?re Paillarde','43 rue St. Laurent','Montr?al','Qu?bec','H1J 1C3','Canada');
INSERT INTO `Orders` VALUES (10620,'LAUGB',2,"8/5/1997 12:00:00 AM","9/2/1997 12:00:00 AM","8/14/1997 12:00:00 AM",3,0.94,'Laughing Bacchus Wine Cellars','2319 Elm St.','Vancouver','BC','V3F 2K1','Canada');
INSERT INTO `Orders` VALUES (10621,'ISLAT',4,"8/5/1997 12:00:00 AM","9/2/1997 12:00:00 AM","8/11/1997 12:00:00 AM",2,23.73,'Island Trading','Garden House Crowther Way','Cowes','Isle of Wight','PO31 7PJ','UK');
INSERT INTO `Orders` VALUES (10622,'RICAR',4,"8/6/1997 12:00:00 AM","9/3/1997 12:00:00 AM","8/11/1997 12:00:00 AM",3,50.97,'Ricardo Adocicados','Av. Copacabana, 267','Rio de Janeiro','RJ','02389-890','Brazil');
INSERT INTO `Orders` VALUES (10623,'FRANK',8,"8/7/1997 12:00:00 AM","9/4/1997 12:00:00 AM","8/12/1997 12:00:00 AM",2,97.18,'Frankenversand','Berliner Platz 43','M?nchen',NULL,'80805','Germany');
INSERT INTO `Orders` VALUES (10624,'THECR',4,"8/7/1997 12:00:00 AM","9/4/1997 12:00:00 AM","8/19/1997 12:00:00 AM",2,94.8,'The Cracker Box','55 Grizzly Peak Rd.','Butte','MT','59801','USA');
INSERT INTO `Orders` VALUES (10625,'ANATR',3,"8/8/1997 12:00:00 AM","9/5/1997 12:00:00 AM","8/14/1997 12:00:00 AM",1,43.9,'Ana Trujillo Emparedados y helados','Avda. de la Constituci?n 2222','M?xico D.F.',NULL,'05021','Mexico');
INSERT INTO `Orders` VALUES (10626,'BERGS',1,"8/11/1997 12:00:00 AM","9/8/1997 12:00:00 AM","8/20/1997 12:00:00 AM",2,138.69,'Berglunds snabbk?p','Berguvsv?gen  8','Lule?',NULL,'S-958 22','Sweden');
INSERT INTO `Orders` VALUES (10627,'SAVEA',8,"8/11/1997 12:00:00 AM","9/22/1997 12:00:00 AM","8/21/1997 12:00:00 AM",3,107.46,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA');
INSERT INTO `Orders` VALUES (10628,'BLONP',4,"8/12/1997 12:00:00 AM","9/9/1997 12:00:00 AM","8/20/1997 12:00:00 AM",3,30.36,'Blondel p?re et fils','24, place Kl?ber','Strasbourg',NULL,'67000','France');
INSERT INTO `Orders` VALUES (10629,'GODOS',4,"8/12/1997 12:00:00 AM","9/9/1997 12:00:00 AM","8/20/1997 12:00:00 AM",3,85.46,'Godos Cocina T?pica','C/ Romero, 33','Sevilla',NULL,'41101','Spain');
INSERT INTO `Orders` VALUES (10630,'KOENE',1,"8/13/1997 12:00:00 AM","9/10/1997 12:00:00 AM","8/19/1997 12:00:00 AM",2,32.35,'K?niglich Essen','Maubelstr. 90','Brandenburg',NULL,'14776','Germany');
INSERT INTO `Orders` VALUES (10631,'LAMAI',8,"8/14/1997 12:00:00 AM","9/11/1997 12:00:00 AM","8/15/1997 12:00:00 AM",1,0.87,'La maison d''Asie','1 rue Alsace-Lorraine','Toulouse',NULL,'31000','France');
INSERT INTO `Orders` VALUES (10632,'WANDK',8,"8/14/1997 12:00:00 AM","9/11/1997 12:00:00 AM","8/19/1997 12:00:00 AM",1,41.38,'Die Wandernde Kuh','Adenauerallee 900','Stuttgart',NULL,'70563','Germany');
INSERT INTO `Orders` VALUES (10633,'ERNSH',7,"8/15/1997 12:00:00 AM","9/12/1997 12:00:00 AM","8/18/1997 12:00:00 AM",3,477.9,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria');
INSERT INTO `Orders` VALUES (10634,'FOLIG',4,"8/15/1997 12:00:00 AM","9/12/1997 12:00:00 AM","8/21/1997 12:00:00 AM",3,487.38,'Folies gourmandes','184, chauss?e de Tournai','Lille',NULL,'59000','France');
INSERT INTO `Orders` VALUES (10635,'MAGAA',8,"8/18/1997 12:00:00 AM","9/15/1997 12:00:00 AM","8/21/1997 12:00:00 AM",3,47.46,'Magazzini Alimentari Riuniti','Via Ludovico il Moro 22','Bergamo',NULL,'24100','Italy');
INSERT INTO `Orders` VALUES (10636,'WARTH',4,"8/19/1997 12:00:00 AM","9/16/1997 12:00:00 AM","8/26/1997 12:00:00 AM",1,1.15,'Wartian Herkku','Torikatu 38','Oulu',NULL,'90110','Finland');
INSERT INTO `Orders` VALUES (10637,'QUEEN',6,"8/19/1997 12:00:00 AM","9/16/1997 12:00:00 AM","8/26/1997 12:00:00 AM",1,201.29,'Queen Cozinha','Alameda dos Can?rios, 891','Sao Paulo','SP','05487-020','Brazil');
INSERT INTO `Orders` VALUES (10638,'LINOD',3,"8/20/1997 12:00:00 AM","9/17/1997 12:00:00 AM","9/1/1997 12:00:00 AM",1,158.44,'LINO-Delicateses','Ave. 5 de Mayo Porlamar','I. de Margarita','Nueva Esparta','4980','Venezuela');
INSERT INTO `Orders` VALUES (10639,'SANTG',7,"8/20/1997 12:00:00 AM","9/17/1997 12:00:00 AM","8/27/1997 12:00:00 AM",3,38.64,'Sant? Gourmet','Erling Skakkes gate 78','Stavern',NULL,'4110','Norway');
INSERT INTO `Orders` VALUES (10640,'WANDK',4,"8/21/1997 12:00:00 AM","9/18/1997 12:00:00 AM","8/28/1997 12:00:00 AM",1,23.55,'Die Wandernde Kuh','Adenauerallee 900','Stuttgart',NULL,'70563','Germany');
INSERT INTO `Orders` VALUES (10641,'HILAA',4,"8/22/1997 12:00:00 AM","9/19/1997 12:00:00 AM","8/26/1997 12:00:00 AM",2,179.61,'HILARION-Abastos','Carrera 22 con Ave. Carlos Soublette #8-35','San Crist?bal','T?chira','5022','Venezuela');
INSERT INTO `Orders` VALUES (10642,'SIMOB',7,"8/22/1997 12:00:00 AM","9/19/1997 12:00:00 AM","9/5/1997 12:00:00 AM",3,41.89,'Simons bistro','Vinb?ltet 34','Kobenhavn',NULL,'1734','Denmark');
INSERT INTO `Orders` VALUES (10643,'ALFKI',6,"8/25/1997 12:00:00 AM","9/22/1997 12:00:00 AM","9/2/1997 12:00:00 AM",1,29.46,'Alfreds Futterkiste','Obere Str. 57','Berlin',NULL,'12209','Germany');
INSERT INTO `Orders` VALUES (10644,'WELLI',3,"8/25/1997 12:00:00 AM","9/22/1997 12:00:00 AM","9/1/1997 12:00:00 AM",2,0.14,'Wellington Importadora','Rua do Mercado, 12','Resende','SP','08737-363','Brazil');
INSERT INTO `Orders` VALUES (10645,'HANAR',4,"8/26/1997 12:00:00 AM","9/23/1997 12:00:00 AM","9/2/1997 12:00:00 AM",1,12.41,'Hanari Carnes','Rua do Pa?o, 67','Rio de Janeiro','RJ','05454-876','Brazil');
INSERT INTO `Orders` VALUES (10646,'HUNGO',9,"8/27/1997 12:00:00 AM","10/8/1997 12:00:00 AM","9/3/1997 12:00:00 AM",3,142.33,'Hungry Owl All-Night Grocers','8 Johnstown Road','Cork','Co. Cork',NULL,'Ireland');
INSERT INTO `Orders` VALUES (10647,'QUEDE',4,"8/27/1997 12:00:00 AM","9/10/1997 12:00:00 AM","9/3/1997 12:00:00 AM",2,45.54,'Que Del?cia','Rua da Panificadora, 12','Rio de Janeiro','RJ','02389-673','Brazil');
INSERT INTO `Orders` VALUES (10648,'RICAR',5,"8/28/1997 12:00:00 AM","10/9/1997 12:00:00 AM","9/9/1997 12:00:00 AM",2,14.25,'Ricardo Adocicados','Av. Copacabana, 267','Rio de Janeiro','RJ','02389-890','Brazil');
INSERT INTO `Orders` VALUES (10649,'MAISD',5,"8/28/1997 12:00:00 AM","9/25/1997 12:00:00 AM","8/29/1997 12:00:00 AM",3,6.2,'Maison Dewey','Rue Joseph-Bens 532','Bruxelles',NULL,'B-1180','Belgium');
INSERT INTO `Orders` VALUES (10650,'FAMIA',5,"8/29/1997 12:00:00 AM","9/26/1997 12:00:00 AM","9/3/1997 12:00:00 AM",3,176.81,'Familia Arquibaldo','Rua Or?s, 92','Sao Paulo','SP','05442-030','Brazil');
INSERT INTO `Orders` VALUES (10651,'WANDK',8,"9/1/1997 12:00:00 AM","9/29/1997 12:00:00 AM","9/11/1997 12:00:00 AM",2,20.6,'Die Wandernde Kuh','Adenauerallee 900','Stuttgart',NULL,'70563','Germany');
INSERT INTO `Orders` VALUES (10652,'GOURL',4,"9/1/1997 12:00:00 AM","9/29/1997 12:00:00 AM","9/8/1997 12:00:00 AM",2,7.14,'Gourmet Lanchonetes','Av. Brasil, 442','Campinas','SP','04876-786','Brazil');
INSERT INTO `Orders` VALUES (10653,'FRANK',1,"9/2/1997 12:00:00 AM","9/30/1997 12:00:00 AM","9/19/1997 12:00:00 AM",1,93.25,'Frankenversand','Berliner Platz 43','M?nchen',NULL,'80805','Germany');
INSERT INTO `Orders` VALUES (10654,'BERGS',5,"9/2/1997 12:00:00 AM","9/30/1997 12:00:00 AM","9/11/1997 12:00:00 AM",1,55.26,'Berglunds snabbk?p','Berguvsv?gen  8','Lule?',NULL,'S-958 22','Sweden');
INSERT INTO `Orders` VALUES (10655,'REGGC',1,"9/3/1997 12:00:00 AM","10/1/1997 12:00:00 AM","9/11/1997 12:00:00 AM",2,4.41,'Reggiani Caseifici','Strada Provinciale 124','Reggio Emilia',NULL,'42100','Italy');
INSERT INTO `Orders` VALUES (10656,'GREAL',6,"9/4/1997 12:00:00 AM","10/2/1997 12:00:00 AM","9/10/1997 12:00:00 AM",1,57.15,'Great Lakes Food Market','2732 Baker Blvd.','Eugene','OR','97403','USA');
INSERT INTO `Orders` VALUES (10657,'SAVEA',2,"9/4/1997 12:00:00 AM","10/2/1997 12:00:00 AM","9/15/1997 12:00:00 AM",2,352.69,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA');
INSERT INTO `Orders` VALUES (10658,'QUICK',4,"9/5/1997 12:00:00 AM","10/3/1997 12:00:00 AM","9/8/1997 12:00:00 AM",1,364.15,'QUICK-Stop','Taucherstra?e 10','Cunewalde',NULL,'01307','Germany');
INSERT INTO `Orders` VALUES (10659,'QUEEN',7,"9/5/1997 12:00:00 AM","10/3/1997 12:00:00 AM","9/10/1997 12:00:00 AM",2,105.81,'Queen Cozinha','Alameda dos Can?rios, 891','Sao Paulo','SP','05487-020','Brazil');
INSERT INTO `Orders` VALUES (10660,'HUNGC',8,"9/8/1997 12:00:00 AM","10/6/1997 12:00:00 AM","10/15/1997 12:00:00 AM",1,111.29,'Hungry Coyote Import Store','City Center Plaza 516 Main St.','Elgin','OR','97827','USA');
INSERT INTO `Orders` VALUES (10661,'HUNGO',7,"9/9/1997 12:00:00 AM","10/7/1997 12:00:00 AM","9/15/1997 12:00:00 AM",3,17.55,'Hungry Owl All-Night Grocers','8 Johnstown Road','Cork','Co. Cork',NULL,'Ireland');
INSERT INTO `Orders` VALUES (10662,'LONEP',3,"9/9/1997 12:00:00 AM","10/7/1997 12:00:00 AM","9/18/1997 12:00:00 AM",2,1.28,'Lonesome Pine Restaurant','89 Chiaroscuro Rd.','Portland','OR','97219','USA');
INSERT INTO `Orders` VALUES (10663,'BONAP',2,"9/10/1997 12:00:00 AM","9/24/1997 12:00:00 AM","10/3/1997 12:00:00 AM",2,113.15,'Bon app''','12, rue des Bouchers','Marseille',NULL,'13008','France');
INSERT INTO `Orders` VALUES (10664,'FURIB',1,"9/10/1997 12:00:00 AM","10/8/1997 12:00:00 AM","9/19/1997 12:00:00 AM",3,1.27,'Furia Bacalhau e Frutos do Mar','Jardim das rosas n. 32','Lisboa',NULL,'1675','Portugal');
INSERT INTO `Orders` VALUES (10665,'LONEP',1,"9/11/1997 12:00:00 AM","10/9/1997 12:00:00 AM","9/17/1997 12:00:00 AM",2,26.31,'Lonesome Pine Restaurant','89 Chiaroscuro Rd.','Portland','OR','97219','USA');
INSERT INTO `Orders` VALUES (10666,'RICSU',7,"9/12/1997 12:00:00 AM","10/10/1997 12:00:00 AM","9/22/1997 12:00:00 AM",2,232.42,'Richter Supermarkt','Starenweg 5','Gen?ve',NULL,'1204','Switzerland');
INSERT INTO `Orders` VALUES (10667,'ERNSH',7,"9/12/1997 12:00:00 AM","10/10/1997 12:00:00 AM","9/19/1997 12:00:00 AM",1,78.09,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria');
INSERT INTO `Orders` VALUES (10668,'WANDK',1,"9/15/1997 12:00:00 AM","10/13/1997 12:00:00 AM","9/23/1997 12:00:00 AM",2,47.22,'Die Wandernde Kuh','Adenauerallee 900','Stuttgart',NULL,'70563','Germany');
INSERT INTO `Orders` VALUES (10669,'SIMOB',2,"9/15/1997 12:00:00 AM","10/13/1997 12:00:00 AM","9/22/1997 12:00:00 AM",1,24.39,'Simons bistro','Vinb?ltet 34','Kobenhavn',NULL,'1734','Denmark');
INSERT INTO `Orders` VALUES (10670,'FRANK',4,"9/16/1997 12:00:00 AM","10/14/1997 12:00:00 AM","9/18/1997 12:00:00 AM",1,203.48,'Frankenversand','Berliner Platz 43','M?nchen',NULL,'80805','Germany');
INSERT INTO `Orders` VALUES (10671,'FRANR',1,"9/17/1997 12:00:00 AM","10/15/1997 12:00:00 AM","9/24/1997 12:00:00 AM",1,30.34,'France restauration','54, rue Royale','Nantes',NULL,'44000','France');
INSERT INTO `Orders` VALUES (10672,'BERGS',9,"9/17/1997 12:00:00 AM","10/1/1997 12:00:00 AM","9/26/1997 12:00:00 AM",2,95.75,'Berglunds snabbk?p','Berguvsv?gen  8','Lule?',NULL,'S-958 22','Sweden');
INSERT INTO `Orders` VALUES (10673,'WILMK',2,"9/18/1997 12:00:00 AM","10/16/1997 12:00:00 AM","9/19/1997 12:00:00 AM",1,22.76,'Wilman Kala','Keskuskatu 45','Helsinki',NULL,'21240','Finland');
INSERT INTO `Orders` VALUES (10674,'ISLAT',4,"9/18/1997 12:00:00 AM","10/16/1997 12:00:00 AM","9/30/1997 12:00:00 AM",2,0.9,'Island Trading','Garden House Crowther Way','Cowes','Isle of Wight','PO31 7PJ','UK');
INSERT INTO `Orders` VALUES (10675,'FRANK',5,"9/19/1997 12:00:00 AM","10/17/1997 12:00:00 AM","9/23/1997 12:00:00 AM",2,31.85,'Frankenversand','Berliner Platz 43','M?nchen',NULL,'80805','Germany');
INSERT INTO `Orders` VALUES (10676,'TORTU',2,"9/22/1997 12:00:00 AM","10/20/1997 12:00:00 AM","9/29/1997 12:00:00 AM",2,2.01,'Tortuga Restaurante','Avda. Azteca 123','M?xico D.F.',NULL,'05033','Mexico');
INSERT INTO `Orders` VALUES (10677,'ANTON',1,"9/22/1997 12:00:00 AM","10/20/1997 12:00:00 AM","9/26/1997 12:00:00 AM",3,4.03,'Antonio Moreno Taquer?a','Mataderos  2312','M?xico D.F.',NULL,'05023','Mexico');
INSERT INTO `Orders` VALUES (10678,'SAVEA',7,"9/23/1997 12:00:00 AM","10/21/1997 12:00:00 AM","10/16/1997 12:00:00 AM",3,388.98,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA');
INSERT INTO `Orders` VALUES (10679,'BLONP',8,"9/23/1997 12:00:00 AM","10/21/1997 12:00:00 AM","9/30/1997 12:00:00 AM",3,27.94,'Blondel p?re et fils','24, place Kl?ber','Strasbourg',NULL,'67000','France');
INSERT INTO `Orders` VALUES (10680,'OLDWO',1,"9/24/1997 12:00:00 AM","10/22/1997 12:00:00 AM","9/26/1997 12:00:00 AM",1,26.61,'Old World Delicatessen','2743 Bering St.','Anchorage','AK','99508','USA');
INSERT INTO `Orders` VALUES (10681,'GREAL',3,"9/25/1997 12:00:00 AM","10/23/1997 12:00:00 AM","9/30/1997 12:00:00 AM",3,76.13,'Great Lakes Food Market','2732 Baker Blvd.','Eugene','OR','97403','USA');
INSERT INTO `Orders` VALUES (10682,'ANTON',3,"9/25/1997 12:00:00 AM","10/23/1997 12:00:00 AM","10/1/1997 12:00:00 AM",2,36.13,'Antonio Moreno Taquer?a','Mataderos  2312','M?xico D.F.',NULL,'05023','Mexico');
INSERT INTO `Orders` VALUES (10683,'DUMON',2,"9/26/1997 12:00:00 AM","10/24/1997 12:00:00 AM","10/1/1997 12:00:00 AM",1,4.4,'Du monde entier','67, rue des Cinquante Otages','Nantes',NULL,'44000','France');
INSERT INTO `Orders` VALUES (10684,'OTTIK',3,"9/26/1997 12:00:00 AM","10/24/1997 12:00:00 AM","9/30/1997 12:00:00 AM",1,145.63,'Ottilies K?seladen','Mehrheimerstr. 369','K?ln',NULL,'50739','Germany');
INSERT INTO `Orders` VALUES (10685,'GOURL',4,"9/29/1997 12:00:00 AM","10/13/1997 12:00:00 AM","10/3/1997 12:00:00 AM",2,33.75,'Gourmet Lanchonetes','Av. Brasil, 442','Campinas','SP','04876-786','Brazil');
INSERT INTO `Orders` VALUES (10686,'PICCO',2,"9/30/1997 12:00:00 AM","10/28/1997 12:00:00 AM","10/8/1997 12:00:00 AM",1,96.5,'Piccolo und mehr','Geislweg 14','Salzburg',NULL,'5020','Austria');
INSERT INTO `Orders` VALUES (10687,'HUNGO',9,"9/30/1997 12:00:00 AM","10/28/1997 12:00:00 AM","10/30/1997 12:00:00 AM",2,296.43,'Hungry Owl All-Night Grocers','8 Johnstown Road','Cork','Co. Cork',NULL,'Ireland');
INSERT INTO `Orders` VALUES (10688,'VAFFE',4,"10/1/1997 12:00:00 AM","10/15/1997 12:00:00 AM","10/7/1997 12:00:00 AM",2,299.09,'Vaffeljernet','Smagsloget 45','?rhus',NULL,'8200','Denmark');
INSERT INTO `Orders` VALUES (10689,'BERGS',1,"10/1/1997 12:00:00 AM","10/29/1997 12:00:00 AM","10/7/1997 12:00:00 AM",2,13.42,'Berglunds snabbk?p','Berguvsv?gen  8','Lule?',NULL,'S-958 22','Sweden');
INSERT INTO `Orders` VALUES (10690,'HANAR',1,"10/2/1997 12:00:00 AM","10/30/1997 12:00:00 AM","10/3/1997 12:00:00 AM",1,15.8,'Hanari Carnes','Rua do Pa?o, 67','Rio de Janeiro','RJ','05454-876','Brazil');
INSERT INTO `Orders` VALUES (10691,'QUICK',2,"10/3/1997 12:00:00 AM","11/14/1997 12:00:00 AM","10/22/1997 12:00:00 AM",2,810.05,'QUICK-Stop','Taucherstra?e 10','Cunewalde',NULL,'01307','Germany');
INSERT INTO `Orders` VALUES (10692,'ALFKI',4,"10/3/1997 12:00:00 AM","10/31/1997 12:00:00 AM","10/13/1997 12:00:00 AM",2,61.02,'Alfred''s Futterkiste','Obere Str. 57','Berlin',NULL,'12209','Germany');
INSERT INTO `Orders` VALUES (10693,'WHITC',3,"10/6/1997 12:00:00 AM","10/20/1997 12:00:00 AM","10/10/1997 12:00:00 AM",3,139.34,'White Clover Markets','1029 - 12th Ave. S.','Seattle','WA','98124','USA');
INSERT INTO `Orders` VALUES (10694,'QUICK',8,"10/6/1997 12:00:00 AM","11/3/1997 12:00:00 AM","10/9/1997 12:00:00 AM",3,398.36,'QUICK-Stop','Taucherstra?e 10','Cunewalde',NULL,'01307','Germany');
INSERT INTO `Orders` VALUES (10695,'WILMK',7,"10/7/1997 12:00:00 AM","11/18/1997 12:00:00 AM","10/14/1997 12:00:00 AM",1,16.72,'Wilman Kala','Keskuskatu 45','Helsinki',NULL,'21240','Finland');
INSERT INTO `Orders` VALUES (10696,'WHITC',8,"10/8/1997 12:00:00 AM","11/19/1997 12:00:00 AM","10/14/1997 12:00:00 AM",3,102.55,'White Clover Markets','1029 - 12th Ave. S.','Seattle','WA','98124','USA');
INSERT INTO `Orders` VALUES (10697,'LINOD',3,"10/8/1997 12:00:00 AM","11/5/1997 12:00:00 AM","10/14/1997 12:00:00 AM",1,45.52,'LINO-Delicateses','Ave. 5 de Mayo Porlamar','I. de Margarita','Nueva Esparta','4980','Venezuela');
INSERT INTO `Orders` VALUES (10698,'ERNSH',4,"10/9/1997 12:00:00 AM","11/6/1997 12:00:00 AM","10/17/1997 12:00:00 AM",1,272.47,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria');
INSERT INTO `Orders` VALUES (10699,'MORGK',3,"10/9/1997 12:00:00 AM","11/6/1997 12:00:00 AM","10/13/1997 12:00:00 AM",3,0.58,'Morgenstern Gesundkost','Heerstr. 22','Leipzig',NULL,'04179','Germany');
INSERT INTO `Orders` VALUES (10700,'SAVEA',3,"10/10/1997 12:00:00 AM","11/7/1997 12:00:00 AM","10/16/1997 12:00:00 AM",1,65.1,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA');
INSERT INTO `Orders` VALUES (10701,'HUNGO',6,"10/13/1997 12:00:00 AM","10/27/1997 12:00:00 AM","10/15/1997 12:00:00 AM",3,220.31,'Hungry Owl All-Night Grocers','8 Johnstown Road','Cork','Co. Cork',NULL,'Ireland');
INSERT INTO `Orders` VALUES (10702,'ALFKI',4,"10/13/1997 12:00:00 AM","11/24/1997 12:00:00 AM","10/21/1997 12:00:00 AM",1,23.94,'Alfred''s Futterkiste','Obere Str. 57','Berlin',NULL,'12209','Germany');
INSERT INTO `Orders` VALUES (10703,'FOLKO',6,"10/14/1997 12:00:00 AM","11/11/1997 12:00:00 AM","10/20/1997 12:00:00 AM",2,152.3,'Folk och f? HB','?kergatan 24','Br?cke',NULL,'S-844 67','Sweden');
INSERT INTO `Orders` VALUES (10704,'QUEEN',6,"10/14/1997 12:00:00 AM","11/11/1997 12:00:00 AM","11/7/1997 12:00:00 AM",1,4.78,'Queen Cozinha','Alameda dos Can?rios, 891','Sao Paulo','SP','05487-020','Brazil');
INSERT INTO `Orders` VALUES (10705,'HILAA',9,"10/15/1997 12:00:00 AM","11/12/1997 12:00:00 AM","11/18/1997 12:00:00 AM",2,3.52,'HILARION-Abastos','Carrera 22 con Ave. Carlos Soublette #8-35','San Crist?bal','T?chira','5022','Venezuela');
INSERT INTO `Orders` VALUES (10706,'OLDWO',8,"10/16/1997 12:00:00 AM","11/13/1997 12:00:00 AM","10/21/1997 12:00:00 AM",3,135.63,'Old World Delicatessen','2743 Bering St.','Anchorage','AK','99508','USA');
INSERT INTO `Orders` VALUES (10707,'AROUT',4,"10/16/1997 12:00:00 AM","10/30/1997 12:00:00 AM","10/23/1997 12:00:00 AM",3,21.74,'Around the Horn','Brook Farm Stratford St. Mary','Colchester','Essex','CO7 6JX','UK');
INSERT INTO `Orders` VALUES (10708,'THEBI',6,"10/17/1997 12:00:00 AM","11/28/1997 12:00:00 AM","11/5/1997 12:00:00 AM",2,2.96,'The Big Cheese','89 Jefferson Way Suite 2','Portland','OR','97201','USA');
INSERT INTO `Orders` VALUES (10709,'GOURL',1,"10/17/1997 12:00:00 AM","11/14/1997 12:00:00 AM","11/20/1997 12:00:00 AM",3,210.8,'Gourmet Lanchonetes','Av. Brasil, 442','Campinas','SP','04876-786','Brazil');
INSERT INTO `Orders` VALUES (10710,'FRANS',1,"10/20/1997 12:00:00 AM","11/17/1997 12:00:00 AM","10/23/1997 12:00:00 AM",1,4.98,'Franchi S.p.A.','Via Monte Bianco 34','Torino',NULL,'10100','Italy');
INSERT INTO `Orders` VALUES (10711,'SAVEA',5,"10/21/1997 12:00:00 AM","12/2/1997 12:00:00 AM","10/29/1997 12:00:00 AM",2,52.41,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA');
INSERT INTO `Orders` VALUES (10712,'HUNGO',3,"10/21/1997 12:00:00 AM","11/18/1997 12:00:00 AM","10/31/1997 12:00:00 AM",1,89.93,'Hungry Owl All-Night Grocers','8 Johnstown Road','Cork','Co. Cork',NULL,'Ireland');
INSERT INTO `Orders` VALUES (10713,'SAVEA',1,"10/22/1997 12:00:00 AM","11/19/1997 12:00:00 AM","10/24/1997 12:00:00 AM",1,167.05,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA');
INSERT INTO `Orders` VALUES (10714,'SAVEA',5,"10/22/1997 12:00:00 AM","11/19/1997 12:00:00 AM","10/27/1997 12:00:00 AM",3,24.49,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA');
INSERT INTO `Orders` VALUES (10715,'BONAP',3,"10/23/1997 12:00:00 AM","11/6/1997 12:00:00 AM","10/29/1997 12:00:00 AM",1,63.2,'Bon app''','12, rue des Bouchers','Marseille',NULL,'13008','France');
INSERT INTO `Orders` VALUES (10716,'RANCH',4,"10/24/1997 12:00:00 AM","11/21/1997 12:00:00 AM","10/27/1997 12:00:00 AM",2,22.57,'Rancho grande','Av. del Libertador 900','Buenos Aires',NULL,'1010','Argentina');
INSERT INTO `Orders` VALUES (10717,'FRANK',1,"10/24/1997 12:00:00 AM","11/21/1997 12:00:00 AM","10/29/1997 12:00:00 AM",2,59.25,'Frankenversand','Berliner Platz 43','M?nchen',NULL,'80805','Germany');
INSERT INTO `Orders` VALUES (10718,'KOENE',1,"10/27/1997 12:00:00 AM","11/24/1997 12:00:00 AM","10/29/1997 12:00:00 AM",3,170.88,'K?niglich Essen','Maubelstr. 90','Brandenburg',NULL,'14776','Germany');
INSERT INTO `Orders` VALUES (10719,'LETSS',8,"10/27/1997 12:00:00 AM","11/24/1997 12:00:00 AM","11/5/1997 12:00:00 AM",2,51.44,'Let''s Stop N Shop','87 Polk St. Suite 5','San Francisco','CA','94117','USA');
INSERT INTO `Orders` VALUES (10720,'QUEDE',8,"10/28/1997 12:00:00 AM","11/11/1997 12:00:00 AM","11/5/1997 12:00:00 AM",2,9.53,'Que Del?cia','Rua da Panificadora, 12','Rio de Janeiro','RJ','02389-673','Brazil');
INSERT INTO `Orders` VALUES (10721,'QUICK',5,"10/29/1997 12:00:00 AM","11/26/1997 12:00:00 AM","10/31/1997 12:00:00 AM",3,48.92,'QUICK-Stop','Taucherstra?e 10','Cunewalde',NULL,'01307','Germany');
INSERT INTO `Orders` VALUES (10722,'SAVEA',8,"10/29/1997 12:00:00 AM","12/10/1997 12:00:00 AM","11/4/1997 12:00:00 AM",1,74.58,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA');
INSERT INTO `Orders` VALUES (10723,'WHITC',3,"10/30/1997 12:00:00 AM","11/27/1997 12:00:00 AM","11/25/1997 12:00:00 AM",1,21.72,'White Clover Markets','1029 - 12th Ave. S.','Seattle','WA','98124','USA');
INSERT INTO `Orders` VALUES (10724,'MEREP',8,"10/30/1997 12:00:00 AM","12/11/1997 12:00:00 AM","11/5/1997 12:00:00 AM",2,57.75,'M?re Paillarde','43 rue St. Laurent','Montr?al','Qu?bec','H1J 1C3','Canada');
INSERT INTO `Orders` VALUES (10725,'FAMIA',4,"10/31/1997 12:00:00 AM","11/28/1997 12:00:00 AM","11/5/1997 12:00:00 AM",3,10.83,'Familia Arquibaldo','Rua Or?s, 92','Sao Paulo','SP','05442-030','Brazil');
INSERT INTO `Orders` VALUES (10726,'EASTC',4,"11/3/1997 12:00:00 AM","11/17/1997 12:00:00 AM","12/5/1997 12:00:00 AM",1,16.56,'Eastern Connection','35 King George','London',NULL,'WX3 6FW','UK');
INSERT INTO `Orders` VALUES (10727,'REGGC',2,"11/3/1997 12:00:00 AM","12/1/1997 12:00:00 AM","12/5/1997 12:00:00 AM",1,89.9,'Reggiani Caseifici','Strada Provinciale 124','Reggio Emilia',NULL,'42100','Italy');
INSERT INTO `Orders` VALUES (10728,'QUEEN',4,"11/4/1997 12:00:00 AM","12/2/1997 12:00:00 AM","11/11/1997 12:00:00 AM",2,58.33,'Queen Cozinha','Alameda dos Can?rios, 891','Sao Paulo','SP','05487-020','Brazil');
INSERT INTO `Orders` VALUES (10729,'LINOD',8,"11/4/1997 12:00:00 AM","12/16/1997 12:00:00 AM","11/14/1997 12:00:00 AM",3,141.06,'LINO-Delicateses','Ave. 5 de Mayo Porlamar','I. de Margarita','Nueva Esparta','4980','Venezuela');
INSERT INTO `Orders` VALUES (10730,'BONAP',5,"11/5/1997 12:00:00 AM","12/3/1997 12:00:00 AM","11/14/1997 12:00:00 AM",1,20.12,'Bon app''','12, rue des Bouchers','Marseille',NULL,'13008','France');
INSERT INTO `Orders` VALUES (10731,'CHOPS',7,"11/6/1997 12:00:00 AM","12/4/1997 12:00:00 AM","11/14/1997 12:00:00 AM",1,96.65,'Chop-suey Chinese','Hauptstr. 31','Bern',NULL,'3012','Switzerland');
INSERT INTO `Orders` VALUES (10732,'BONAP',3,"11/6/1997 12:00:00 AM","12/4/1997 12:00:00 AM","11/7/1997 12:00:00 AM",1,16.97,'Bon app''','12, rue des Bouchers','Marseille',NULL,'13008','France');
INSERT INTO `Orders` VALUES (10733,'BERGS',1,"11/7/1997 12:00:00 AM","12/5/1997 12:00:00 AM","11/10/1997 12:00:00 AM",3,110.11,'Berglunds snabbk?p','Berguvsv?gen  8','Lule?',NULL,'S-958 22','Sweden');
INSERT INTO `Orders` VALUES (10734,'GOURL',2,"11/7/1997 12:00:00 AM","12/5/1997 12:00:00 AM","11/12/1997 12:00:00 AM",3,1.63,'Gourmet Lanchonetes','Av. Brasil, 442','Campinas','SP','04876-786','Brazil');
INSERT INTO `Orders` VALUES (10735,'LETSS',6,"11/10/1997 12:00:00 AM","12/8/1997 12:00:00 AM","11/21/1997 12:00:00 AM",2,45.97,'Let''s Stop N Shop','87 Polk St. Suite 5','San Francisco','CA','94117','USA');
INSERT INTO `Orders` VALUES (10736,'HUNGO',9,"11/11/1997 12:00:00 AM","12/9/1997 12:00:00 AM","11/21/1997 12:00:00 AM",2,44.1,'Hungry Owl All-Night Grocers','8 Johnstown Road','Cork','Co. Cork',NULL,'Ireland');
INSERT INTO `Orders` VALUES (10737,'VINET',2,"11/11/1997 12:00:00 AM","12/9/1997 12:00:00 AM","11/18/1997 12:00:00 AM",2,7.79,'Vins et alcools Chevalier','59 rue de l''Abbaye','Reims',NULL,'51100','France');
INSERT INTO `Orders` VALUES (10738,'SPECD',2,"11/12/1997 12:00:00 AM","12/10/1997 12:00:00 AM","11/18/1997 12:00:00 AM",1,2.91,'Sp?cialit?s du monde','25, rue Lauriston','Paris',NULL,'75016','France');
INSERT INTO `Orders` VALUES (10739,'VINET',3,"11/12/1997 12:00:00 AM","12/10/1997 12:00:00 AM","11/17/1997 12:00:00 AM",3,11.08,'Vins et alcools Chevalier','59 rue de l''Abbaye','Reims',NULL,'51100','France');
INSERT INTO `Orders` VALUES (10740,'WHITC',4,"11/13/1997 12:00:00 AM","12/11/1997 12:00:00 AM","11/25/1997 12:00:00 AM",2,81.88,'White Clover Markets','1029 - 12th Ave. S.','Seattle','WA','98124','USA');
INSERT INTO `Orders` VALUES (10741,'AROUT',4,"11/14/1997 12:00:00 AM","11/28/1997 12:00:00 AM","11/18/1997 12:00:00 AM",3,10.96,'Around the Horn','Brook Farm Stratford St. Mary','Colchester','Essex','CO7 6JX','UK');
INSERT INTO `Orders` VALUES (10742,'BOTTM',3,"11/14/1997 12:00:00 AM","12/12/1997 12:00:00 AM","11/18/1997 12:00:00 AM",3,243.73,'Bottom-Dollar Markets','23 Tsawassen Blvd.','Tsawassen','BC','T2F 8M4','Canada');
INSERT INTO `Orders` VALUES (10743,'AROUT',1,"11/17/1997 12:00:00 AM","12/15/1997 12:00:00 AM","11/21/1997 12:00:00 AM",2,23.72,'Around the Horn','Brook Farm Stratford St. Mary','Colchester','Essex','CO7 6JX','UK');
INSERT INTO `Orders` VALUES (10744,'VAFFE',6,"11/17/1997 12:00:00 AM","12/15/1997 12:00:00 AM","11/24/1997 12:00:00 AM",1,69.19,'Vaffeljernet','Smagsloget 45','?rhus',NULL,'8200','Denmark');
INSERT INTO `Orders` VALUES (10745,'QUICK',9,"11/18/1997 12:00:00 AM","12/16/1997 12:00:00 AM","11/27/1997 12:00:00 AM",1,3.52,'QUICK-Stop','Taucherstra?e 10','Cunewalde',NULL,'01307','Germany');
INSERT INTO `Orders` VALUES (10746,'CHOPS',1,"11/19/1997 12:00:00 AM","12/17/1997 12:00:00 AM","11/21/1997 12:00:00 AM",3,31.43,'Chop-suey Chinese','Hauptstr. 31','Bern',NULL,'3012','Switzerland');
INSERT INTO `Orders` VALUES (10747,'PICCO',6,"11/19/1997 12:00:00 AM","12/17/1997 12:00:00 AM","11/26/1997 12:00:00 AM",1,117.33,'Piccolo und mehr','Geislweg 14','Salzburg',NULL,'5020','Austria');
INSERT INTO `Orders` VALUES (10748,'SAVEA',3,"11/20/1997 12:00:00 AM","12/18/1997 12:00:00 AM","11/28/1997 12:00:00 AM",1,232.55,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA');
INSERT INTO `Orders` VALUES (10749,'ISLAT',4,"11/20/1997 12:00:00 AM","12/18/1997 12:00:00 AM","12/19/1997 12:00:00 AM",2,61.53,'Island Trading','Garden House Crowther Way','Cowes','Isle of Wight','PO31 7PJ','UK');
INSERT INTO `Orders` VALUES (10750,'WARTH',9,"11/21/1997 12:00:00 AM","12/19/1997 12:00:00 AM","11/24/1997 12:00:00 AM",1,79.3,'Wartian Herkku','Torikatu 38','Oulu',NULL,'90110','Finland');
INSERT INTO `Orders` VALUES (10751,'RICSU',3,"11/24/1997 12:00:00 AM","12/22/1997 12:00:00 AM","12/3/1997 12:00:00 AM",3,130.79,'Richter Supermarkt','Starenweg 5','Gen?ve',NULL,'1204','Switzerland');
INSERT INTO `Orders` VALUES (10752,'NORTS',2,"11/24/1997 12:00:00 AM","12/22/1997 12:00:00 AM","11/28/1997 12:00:00 AM",3,1.39,'North/South','South House 300 Queensbridge','London',NULL,'SW7 1RZ','UK');
INSERT INTO `Orders` VALUES (10753,'FRANS',3,"11/25/1997 12:00:00 AM","12/23/1997 12:00:00 AM","11/27/1997 12:00:00 AM",1,7.7,'Franchi S.p.A.','Via Monte Bianco 34','Torino',NULL,'10100','Italy');
INSERT INTO `Orders` VALUES (10754,'MAGAA',6,"11/25/1997 12:00:00 AM","12/23/1997 12:00:00 AM","11/27/1997 12:00:00 AM",3,2.38,'Magazzini Alimentari Riuniti','Via Ludovico il Moro 22','Bergamo',NULL,'24100','Italy');
INSERT INTO `Orders` VALUES (10755,'BONAP',4,"11/26/1997 12:00:00 AM","12/24/1997 12:00:00 AM","11/28/1997 12:00:00 AM",2,16.71,'Bon app''','12, rue des Bouchers','Marseille',NULL,'13008','France');
INSERT INTO `Orders` VALUES (10756,'SPLIR',8,"11/27/1997 12:00:00 AM","12/25/1997 12:00:00 AM","12/2/1997 12:00:00 AM",2,73.21,'Split Rail Beer & Ale','P.O. Box 555','Lander','WY','82520','USA');
INSERT INTO `Orders` VALUES (10757,'SAVEA',6,"11/27/1997 12:00:00 AM","12/25/1997 12:00:00 AM","12/15/1997 12:00:00 AM",1,8.19,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA');
INSERT INTO `Orders` VALUES (10758,'RICSU',3,"11/28/1997 12:00:00 AM","12/26/1997 12:00:00 AM","12/4/1997 12:00:00 AM",3,138.17,'Richter Supermarkt','Starenweg 5','Gen?ve',NULL,'1204','Switzerland');
INSERT INTO `Orders` VALUES (10759,'ANATR',3,"11/28/1997 12:00:00 AM","12/26/1997 12:00:00 AM","12/12/1997 12:00:00 AM",3,11.99,'Ana Trujillo Emparedados y helados','Avda. de la Constituci?n 2222','M?xico D.F.',NULL,'05021','Mexico');
INSERT INTO `Orders` VALUES (10760,'MAISD',4,"12/1/1997 12:00:00 AM","12/29/1997 12:00:00 AM","12/10/1997 12:00:00 AM",1,155.64,'Maison Dewey','Rue Joseph-Bens 532','Bruxelles',NULL,'B-1180','Belgium');
INSERT INTO `Orders` VALUES (10761,'RATTC',5,"12/2/1997 12:00:00 AM","12/30/1997 12:00:00 AM","12/8/1997 12:00:00 AM",2,18.66,'Rattlesnake Canyon Grocery','2817 Milton Dr.','Albuquerque','NM','87110','USA');
INSERT INTO `Orders` VALUES (10762,'FOLKO',3,"12/2/1997 12:00:00 AM","12/30/1997 12:00:00 AM","12/9/1997 12:00:00 AM",1,328.74,'Folk och f? HB','?kergatan 24','Br?cke',NULL,'S-844 67','Sweden');
INSERT INTO `Orders` VALUES (10763,'FOLIG',3,"12/3/1997 12:00:00 AM","12/31/1997 12:00:00 AM","12/8/1997 12:00:00 AM",3,37.35,'Folies gourmandes','184, chauss?e de Tournai','Lille',NULL,'59000','France');
INSERT INTO `Orders` VALUES (10764,'ERNSH',6,"12/3/1997 12:00:00 AM","12/31/1997 12:00:00 AM","12/8/1997 12:00:00 AM",3,145.45,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria');
INSERT INTO `Orders` VALUES (10765,'QUICK',3,"12/4/1997 12:00:00 AM","1/1/1998 12:00:00 AM","12/9/1997 12:00:00 AM",3,42.74,'QUICK-Stop','Taucherstra?e 10','Cunewalde',NULL,'01307','Germany');
INSERT INTO `Orders` VALUES (10766,'OTTIK',4,"12/5/1997 12:00:00 AM","1/2/1998 12:00:00 AM","12/9/1997 12:00:00 AM",1,157.55,'Ottilies K?seladen','Mehrheimerstr. 369','K?ln',NULL,'50739','Germany');
INSERT INTO `Orders` VALUES (10767,'SUPRD',4,"12/5/1997 12:00:00 AM","1/2/1998 12:00:00 AM","12/15/1997 12:00:00 AM",3,1.59,'Supr?mes d?lices','Boulevard Tirou, 255','Charleroi',NULL,'B-6000','Belgium');
INSERT INTO `Orders` VALUES (10768,'AROUT',3,"12/8/1997 12:00:00 AM","1/5/1998 12:00:00 AM","12/15/1997 12:00:00 AM",2,146.32,'Around the Horn','Brook Farm Stratford St. Mary','Colchester','Essex','CO7 6JX','UK');
INSERT INTO `Orders` VALUES (10769,'VAFFE',3,"12/8/1997 12:00:00 AM","1/5/1998 12:00:00 AM","12/12/1997 12:00:00 AM",1,65.06,'Vaffeljernet','Smagsloget 45','?rhus',NULL,'8200','Denmark');
INSERT INTO `Orders` VALUES (10770,'HANAR',8,"12/9/1997 12:00:00 AM","1/6/1998 12:00:00 AM","12/17/1997 12:00:00 AM",3,5.32,'Hanari Carnes','Rua do Pa?o, 67','Rio de Janeiro','RJ','05454-876','Brazil');
INSERT INTO `Orders` VALUES (10771,'ERNSH',9,"12/10/1997 12:00:00 AM","1/7/1998 12:00:00 AM","1/2/1998 12:00:00 AM",2,11.19,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria');
INSERT INTO `Orders` VALUES (10772,'LEHMS',3,"12/10/1997 12:00:00 AM","1/7/1998 12:00:00 AM","12/19/1997 12:00:00 AM",2,91.28,'Lehmanns Marktstand','Magazinweg 7','Frankfurt a.M.',NULL,'60528','Germany');
INSERT INTO `Orders` VALUES (10773,'ERNSH',1,"12/11/1997 12:00:00 AM","1/8/1998 12:00:00 AM","12/16/1997 12:00:00 AM",3,96.43,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria');
INSERT INTO `Orders` VALUES (10774,'FOLKO',4,"12/11/1997 12:00:00 AM","12/25/1997 12:00:00 AM","12/12/1997 12:00:00 AM",1,48.2,'Folk och f? HB','?kergatan 24','Br?cke',NULL,'S-844 67','Sweden');
INSERT INTO `Orders` VALUES (10775,'THECR',7,"12/12/1997 12:00:00 AM","1/9/1998 12:00:00 AM","12/26/1997 12:00:00 AM",1,20.25,'The Cracker Box','55 Grizzly Peak Rd.','Butte','MT','59801','USA');
INSERT INTO `Orders` VALUES (10776,'ERNSH',1,"12/15/1997 12:00:00 AM","1/12/1998 12:00:00 AM","12/18/1997 12:00:00 AM",3,351.53,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria');
INSERT INTO `Orders` VALUES (10777,'GOURL',7,"12/15/1997 12:00:00 AM","12/29/1997 12:00:00 AM","1/21/1998 12:00:00 AM",2,3.01,'Gourmet Lanchonetes','Av. Brasil, 442','Campinas','SP','04876-786','Brazil');
INSERT INTO `Orders` VALUES (10778,'BERGS',3,"12/16/1997 12:00:00 AM","1/13/1998 12:00:00 AM","12/24/1997 12:00:00 AM",1,6.79,'Berglunds snabbk?p','Berguvsv?gen  8','Lule?',NULL,'S-958 22','Sweden');
INSERT INTO `Orders` VALUES (10779,'MORGK',3,"12/16/1997 12:00:00 AM","1/13/1998 12:00:00 AM","1/14/1998 12:00:00 AM",2,58.13,'Morgenstern Gesundkost','Heerstr. 22','Leipzig',NULL,'04179','Germany');
INSERT INTO `Orders` VALUES (10780,'LILAS',2,"12/16/1997 12:00:00 AM","12/30/1997 12:00:00 AM","12/25/1997 12:00:00 AM",1,42.13,'LILA-Supermercado','Carrera 52 con Ave. Bol?var #65-98 Llano Largo','Barquisimeto','Lara','3508','Venezuela');
INSERT INTO `Orders` VALUES (10781,'WARTH',2,"12/17/1997 12:00:00 AM","1/14/1998 12:00:00 AM","12/19/1997 12:00:00 AM",3,73.16,'Wartian Herkku','Torikatu 38','Oulu',NULL,'90110','Finland');
INSERT INTO `Orders` VALUES (10782,'CACTU',9,"12/17/1997 12:00:00 AM","1/14/1998 12:00:00 AM","12/22/1997 12:00:00 AM",3,1.1,'Cactus Comidas para llevar','Cerrito 333','Buenos Aires',NULL,'1010','Argentina');
INSERT INTO `Orders` VALUES (10783,'HANAR',4,"12/18/1997 12:00:00 AM","1/15/1998 12:00:00 AM","12/19/1997 12:00:00 AM",2,124.98,'Hanari Carnes','Rua do Pa?o, 67','Rio de Janeiro','RJ','05454-876','Brazil');
INSERT INTO `Orders` VALUES (10784,'MAGAA',4,"12/18/1997 12:00:00 AM","1/15/1998 12:00:00 AM","12/22/1997 12:00:00 AM",3,70.09,'Magazzini Alimentari Riuniti','Via Ludovico il Moro 22','Bergamo',NULL,'24100','Italy');
INSERT INTO `Orders` VALUES (10785,'GROSR',1,"12/18/1997 12:00:00 AM","1/15/1998 12:00:00 AM","12/24/1997 12:00:00 AM",3,1.51,'GROSELLA-Restaurante','5? Ave. Los Palos Grandes','Caracas','DF','1081','Venezuela');
INSERT INTO `Orders` VALUES (10786,'QUEEN',8,"12/19/1997 12:00:00 AM","1/16/1998 12:00:00 AM","12/23/1997 12:00:00 AM",1,110.87,'Queen Cozinha','Alameda dos Can?rios, 891','Sao Paulo','SP','05487-020','Brazil');
INSERT INTO `Orders` VALUES (10787,'LAMAI',2,"12/19/1997 12:00:00 AM","1/2/1998 12:00:00 AM","12/26/1997 12:00:00 AM",1,249.93,'La maison d''Asie','1 rue Alsace-Lorraine','Toulouse',NULL,'31000','France');
INSERT INTO `Orders` VALUES (10788,'QUICK',1,"12/22/1997 12:00:00 AM","1/19/1998 12:00:00 AM","1/19/1998 12:00:00 AM",2,42.7,'QUICK-Stop','Taucherstra?e 10','Cunewalde',NULL,'01307','Germany');
INSERT INTO `Orders` VALUES (10789,'FOLIG',1,"12/22/1997 12:00:00 AM","1/19/1998 12:00:00 AM","12/31/1997 12:00:00 AM",2,100.6,'Folies gourmandes','184, chauss?e de Tournai','Lille',NULL,'59000','France');
INSERT INTO `Orders` VALUES (10790,'GOURL',6,"12/22/1997 12:00:00 AM","1/19/1998 12:00:00 AM","12/26/1997 12:00:00 AM",1,28.23,'Gourmet Lanchonetes','Av. Brasil, 442','Campinas','SP','04876-786','Brazil');
INSERT INTO `Orders` VALUES (10791,'FRANK',6,"12/23/1997 12:00:00 AM","1/20/1998 12:00:00 AM","1/1/1998 12:00:00 AM",2,16.85,'Frankenversand','Berliner Platz 43','M?nchen',NULL,'80805','Germany');
INSERT INTO `Orders` VALUES (10792,'WOLZA',1,"12/23/1997 12:00:00 AM","1/20/1998 12:00:00 AM","12/31/1997 12:00:00 AM",3,23.79,'Wolski Zajazd','ul. Filtrowa 68','Warszawa',NULL,'01-012','Poland');
INSERT INTO `Orders` VALUES (10793,'AROUT',3,"12/24/1997 12:00:00 AM","1/21/1998 12:00:00 AM","1/8/1998 12:00:00 AM",3,4.52,'Around the Horn','Brook Farm Stratford St. Mary','Colchester','Essex','CO7 6JX','UK');
INSERT INTO `Orders` VALUES (10794,'QUEDE',6,"12/24/1997 12:00:00 AM","1/21/1998 12:00:00 AM","1/2/1998 12:00:00 AM",1,21.49,'Que Del?cia','Rua da Panificadora, 12','Rio de Janeiro','RJ','02389-673','Brazil');
INSERT INTO `Orders` VALUES (10795,'ERNSH',8,"12/24/1997 12:00:00 AM","1/21/1998 12:00:00 AM","1/20/1998 12:00:00 AM",2,126.66,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria');
INSERT INTO `Orders` VALUES (10796,'HILAA',3,"12/25/1997 12:00:00 AM","1/22/1998 12:00:00 AM","1/14/1998 12:00:00 AM",1,26.52,'HILARION-Abastos','Carrera 22 con Ave. Carlos Soublette #8-35','San Crist?bal','T?chira','5022','Venezuela');
INSERT INTO `Orders` VALUES (10797,'DRACD',7,"12/25/1997 12:00:00 AM","1/22/1998 12:00:00 AM","1/5/1998 12:00:00 AM",2,33.35,'Drachenblut Delikatessen','Walserweg 21','Aachen',NULL,'52066','Germany');
INSERT INTO `Orders` VALUES (10798,'ISLAT',2,"12/26/1997 12:00:00 AM","1/23/1998 12:00:00 AM","1/5/1998 12:00:00 AM",1,2.33,'Island Trading','Garden House Crowther Way','Cowes','Isle of Wight','PO31 7PJ','UK');
INSERT INTO `Orders` VALUES (10799,'KOENE',9,"12/26/1997 12:00:00 AM","2/6/1998 12:00:00 AM","1/5/1998 12:00:00 AM",3,30.76,'K?niglich Essen','Maubelstr. 90','Brandenburg',NULL,'14776','Germany');
INSERT INTO `Orders` VALUES (10800,'SEVES',1,"12/26/1997 12:00:00 AM","1/23/1998 12:00:00 AM","1/5/1998 12:00:00 AM",3,137.44,'Seven Seas Imports','90 Wadhurst Rd.','London',NULL,'OX15 4NB','UK');
INSERT INTO `Orders` VALUES (10801,'BOLID',4,"12/29/1997 12:00:00 AM","1/26/1998 12:00:00 AM","12/31/1997 12:00:00 AM",2,97.09,'B?lido Comidas preparadas','C/ Araquil, 67','Madrid',NULL,'28023','Spain');
INSERT INTO `Orders` VALUES (10802,'SIMOB',4,"12/29/1997 12:00:00 AM","1/26/1998 12:00:00 AM","1/2/1998 12:00:00 AM",2,257.26,'Simons bistro','Vinb?ltet 34','Kobenhavn',NULL,'1734','Denmark');
INSERT INTO `Orders` VALUES (10803,'WELLI',4,"12/30/1997 12:00:00 AM","1/27/1998 12:00:00 AM","1/6/1998 12:00:00 AM",1,55.23,'Wellington Importadora','Rua do Mercado, 12','Resende','SP','08737-363','Brazil');
INSERT INTO `Orders` VALUES (10804,'SEVES',6,"12/30/1997 12:00:00 AM","1/27/1998 12:00:00 AM","1/7/1998 12:00:00 AM",2,27.33,'Seven Seas Imports','90 Wadhurst Rd.','London',NULL,'OX15 4NB','UK');
INSERT INTO `Orders` VALUES (10805,'THEBI',2,"12/30/1997 12:00:00 AM","1/27/1998 12:00:00 AM","1/9/1998 12:00:00 AM",3,237.34,'The Big Cheese','89 Jefferson Way Suite 2','Portland','OR','97201','USA');
INSERT INTO `Orders` VALUES (10806,'VICTE',3,"12/31/1997 12:00:00 AM","1/28/1998 12:00:00 AM","1/5/1998 12:00:00 AM",2,22.11,'Victuailles en stock','2, rue du Commerce','Lyon',NULL,'69004','France');
INSERT INTO `Orders` VALUES (10807,'FRANS',4,"12/31/1997 12:00:00 AM","1/28/1998 12:00:00 AM","1/30/1998 12:00:00 AM",1,1.36,'Franchi S.p.A.','Via Monte Bianco 34','Torino',NULL,'10100','Italy');
INSERT INTO `Orders` VALUES (10808,'OLDWO',2,"1/1/1998 12:00:00 AM","1/29/1998 12:00:00 AM","1/9/1998 12:00:00 AM",3,45.53,'Old World Delicatessen','2743 Bering St.','Anchorage','AK','99508','USA');
INSERT INTO `Orders` VALUES (10809,'WELLI',7,"1/1/1998 12:00:00 AM","1/29/1998 12:00:00 AM","1/7/1998 12:00:00 AM",1,4.87,'Wellington Importadora','Rua do Mercado, 12','Resende','SP','08737-363','Brazil');
INSERT INTO `Orders` VALUES (10810,'LAUGB',2,"1/1/1998 12:00:00 AM","1/29/1998 12:00:00 AM","1/7/1998 12:00:00 AM",3,4.33,'Laughing Bacchus Wine Cellars','2319 Elm St.','Vancouver','BC','V3F 2K1','Canada');
INSERT INTO `Orders` VALUES (10811,'LINOD',8,"1/2/1998 12:00:00 AM","1/30/1998 12:00:00 AM","1/8/1998 12:00:00 AM",1,31.22,'LINO-Delicateses','Ave. 5 de Mayo Porlamar','I. de Margarita','Nueva Esparta','4980','Venezuela');
INSERT INTO `Orders` VALUES (10812,'REGGC',5,"1/2/1998 12:00:00 AM","1/30/1998 12:00:00 AM","1/12/1998 12:00:00 AM",1,59.78,'Reggiani Caseifici','Strada Provinciale 124','Reggio Emilia',NULL,'42100','Italy');
INSERT INTO `Orders` VALUES (10813,'RICAR',1,"1/5/1998 12:00:00 AM","2/2/1998 12:00:00 AM","1/9/1998 12:00:00 AM",1,47.38,'Ricardo Adocicados','Av. Copacabana, 267','Rio de Janeiro','RJ','02389-890','Brazil');
INSERT INTO `Orders` VALUES (10814,'VICTE',3,"1/5/1998 12:00:00 AM","2/2/1998 12:00:00 AM","1/14/1998 12:00:00 AM",3,130.94,'Victuailles en stock','2, rue du Commerce','Lyon',NULL,'69004','France');
INSERT INTO `Orders` VALUES (10815,'SAVEA',2,"1/5/1998 12:00:00 AM","2/2/1998 12:00:00 AM","1/14/1998 12:00:00 AM",3,14.62,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA');
INSERT INTO `Orders` VALUES (10816,'GREAL',4,"1/6/1998 12:00:00 AM","2/3/1998 12:00:00 AM","2/4/1998 12:00:00 AM",2,719.78,'Great Lakes Food Market','2732 Baker Blvd.','Eugene','OR','97403','USA');
INSERT INTO `Orders` VALUES (10817,'KOENE',3,"1/6/1998 12:00:00 AM","1/20/1998 12:00:00 AM","1/13/1998 12:00:00 AM",2,306.07,'K?niglich Essen','Maubelstr. 90','Brandenburg',NULL,'14776','Germany');
INSERT INTO `Orders` VALUES (10818,'MAGAA',7,"1/7/1998 12:00:00 AM","2/4/1998 12:00:00 AM","1/12/1998 12:00:00 AM",3,65.48,'Magazzini Alimentari Riuniti','Via Ludovico il Moro 22','Bergamo',NULL,'24100','Italy');
INSERT INTO `Orders` VALUES (10819,'CACTU',2,"1/7/1998 12:00:00 AM","2/4/1998 12:00:00 AM","1/16/1998 12:00:00 AM",3,19.76,'Cactus Comidas para llevar','Cerrito 333','Buenos Aires',NULL,'1010','Argentina');
INSERT INTO `Orders` VALUES (10820,'RATTC',3,"1/7/1998 12:00:00 AM","2/4/1998 12:00:00 AM","1/13/1998 12:00:00 AM",2,37.52,'Rattlesnake Canyon Grocery','2817 Milton Dr.','Albuquerque','NM','87110','USA');
INSERT INTO `Orders` VALUES (10821,'SPLIR',1,"1/8/1998 12:00:00 AM","2/5/1998 12:00:00 AM","1/15/1998 12:00:00 AM",1,36.68,'Split Rail Beer & Ale','P.O. Box 555','Lander','WY','82520','USA');
INSERT INTO `Orders` VALUES (10822,'TRAIH',6,"1/8/1998 12:00:00 AM","2/5/1998 12:00:00 AM","1/16/1998 12:00:00 AM",3,7.0,'Trail''s Head Gourmet Provisioners','722 DaVinci Blvd.','Kirkland','WA','98034','USA');
INSERT INTO `Orders` VALUES (10823,'LILAS',5,"1/9/1998 12:00:00 AM","2/6/1998 12:00:00 AM","1/13/1998 12:00:00 AM",2,163.97,'LILA-Supermercado','Carrera 52 con Ave. Bol?var #65-98 Llano Largo','Barquisimeto','Lara','3508','Venezuela');
INSERT INTO `Orders` VALUES (10824,'FOLKO',8,"1/9/1998 12:00:00 AM","2/6/1998 12:00:00 AM","1/30/1998 12:00:00 AM",1,1.23,'Folk och f? HB','?kergatan 24','Br?cke',NULL,'S-844 67','Sweden');
INSERT INTO `Orders` VALUES (10825,'DRACD',1,"1/9/1998 12:00:00 AM","2/6/1998 12:00:00 AM","1/14/1998 12:00:00 AM",1,79.25,'Drachenblut Delikatessen','Walserweg 21','Aachen',NULL,'52066','Germany');
INSERT INTO `Orders` VALUES (10826,'BLONP',6,"1/12/1998 12:00:00 AM","2/9/1998 12:00:00 AM","2/6/1998 12:00:00 AM",1,7.09,'Blondel p?re et fils','24, place Kl?ber','Strasbourg',NULL,'67000','France');
INSERT INTO `Orders` VALUES (10827,'BONAP',1,"1/12/1998 12:00:00 AM","1/26/1998 12:00:00 AM","2/6/1998 12:00:00 AM",2,63.54,'Bon app''','12, rue des Bouchers','Marseille',NULL,'13008','France');
INSERT INTO `Orders` VALUES (10828,'RANCH',9,"1/13/1998 12:00:00 AM","1/27/1998 12:00:00 AM","2/4/1998 12:00:00 AM",1,90.85,'Rancho grande','Av. del Libertador 900','Buenos Aires',NULL,'1010','Argentina');
INSERT INTO `Orders` VALUES (10829,'ISLAT',9,"1/13/1998 12:00:00 AM","2/10/1998 12:00:00 AM","1/23/1998 12:00:00 AM",1,154.72,'Island Trading','Garden House Crowther Way','Cowes','Isle of Wight','PO31 7PJ','UK');
INSERT INTO `Orders` VALUES (10830,'TRADH',4,"1/13/1998 12:00:00 AM","2/24/1998 12:00:00 AM","1/21/1998 12:00:00 AM",2,81.83,'Tradi?ao Hipermercados','Av. In?s de Castro, 414','Sao Paulo','SP','05634-030','Brazil');
INSERT INTO `Orders` VALUES (10831,'SANTG',3,"1/14/1998 12:00:00 AM","2/11/1998 12:00:00 AM","1/23/1998 12:00:00 AM",2,72.19,'Sant? Gourmet','Erling Skakkes gate 78','Stavern',NULL,'4110','Norway');
INSERT INTO `Orders` VALUES (10832,'LAMAI',2,"1/14/1998 12:00:00 AM","2/11/1998 12:00:00 AM","1/19/1998 12:00:00 AM",2,43.26,'La maison d''Asie','1 rue Alsace-Lorraine','Toulouse',NULL,'31000','France');
INSERT INTO `Orders` VALUES (10833,'OTTIK',6,"1/15/1998 12:00:00 AM","2/12/1998 12:00:00 AM","1/23/1998 12:00:00 AM",2,71.49,'Ottilies K?seladen','Mehrheimerstr. 369','K?ln',NULL,'50739','Germany');
INSERT INTO `Orders` VALUES (10834,'TRADH',1,"1/15/1998 12:00:00 AM","2/12/1998 12:00:00 AM","1/19/1998 12:00:00 AM",3,29.78,'Tradi?ao Hipermercados','Av. In?s de Castro, 414','Sao Paulo','SP','05634-030','Brazil');
INSERT INTO `Orders` VALUES (10835,'ALFKI',1,"1/15/1998 12:00:00 AM","2/12/1998 12:00:00 AM","1/21/1998 12:00:00 AM",3,69.53,'Alfred''s Futterkiste','Obere Str. 57','Berlin',NULL,'12209','Germany');
INSERT INTO `Orders` VALUES (10836,'ERNSH',7,"1/16/1998 12:00:00 AM","2/13/1998 12:00:00 AM","1/21/1998 12:00:00 AM",1,411.88,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria');
INSERT INTO `Orders` VALUES (10837,'BERGS',9,"1/16/1998 12:00:00 AM","2/13/1998 12:00:00 AM","1/23/1998 12:00:00 AM",3,13.32,'Berglunds snabbk?p','Berguvsv?gen  8','Lule?',NULL,'S-958 22','Sweden');
INSERT INTO `Orders` VALUES (10838,'LINOD',3,"1/19/1998 12:00:00 AM","2/16/1998 12:00:00 AM","1/23/1998 12:00:00 AM",3,59.28,'LINO-Delicateses','Ave. 5 de Mayo Porlamar','I. de Margarita','Nueva Esparta','4980','Venezuela');
INSERT INTO `Orders` VALUES (10839,'TRADH',3,"1/19/1998 12:00:00 AM","2/16/1998 12:00:00 AM","1/22/1998 12:00:00 AM",3,35.43,'Tradi?ao Hipermercados','Av. In?s de Castro, 414','Sao Paulo','SP','05634-030','Brazil');
INSERT INTO `Orders` VALUES (10840,'LINOD',4,"1/19/1998 12:00:00 AM","3/2/1998 12:00:00 AM","2/16/1998 12:00:00 AM",2,2.71,'LINO-Delicateses','Ave. 5 de Mayo Porlamar','I. de Margarita','Nueva Esparta','4980','Venezuela');
INSERT INTO `Orders` VALUES (10841,'SUPRD',5,"1/20/1998 12:00:00 AM","2/17/1998 12:00:00 AM","1/29/1998 12:00:00 AM",2,424.3,'Supr?mes d?lices','Boulevard Tirou, 255','Charleroi',NULL,'B-6000','Belgium');
INSERT INTO `Orders` VALUES (10842,'TORTU',1,"1/20/1998 12:00:00 AM","2/17/1998 12:00:00 AM","1/29/1998 12:00:00 AM",3,54.42,'Tortuga Restaurante','Avda. Azteca 123','M?xico D.F.',NULL,'05033','Mexico');
INSERT INTO `Orders` VALUES (10843,'VICTE',4,"1/21/1998 12:00:00 AM","2/18/1998 12:00:00 AM","1/26/1998 12:00:00 AM",2,9.26,'Victuailles en stock','2, rue du Commerce','Lyon',NULL,'69004','France');
INSERT INTO `Orders` VALUES (10844,'PICCO',8,"1/21/1998 12:00:00 AM","2/18/1998 12:00:00 AM","1/26/1998 12:00:00 AM",2,25.22,'Piccolo und mehr','Geislweg 14','Salzburg',NULL,'5020','Austria');
INSERT INTO `Orders` VALUES (10845,'QUICK',8,"1/21/1998 12:00:00 AM","2/4/1998 12:00:00 AM","1/30/1998 12:00:00 AM",1,212.98,'QUICK-Stop','Taucherstra?e 10','Cunewalde',NULL,'01307','Germany');
INSERT INTO `Orders` VALUES (10846,'SUPRD',2,"1/22/1998 12:00:00 AM","3/5/1998 12:00:00 AM","1/23/1998 12:00:00 AM",3,56.46,'Supr?mes d?lices','Boulevard Tirou, 255','Charleroi',NULL,'B-6000','Belgium');
INSERT INTO `Orders` VALUES (10847,'SAVEA',4,"1/22/1998 12:00:00 AM","2/5/1998 12:00:00 AM","2/10/1998 12:00:00 AM",3,487.57,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA');
INSERT INTO `Orders` VALUES (10848,'CONSH',7,"1/23/1998 12:00:00 AM","2/20/1998 12:00:00 AM","1/29/1998 12:00:00 AM",2,38.24,'Consolidated Holdings','Berkeley Gardens 12  Brewery','London',NULL,'WX1 6LT','UK');
INSERT INTO `Orders` VALUES (10849,'KOENE',9,"1/23/1998 12:00:00 AM","2/20/1998 12:00:00 AM","1/30/1998 12:00:00 AM",2,0.56,'K?niglich Essen','Maubelstr. 90','Brandenburg',NULL,'14776','Germany');
INSERT INTO `Orders` VALUES (10850,'VICTE',1,"1/23/1998 12:00:00 AM","3/6/1998 12:00:00 AM","1/30/1998 12:00:00 AM",1,49.19,'Victuailles en stock','2, rue du Commerce','Lyon',NULL,'69004','France');
INSERT INTO `Orders` VALUES (10851,'RICAR',5,"1/26/1998 12:00:00 AM","2/23/1998 12:00:00 AM","2/2/1998 12:00:00 AM",1,160.55,'Ricardo Adocicados','Av. Copacabana, 267','Rio de Janeiro','RJ','02389-890','Brazil');
INSERT INTO `Orders` VALUES (10852,'RATTC',8,"1/26/1998 12:00:00 AM","2/9/1998 12:00:00 AM","1/30/1998 12:00:00 AM",1,174.05,'Rattlesnake Canyon Grocery','2817 Milton Dr.','Albuquerque','NM','87110','USA');
INSERT INTO `Orders` VALUES (10853,'BLAUS',9,"1/27/1998 12:00:00 AM","2/24/1998 12:00:00 AM","2/3/1998 12:00:00 AM",2,53.83,'Blauer See Delikatessen','Forsterstr. 57','Mannheim',NULL,'68306','Germany');
INSERT INTO `Orders` VALUES (10854,'ERNSH',3,"1/27/1998 12:00:00 AM","2/24/1998 12:00:00 AM","2/5/1998 12:00:00 AM",2,100.22,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria');
INSERT INTO `Orders` VALUES (10855,'OLDWO',3,"1/27/1998 12:00:00 AM","2/24/1998 12:00:00 AM","2/4/1998 12:00:00 AM",1,170.97,'Old World Delicatessen','2743 Bering St.','Anchorage','AK','99508','USA');
INSERT INTO `Orders` VALUES (10856,'ANTON',3,"1/28/1998 12:00:00 AM","2/25/1998 12:00:00 AM","2/10/1998 12:00:00 AM",2,58.43,'Antonio Moreno Taquer?a','Mataderos  2312','M?xico D.F.',NULL,'05023','Mexico');
INSERT INTO `Orders` VALUES (10857,'BERGS',8,"1/28/1998 12:00:00 AM","2/25/1998 12:00:00 AM","2/6/1998 12:00:00 AM",2,188.85,'Berglunds snabbk?p','Berguvsv?gen  8','Lule?',NULL,'S-958 22','Sweden');
INSERT INTO `Orders` VALUES (10858,'LACOR',2,"1/29/1998 12:00:00 AM","2/26/1998 12:00:00 AM","2/3/1998 12:00:00 AM",1,52.51,'La corne d''abondance','67, avenue de l''Europe','Versailles',NULL,'78000','France');
INSERT INTO `Orders` VALUES (10859,'FRANK',1,"1/29/1998 12:00:00 AM","2/26/1998 12:00:00 AM","2/2/1998 12:00:00 AM",2,76.1,'Frankenversand','Berliner Platz 43','M?nchen',NULL,'80805','Germany');
INSERT INTO `Orders` VALUES (10860,'FRANR',3,"1/29/1998 12:00:00 AM","2/26/1998 12:00:00 AM","2/4/1998 12:00:00 AM",3,19.26,'France restauration','54, rue Royale','Nantes',NULL,'44000','France');
INSERT INTO `Orders` VALUES (10861,'WHITC',4,"1/30/1998 12:00:00 AM","2/27/1998 12:00:00 AM","2/17/1998 12:00:00 AM",2,14.93,'White Clover Markets','1029 - 12th Ave. S.','Seattle','WA','98124','USA');
INSERT INTO `Orders` VALUES (10862,'LEHMS',8,"1/30/1998 12:00:00 AM","3/13/1998 12:00:00 AM","2/2/1998 12:00:00 AM",2,53.23,'Lehmanns Marktstand','Magazinweg 7','Frankfurt a.M.',NULL,'60528','Germany');
INSERT INTO `Orders` VALUES (10863,'HILAA',4,"2/2/1998 12:00:00 AM","3/2/1998 12:00:00 AM","2/17/1998 12:00:00 AM",2,30.26,'HILARION-Abastos','Carrera 22 con Ave. Carlos Soublette #8-35','San Crist?bal','T?chira','5022','Venezuela');
INSERT INTO `Orders` VALUES (10864,'AROUT',4,"2/2/1998 12:00:00 AM","3/2/1998 12:00:00 AM","2/9/1998 12:00:00 AM",2,3.04,'Around the Horn','Brook Farm Stratford St. Mary','Colchester','Essex','CO7 6JX','UK');
INSERT INTO `Orders` VALUES (10865,'QUICK',2,"2/2/1998 12:00:00 AM","2/16/1998 12:00:00 AM","2/12/1998 12:00:00 AM",1,348.14,'QUICK-Stop','Taucherstra?e 10','Cunewalde',NULL,'01307','Germany');
INSERT INTO `Orders` VALUES (10866,'BERGS',5,"2/3/1998 12:00:00 AM","3/3/1998 12:00:00 AM","2/12/1998 12:00:00 AM",1,109.11,'Berglunds snabbk?p','Berguvsv?gen  8','Lule?',NULL,'S-958 22','Sweden');
INSERT INTO `Orders` VALUES (10867,'LONEP',6,"2/3/1998 12:00:00 AM","3/17/1998 12:00:00 AM","2/11/1998 12:00:00 AM",1,1.93,'Lonesome Pine Restaurant','89 Chiaroscuro Rd.','Portland','OR','97219','USA');
INSERT INTO `Orders` VALUES (10868,'QUEEN',7,"2/4/1998 12:00:00 AM","3/4/1998 12:00:00 AM","2/23/1998 12:00:00 AM",2,191.27,'Queen Cozinha','Alameda dos Can?rios, 891','Sao Paulo','SP','05487-020','Brazil');
INSERT INTO `Orders` VALUES (10869,'SEVES',5,"2/4/1998 12:00:00 AM","3/4/1998 12:00:00 AM","2/9/1998 12:00:00 AM",1,143.28,'Seven Seas Imports','90 Wadhurst Rd.','London',NULL,'OX15 4NB','UK');
INSERT INTO `Orders` VALUES (10870,'WOLZA',5,"2/4/1998 12:00:00 AM","3/4/1998 12:00:00 AM","2/13/1998 12:00:00 AM",3,12.04,'Wolski Zajazd','ul. Filtrowa 68','Warszawa',NULL,'01-012','Poland');
INSERT INTO `Orders` VALUES (10871,'BONAP',9,"2/5/1998 12:00:00 AM","3/5/1998 12:00:00 AM","2/10/1998 12:00:00 AM",2,112.27,'Bon app''','12, rue des Bouchers','Marseille',NULL,'13008','France');
INSERT INTO `Orders` VALUES (10872,'GODOS',5,"2/5/1998 12:00:00 AM","3/5/1998 12:00:00 AM","2/9/1998 12:00:00 AM",2,175.32,'Godos Cocina T?pica','C/ Romero, 33','Sevilla',NULL,'41101','Spain');
INSERT INTO `Orders` VALUES (10873,'WILMK',4,"2/6/1998 12:00:00 AM","3/6/1998 12:00:00 AM","2/9/1998 12:00:00 AM",1,0.82,'Wilman Kala','Keskuskatu 45','Helsinki',NULL,'21240','Finland');
INSERT INTO `Orders` VALUES (10874,'GODOS',5,"2/6/1998 12:00:00 AM","3/6/1998 12:00:00 AM","2/11/1998 12:00:00 AM",2,19.58,'Godos Cocina T?pica','C/ Romero, 33','Sevilla',NULL,'41101','Spain');
INSERT INTO `Orders` VALUES (10875,'BERGS',4,"2/6/1998 12:00:00 AM","3/6/1998 12:00:00 AM","3/3/1998 12:00:00 AM",2,32.37,'Berglunds snabbk?p','Berguvsv?gen  8','Lule?',NULL,'S-958 22','Sweden');
INSERT INTO `Orders` VALUES (10876,'BONAP',7,"2/9/1998 12:00:00 AM","3/9/1998 12:00:00 AM","2/12/1998 12:00:00 AM",3,60.42,'Bon app''','12, rue des Bouchers','Marseille',NULL,'13008','France');
INSERT INTO `Orders` VALUES (10877,'RICAR',1,"2/9/1998 12:00:00 AM","3/9/1998 12:00:00 AM","2/19/1998 12:00:00 AM",1,38.06,'Ricardo Adocicados','Av. Copacabana, 267','Rio de Janeiro','RJ','02389-890','Brazil');
INSERT INTO `Orders` VALUES (10878,'QUICK',4,"2/10/1998 12:00:00 AM","3/10/1998 12:00:00 AM","2/12/1998 12:00:00 AM",1,46.69,'QUICK-Stop','Taucherstra?e 10','Cunewalde',NULL,'01307','Germany');
INSERT INTO `Orders` VALUES (10879,'WILMK',3,"2/10/1998 12:00:00 AM","3/10/1998 12:00:00 AM","2/12/1998 12:00:00 AM",3,8.5,'Wilman Kala','Keskuskatu 45','Helsinki',NULL,'21240','Finland');
INSERT INTO `Orders` VALUES (10880,'FOLKO',7,"2/10/1998 12:00:00 AM","3/24/1998 12:00:00 AM","2/18/1998 12:00:00 AM",1,88.01,'Folk och f? HB','?kergatan 24','Br?cke',NULL,'S-844 67','Sweden');
INSERT INTO `Orders` VALUES (10881,'CACTU',4,"2/11/1998 12:00:00 AM","3/11/1998 12:00:00 AM","2/18/1998 12:00:00 AM",1,2.84,'Cactus Comidas para llevar','Cerrito 333','Buenos Aires',NULL,'1010','Argentina');
INSERT INTO `Orders` VALUES (10882,'SAVEA',4,"2/11/1998 12:00:00 AM","3/11/1998 12:00:00 AM","2/20/1998 12:00:00 AM",3,23.1,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA');
INSERT INTO `Orders` VALUES (10883,'LONEP',8,"2/12/1998 12:00:00 AM","3/12/1998 12:00:00 AM","2/20/1998 12:00:00 AM",3,0.53,'Lonesome Pine Restaurant','89 Chiaroscuro Rd.','Portland','OR','97219','USA');
INSERT INTO `Orders` VALUES (10884,'LETSS',4,"2/12/1998 12:00:00 AM","3/12/1998 12:00:00 AM","2/13/1998 12:00:00 AM",2,90.97,'Let''s Stop N Shop','87 Polk St. Suite 5','San Francisco','CA','94117','USA');
INSERT INTO `Orders` VALUES (10885,'SUPRD',6,"2/12/1998 12:00:00 AM","3/12/1998 12:00:00 AM","2/18/1998 12:00:00 AM",3,5.64,'Supr?mes d?lices','Boulevard Tirou, 255','Charleroi',NULL,'B-6000','Belgium');
INSERT INTO `Orders` VALUES (10886,'HANAR',1,"2/13/1998 12:00:00 AM","3/13/1998 12:00:00 AM","3/2/1998 12:00:00 AM",1,4.99,'Hanari Carnes','Rua do Pa?o, 67','Rio de Janeiro','RJ','05454-876','Brazil');
INSERT INTO `Orders` VALUES (10887,'GALED',8,"2/13/1998 12:00:00 AM","3/13/1998 12:00:00 AM","2/16/1998 12:00:00 AM",3,1.25,'Galer?a del gastron?mo','Rambla de Catalu?a, 23','Barcelona',NULL,'8022','Spain');
INSERT INTO `Orders` VALUES (10888,'GODOS',1,"2/16/1998 12:00:00 AM","3/16/1998 12:00:00 AM","2/23/1998 12:00:00 AM",2,51.87,'Godos Cocina T?pica','C/ Romero, 33','Sevilla',NULL,'41101','Spain');
INSERT INTO `Orders` VALUES (10889,'RATTC',9,"2/16/1998 12:00:00 AM","3/16/1998 12:00:00 AM","2/23/1998 12:00:00 AM",3,280.61,'Rattlesnake Canyon Grocery','2817 Milton Dr.','Albuquerque','NM','87110','USA');
INSERT INTO `Orders` VALUES (10890,'DUMON',7,"2/16/1998 12:00:00 AM","3/16/1998 12:00:00 AM","2/18/1998 12:00:00 AM",1,32.76,'Du monde entier','67, rue des Cinquante Otages','Nantes',NULL,'44000','France');
INSERT INTO `Orders` VALUES (10891,'LEHMS',7,"2/17/1998 12:00:00 AM","3/17/1998 12:00:00 AM","2/19/1998 12:00:00 AM",2,20.37,'Lehmanns Marktstand','Magazinweg 7','Frankfurt a.M.',NULL,'60528','Germany');
INSERT INTO `Orders` VALUES (10892,'MAISD',4,"2/17/1998 12:00:00 AM","3/17/1998 12:00:00 AM","2/19/1998 12:00:00 AM",2,120.27,'Maison Dewey','Rue Joseph-Bens 532','Bruxelles',NULL,'B-1180','Belgium');
INSERT INTO `Orders` VALUES (10893,'KOENE',9,"2/18/1998 12:00:00 AM","3/18/1998 12:00:00 AM","2/20/1998 12:00:00 AM",2,77.78,'K?niglich Essen','Maubelstr. 90','Brandenburg',NULL,'14776','Germany');
INSERT INTO `Orders` VALUES (10894,'SAVEA',1,"2/18/1998 12:00:00 AM","3/18/1998 12:00:00 AM","2/20/1998 12:00:00 AM",1,116.13,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA');
INSERT INTO `Orders` VALUES (10895,'ERNSH',3,"2/18/1998 12:00:00 AM","3/18/1998 12:00:00 AM","2/23/1998 12:00:00 AM",1,162.75,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria');
INSERT INTO `Orders` VALUES (10896,'MAISD',7,"2/19/1998 12:00:00 AM","3/19/1998 12:00:00 AM","2/27/1998 12:00:00 AM",3,32.45,'Maison Dewey','Rue Joseph-Bens 532','Bruxelles',NULL,'B-1180','Belgium');
INSERT INTO `Orders` VALUES (10897,'HUNGO',3,"2/19/1998 12:00:00 AM","3/19/1998 12:00:00 AM","2/25/1998 12:00:00 AM",2,603.54,'Hungry Owl All-Night Grocers','8 Johnstown Road','Cork','Co. Cork',NULL,'Ireland');
INSERT INTO `Orders` VALUES (10898,'OCEAN',4,"2/20/1998 12:00:00 AM","3/20/1998 12:00:00 AM","3/6/1998 12:00:00 AM",2,1.27,'Oc?ano Atl?ntico Ltda.','Ing. Gustavo Moncada 8585 Piso 20-A','Buenos Aires',NULL,'1010','Argentina');
INSERT INTO `Orders` VALUES (10899,'LILAS',5,"2/20/1998 12:00:00 AM","3/20/1998 12:00:00 AM","2/26/1998 12:00:00 AM",3,1.21,'LILA-Supermercado','Carrera 52 con Ave. Bol?var #65-98 Llano Largo','Barquisimeto','Lara','3508','Venezuela');
INSERT INTO `Orders` VALUES (10900,'WELLI',1,"2/20/1998 12:00:00 AM","3/20/1998 12:00:00 AM","3/4/1998 12:00:00 AM",2,1.66,'Wellington Importadora','Rua do Mercado, 12','Resende','SP','08737-363','Brazil');
INSERT INTO `Orders` VALUES (10901,'HILAA',4,"2/23/1998 12:00:00 AM","3/23/1998 12:00:00 AM","2/26/1998 12:00:00 AM",1,62.09,'HILARION-Abastos','Carrera 22 con Ave. Carlos Soublette #8-35','San Crist?bal','T?chira','5022','Venezuela');
INSERT INTO `Orders` VALUES (10902,'FOLKO',1,"2/23/1998 12:00:00 AM","3/23/1998 12:00:00 AM","3/3/1998 12:00:00 AM",1,44.15,'Folk och f? HB','?kergatan 24','Br?cke',NULL,'S-844 67','Sweden');
INSERT INTO `Orders` VALUES (10903,'HANAR',3,"2/24/1998 12:00:00 AM","3/24/1998 12:00:00 AM","3/4/1998 12:00:00 AM",3,36.71,'Hanari Carnes','Rua do Pa?o, 67','Rio de Janeiro','RJ','05454-876','Brazil');
INSERT INTO `Orders` VALUES (10904,'WHITC',3,"2/24/1998 12:00:00 AM","3/24/1998 12:00:00 AM","2/27/1998 12:00:00 AM",3,162.95,'White Clover Markets','1029 - 12th Ave. S.','Seattle','WA','98124','USA');
INSERT INTO `Orders` VALUES (10905,'WELLI',9,"2/24/1998 12:00:00 AM","3/24/1998 12:00:00 AM","3/6/1998 12:00:00 AM",2,13.72,'Wellington Importadora','Rua do Mercado, 12','Resende','SP','08737-363','Brazil');
INSERT INTO `Orders` VALUES (10906,'WOLZA',4,"2/25/1998 12:00:00 AM","3/11/1998 12:00:00 AM","3/3/1998 12:00:00 AM",3,26.29,'Wolski Zajazd','ul. Filtrowa 68','Warszawa',NULL,'01-012','Poland');
INSERT INTO `Orders` VALUES (10907,'SPECD',6,"2/25/1998 12:00:00 AM","3/25/1998 12:00:00 AM","2/27/1998 12:00:00 AM",3,9.19,'Sp?cialit?s du monde','25, rue Lauriston','Paris',NULL,'75016','France');
INSERT INTO `Orders` VALUES (10908,'REGGC',4,"2/26/1998 12:00:00 AM","3/26/1998 12:00:00 AM","3/6/1998 12:00:00 AM",2,32.96,'Reggiani Caseifici','Strada Provinciale 124','Reggio Emilia',NULL,'42100','Italy');
INSERT INTO `Orders` VALUES (10909,'SANTG',1,"2/26/1998 12:00:00 AM","3/26/1998 12:00:00 AM","3/10/1998 12:00:00 AM",2,53.05,'Sant? Gourmet','Erling Skakkes gate 78','Stavern',NULL,'4110','Norway');
INSERT INTO `Orders` VALUES (10910,'WILMK',1,"2/26/1998 12:00:00 AM","3/26/1998 12:00:00 AM","3/4/1998 12:00:00 AM",3,38.11,'Wilman Kala','Keskuskatu 45','Helsinki',NULL,'21240','Finland');
INSERT INTO `Orders` VALUES (10911,'GODOS',3,"2/26/1998 12:00:00 AM","3/26/1998 12:00:00 AM","3/5/1998 12:00:00 AM",1,38.19,'Godos Cocina T?pica','C/ Romero, 33','Sevilla',NULL,'41101','Spain');
INSERT INTO `Orders` VALUES (10912,'HUNGO',2,"2/26/1998 12:00:00 AM","3/26/1998 12:00:00 AM","3/18/1998 12:00:00 AM",2,580.91,'Hungry Owl All-Night Grocers','8 Johnstown Road','Cork','Co. Cork',NULL,'Ireland');
INSERT INTO `Orders` VALUES (10913,'QUEEN',4,"2/26/1998 12:00:00 AM","3/26/1998 12:00:00 AM","3/4/1998 12:00:00 AM",1,33.05,'Queen Cozinha','Alameda dos Can?rios, 891','Sao Paulo','SP','05487-020','Brazil');
INSERT INTO `Orders` VALUES (10914,'QUEEN',6,"2/27/1998 12:00:00 AM","3/27/1998 12:00:00 AM","3/2/1998 12:00:00 AM",1,21.19,'Queen Cozinha','Alameda dos Can?rios, 891','Sao Paulo','SP','05487-020','Brazil');
INSERT INTO `Orders` VALUES (10915,'TORTU',2,"2/27/1998 12:00:00 AM","3/27/1998 12:00:00 AM","3/2/1998 12:00:00 AM",2,3.51,'Tortuga Restaurante','Avda. Azteca 123','M?xico D.F.',NULL,'05033','Mexico');
INSERT INTO `Orders` VALUES (10916,'RANCH',1,"2/27/1998 12:00:00 AM","3/27/1998 12:00:00 AM","3/9/1998 12:00:00 AM",2,63.77,'Rancho grande','Av. del Libertador 900','Buenos Aires',NULL,'1010','Argentina');
INSERT INTO `Orders` VALUES (10917,'ROMEY',4,"3/2/1998 12:00:00 AM","3/30/1998 12:00:00 AM","3/11/1998 12:00:00 AM",2,8.29,'Romero y tomillo','Gran V?a, 1','Madrid',NULL,'28001','Spain');
INSERT INTO `Orders` VALUES (10918,'BOTTM',3,"3/2/1998 12:00:00 AM","3/30/1998 12:00:00 AM","3/11/1998 12:00:00 AM",3,48.83,'Bottom-Dollar Markets','23 Tsawassen Blvd.','Tsawassen','BC','T2F 8M4','Canada');
INSERT INTO `Orders` VALUES (10919,'LINOD',2,"3/2/1998 12:00:00 AM","3/30/1998 12:00:00 AM","3/4/1998 12:00:00 AM",2,19.8,'LINO-Delicateses','Ave. 5 de Mayo Porlamar','I. de Margarita','Nueva Esparta','4980','Venezuela');
INSERT INTO `Orders` VALUES (10920,'AROUT',4,"3/3/1998 12:00:00 AM","3/31/1998 12:00:00 AM","3/9/1998 12:00:00 AM",2,29.61,'Around the Horn','Brook Farm Stratford St. Mary','Colchester','Essex','CO7 6JX','UK');
INSERT INTO `Orders` VALUES (10921,'VAFFE',1,"3/3/1998 12:00:00 AM","4/14/1998 12:00:00 AM","3/9/1998 12:00:00 AM",1,176.48,'Vaffeljernet','Smagsloget 45','?rhus',NULL,'8200','Denmark');
INSERT INTO `Orders` VALUES (10922,'HANAR',5,"3/3/1998 12:00:00 AM","3/31/1998 12:00:00 AM","3/5/1998 12:00:00 AM",3,62.74,'Hanari Carnes','Rua do Pa?o, 67','Rio de Janeiro','RJ','05454-876','Brazil');
INSERT INTO `Orders` VALUES (10923,'LAMAI',7,"3/3/1998 12:00:00 AM","4/14/1998 12:00:00 AM","3/13/1998 12:00:00 AM",3,68.26,'La maison d''Asie','1 rue Alsace-Lorraine','Toulouse',NULL,'31000','France');
INSERT INTO `Orders` VALUES (10924,'BERGS',3,"3/4/1998 12:00:00 AM","4/1/1998 12:00:00 AM","4/8/1998 12:00:00 AM",2,151.52,'Berglunds snabbk?p','Berguvsv?gen  8','Lule?',NULL,'S-958 22','Sweden');
INSERT INTO `Orders` VALUES (10925,'HANAR',3,"3/4/1998 12:00:00 AM","4/1/1998 12:00:00 AM","3/13/1998 12:00:00 AM",1,2.27,'Hanari Carnes','Rua do Pa?o, 67','Rio de Janeiro','RJ','05454-876','Brazil');
INSERT INTO `Orders` VALUES (10926,'ANATR',4,"3/4/1998 12:00:00 AM","4/1/1998 12:00:00 AM","3/11/1998 12:00:00 AM",3,39.92,'Ana Trujillo Emparedados y helados','Avda. de la Constituci?n 2222','M?xico D.F.',NULL,'05021','Mexico');
INSERT INTO `Orders` VALUES (10927,'LACOR',4,"3/5/1998 12:00:00 AM","4/2/1998 12:00:00 AM","4/8/1998 12:00:00 AM",1,19.79,'La corne d''abondance','67, avenue de l''Europe','Versailles',NULL,'78000','France');
INSERT INTO `Orders` VALUES (10928,'GALED',1,"3/5/1998 12:00:00 AM","4/2/1998 12:00:00 AM","3/18/1998 12:00:00 AM",1,1.36,'Galer?a del gastron?mo','Rambla de Catalu?a, 23','Barcelona',NULL,'8022','Spain');
INSERT INTO `Orders` VALUES (10929,'FRANK',6,"3/5/1998 12:00:00 AM","4/2/1998 12:00:00 AM","3/12/1998 12:00:00 AM",1,33.93,'Frankenversand','Berliner Platz 43','M?nchen',NULL,'80805','Germany');
INSERT INTO `Orders` VALUES (10930,'SUPRD',4,"3/6/1998 12:00:00 AM","4/17/1998 12:00:00 AM","3/18/1998 12:00:00 AM",3,15.55,'Supr?mes d?lices','Boulevard Tirou, 255','Charleroi',NULL,'B-6000','Belgium');
INSERT INTO `Orders` VALUES (10931,'RICSU',4,"3/6/1998 12:00:00 AM","3/20/1998 12:00:00 AM","3/19/1998 12:00:00 AM",2,13.6,'Richter Supermarkt','Starenweg 5','Gen?ve',NULL,'1204','Switzerland');
INSERT INTO `Orders` VALUES (10932,'BONAP',8,"3/6/1998 12:00:00 AM","4/3/1998 12:00:00 AM","3/24/1998 12:00:00 AM",1,134.64,'Bon app''','12, rue des Bouchers','Marseille',NULL,'13008','France');
INSERT INTO `Orders` VALUES (10933,'ISLAT',6,"3/6/1998 12:00:00 AM","4/3/1998 12:00:00 AM","3/16/1998 12:00:00 AM",3,54.15,'Island Trading','Garden House Crowther Way','Cowes','Isle of Wight','PO31 7PJ','UK');
INSERT INTO `Orders` VALUES (10934,'LEHMS',3,"3/9/1998 12:00:00 AM","4/6/1998 12:00:00 AM","3/12/1998 12:00:00 AM",3,32.01,'Lehmanns Marktstand','Magazinweg 7','Frankfurt a.M.',NULL,'60528','Germany');
INSERT INTO `Orders` VALUES (10935,'WELLI',4,"3/9/1998 12:00:00 AM","4/6/1998 12:00:00 AM","3/18/1998 12:00:00 AM",3,47.59,'Wellington Importadora','Rua do Mercado, 12','Resende','SP','08737-363','Brazil');
INSERT INTO `Orders` VALUES (10936,'GREAL',3,"3/9/1998 12:00:00 AM","4/6/1998 12:00:00 AM","3/18/1998 12:00:00 AM",2,33.68,'Great Lakes Food Market','2732 Baker Blvd.','Eugene','OR','97403','USA');
INSERT INTO `Orders` VALUES (10937,'CACTU',7,"3/10/1998 12:00:00 AM","3/24/1998 12:00:00 AM","3/13/1998 12:00:00 AM",3,31.51,'Cactus Comidas para llevar','Cerrito 333','Buenos Aires',NULL,'1010','Argentina');
INSERT INTO `Orders` VALUES (10938,'QUICK',3,"3/10/1998 12:00:00 AM","4/7/1998 12:00:00 AM","3/16/1998 12:00:00 AM",2,31.89,'QUICK-Stop','Taucherstra?e 10','Cunewalde',NULL,'01307','Germany');
INSERT INTO `Orders` VALUES (10939,'MAGAA',2,"3/10/1998 12:00:00 AM","4/7/1998 12:00:00 AM","3/13/1998 12:00:00 AM",2,76.33,'Magazzini Alimentari Riuniti','Via Ludovico il Moro 22','Bergamo',NULL,'24100','Italy');
INSERT INTO `Orders` VALUES (10940,'BONAP',8,"3/11/1998 12:00:00 AM","4/8/1998 12:00:00 AM","3/23/1998 12:00:00 AM",3,19.77,'Bon app''','12, rue des Bouchers','Marseille',NULL,'13008','France');
INSERT INTO `Orders` VALUES (10941,'SAVEA',7,"3/11/1998 12:00:00 AM","4/8/1998 12:00:00 AM","3/20/1998 12:00:00 AM",2,400.81,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA');
INSERT INTO `Orders` VALUES (10942,'REGGC',9,"3/11/1998 12:00:00 AM","4/8/1998 12:00:00 AM","3/18/1998 12:00:00 AM",3,17.95,'Reggiani Caseifici','Strada Provinciale 124','Reggio Emilia',NULL,'42100','Italy');
INSERT INTO `Orders` VALUES (10943,'BSBEV',4,"3/11/1998 12:00:00 AM","4/8/1998 12:00:00 AM","3/19/1998 12:00:00 AM",2,2.17,'B''s Beverages','Fauntleroy Circus','London',NULL,'EC2 5NT','UK');
INSERT INTO `Orders` VALUES (10944,'BOTTM',6,"3/12/1998 12:00:00 AM","3/26/1998 12:00:00 AM","3/13/1998 12:00:00 AM",3,52.92,'Bottom-Dollar Markets','23 Tsawassen Blvd.','Tsawassen','BC','T2F 8M4','Canada');
INSERT INTO `Orders` VALUES (10945,'MORGK',4,"3/12/1998 12:00:00 AM","4/9/1998 12:00:00 AM","3/18/1998 12:00:00 AM",1,10.22,'Morgenstern Gesundkost','Heerstr. 22','Leipzig',NULL,'04179','Germany');
INSERT INTO `Orders` VALUES (10946,'VAFFE',1,"3/12/1998 12:00:00 AM","4/9/1998 12:00:00 AM","3/19/1998 12:00:00 AM",2,27.2,'Vaffeljernet','Smagsloget 45','?rhus',NULL,'8200','Denmark');
INSERT INTO `Orders` VALUES (10947,'BSBEV',3,"3/13/1998 12:00:00 AM","4/10/1998 12:00:00 AM","3/16/1998 12:00:00 AM",2,3.26,'B''s Beverages','Fauntleroy Circus','London',NULL,'EC2 5NT','UK');
INSERT INTO `Orders` VALUES (10948,'GODOS',3,"3/13/1998 12:00:00 AM","4/10/1998 12:00:00 AM","3/19/1998 12:00:00 AM",3,23.39,'Godos Cocina T?pica','C/ Romero, 33','Sevilla',NULL,'41101','Spain');
INSERT INTO `Orders` VALUES (10949,'BOTTM',2,"3/13/1998 12:00:00 AM","4/10/1998 12:00:00 AM","3/17/1998 12:00:00 AM",3,74.44,'Bottom-Dollar Markets','23 Tsawassen Blvd.','Tsawassen','BC','T2F 8M4','Canada');
INSERT INTO `Orders` VALUES (10950,'MAGAA',1,"3/16/1998 12:00:00 AM","4/13/1998 12:00:00 AM","3/23/1998 12:00:00 AM",2,2.5,'Magazzini Alimentari Riuniti','Via Ludovico il Moro 22','Bergamo',NULL,'24100','Italy');
INSERT INTO `Orders` VALUES (10951,'RICSU',9,"3/16/1998 12:00:00 AM","4/27/1998 12:00:00 AM","4/7/1998 12:00:00 AM",2,30.85,'Richter Supermarkt','Starenweg 5','Gen?ve',NULL,'1204','Switzerland');
INSERT INTO `Orders` VALUES (10952,'ALFKI',1,"3/16/1998 12:00:00 AM","4/27/1998 12:00:00 AM","3/24/1998 12:00:00 AM",1,40.42,'Alfred''s Futterkiste','Obere Str. 57','Berlin',NULL,'12209','Germany');
INSERT INTO `Orders` VALUES (10953,'AROUT',9,"3/16/1998 12:00:00 AM","3/30/1998 12:00:00 AM","3/25/1998 12:00:00 AM",2,23.72,'Around the Horn','Brook Farm Stratford St. Mary','Colchester','Essex','CO7 6JX','UK');
INSERT INTO `Orders` VALUES (10954,'LINOD',5,"3/17/1998 12:00:00 AM","4/28/1998 12:00:00 AM","3/20/1998 12:00:00 AM",1,27.91,'LINO-Delicateses','Ave. 5 de Mayo Porlamar','I. de Margarita','Nueva Esparta','4980','Venezuela');
INSERT INTO `Orders` VALUES (10955,'FOLKO',8,"3/17/1998 12:00:00 AM","4/14/1998 12:00:00 AM","3/20/1998 12:00:00 AM",2,3.26,'Folk och f? HB','?kergatan 24','Br?cke',NULL,'S-844 67','Sweden');
INSERT INTO `Orders` VALUES (10956,'BLAUS',6,"3/17/1998 12:00:00 AM","4/28/1998 12:00:00 AM","3/20/1998 12:00:00 AM",2,44.65,'Blauer See Delikatessen','Forsterstr. 57','Mannheim',NULL,'68306','Germany');
INSERT INTO `Orders` VALUES (10957,'HILAA',8,"3/18/1998 12:00:00 AM","4/15/1998 12:00:00 AM","3/27/1998 12:00:00 AM",3,105.36,'HILARION-Abastos','Carrera 22 con Ave. Carlos Soublette #8-35','San Crist?bal','T?chira','5022','Venezuela');
INSERT INTO `Orders` VALUES (10958,'OCEAN',7,"3/18/1998 12:00:00 AM","4/15/1998 12:00:00 AM","3/27/1998 12:00:00 AM",2,49.56,'Oc?ano Atl?ntico Ltda.','Ing. Gustavo Moncada 8585 Piso 20-A','Buenos Aires',NULL,'1010','Argentina');
INSERT INTO `Orders` VALUES (10959,'GOURL',6,"3/18/1998 12:00:00 AM","4/29/1998 12:00:00 AM","3/23/1998 12:00:00 AM",2,4.98,'Gourmet Lanchonetes','Av. Brasil, 442','Campinas','SP','04876-786','Brazil');
INSERT INTO `Orders` VALUES (10960,'HILAA',3,"3/19/1998 12:00:00 AM","4/2/1998 12:00:00 AM","4/8/1998 12:00:00 AM",1,2.08,'HILARION-Abastos','Carrera 22 con Ave. Carlos Soublette #8-35','San Crist?bal','T?chira','5022','Venezuela');
INSERT INTO `Orders` VALUES (10961,'QUEEN',8,"3/19/1998 12:00:00 AM","4/16/1998 12:00:00 AM","3/30/1998 12:00:00 AM",1,104.47,'Queen Cozinha','Alameda dos Can?rios, 891','Sao Paulo','SP','05487-020','Brazil');
INSERT INTO `Orders` VALUES (10962,'QUICK',8,"3/19/1998 12:00:00 AM","4/16/1998 12:00:00 AM","3/23/1998 12:00:00 AM",2,275.79,'QUICK-Stop','Taucherstra?e 10','Cunewalde',NULL,'01307','Germany');
INSERT INTO `Orders` VALUES (10963,'FURIB',9,"3/19/1998 12:00:00 AM","4/16/1998 12:00:00 AM","3/26/1998 12:00:00 AM",3,2.7,'Furia Bacalhau e Frutos do Mar','Jardim das rosas n. 32','Lisboa',NULL,'1675','Portugal');
INSERT INTO `Orders` VALUES (10964,'SPECD',3,"3/20/1998 12:00:00 AM","4/17/1998 12:00:00 AM","3/24/1998 12:00:00 AM",2,87.38,'Sp?cialit?s du monde','25, rue Lauriston','Paris',NULL,'75016','France');
INSERT INTO `Orders` VALUES (10965,'OLDWO',6,"3/20/1998 12:00:00 AM","4/17/1998 12:00:00 AM","3/30/1998 12:00:00 AM",3,144.38,'Old World Delicatessen','2743 Bering St.','Anchorage','AK','99508','USA');
INSERT INTO `Orders` VALUES (10966,'CHOPS',4,"3/20/1998 12:00:00 AM","4/17/1998 12:00:00 AM","4/8/1998 12:00:00 AM",1,27.19,'Chop-suey Chinese','Hauptstr. 31','Bern',NULL,'3012','Switzerland');
INSERT INTO `Orders` VALUES (10967,'TOMSP',2,"3/23/1998 12:00:00 AM","4/20/1998 12:00:00 AM","4/2/1998 12:00:00 AM",2,62.22,'Toms Spezialit?ten','Luisenstr. 48','M?nster',NULL,'44087','Germany');
INSERT INTO `Orders` VALUES (10968,'ERNSH',1,"3/23/1998 12:00:00 AM","4/20/1998 12:00:00 AM","4/1/1998 12:00:00 AM",3,74.6,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria');
INSERT INTO `Orders` VALUES (10969,'COMMI',1,"3/23/1998 12:00:00 AM","4/20/1998 12:00:00 AM","3/30/1998 12:00:00 AM",2,0.21,'Com?rcio Mineiro','Av. dos Lus?adas, 23','Sao Paulo','SP','05432-043','Brazil');
INSERT INTO `Orders` VALUES (10970,'BOLID',9,"3/24/1998 12:00:00 AM","4/7/1998 12:00:00 AM","4/24/1998 12:00:00 AM",1,16.16,'B?lido Comidas preparadas','C/ Araquil, 67','Madrid',NULL,'28023','Spain');
INSERT INTO `Orders` VALUES (10971,'FRANR',2,"3/24/1998 12:00:00 AM","4/21/1998 12:00:00 AM","4/2/1998 12:00:00 AM",2,121.82,'France restauration','54, rue Royale','Nantes',NULL,'44000','France');
INSERT INTO `Orders` VALUES (10972,'LACOR',4,"3/24/1998 12:00:00 AM","4/21/1998 12:00:00 AM","3/26/1998 12:00:00 AM",2,0.02,'La corne d''abondance','67, avenue de l''Europe','Versailles',NULL,'78000','France');
INSERT INTO `Orders` VALUES (10973,'LACOR',6,"3/24/1998 12:00:00 AM","4/21/1998 12:00:00 AM","3/27/1998 12:00:00 AM",2,15.17,'La corne d''abondance','67, avenue de l''Europe','Versailles',NULL,'78000','France');
INSERT INTO `Orders` VALUES (10974,'SPLIR',3,"3/25/1998 12:00:00 AM","4/8/1998 12:00:00 AM","4/3/1998 12:00:00 AM",3,12.96,'Split Rail Beer & Ale','P.O. Box 555','Lander','WY','82520','USA');
INSERT INTO `Orders` VALUES (10975,'BOTTM',1,"3/25/1998 12:00:00 AM","4/22/1998 12:00:00 AM","3/27/1998 12:00:00 AM",3,32.27,'Bottom-Dollar Markets','23 Tsawassen Blvd.','Tsawassen','BC','T2F 8M4','Canada');
INSERT INTO `Orders` VALUES (10976,'HILAA',1,"3/25/1998 12:00:00 AM","5/6/1998 12:00:00 AM","4/3/1998 12:00:00 AM",1,37.97,'HILARION-Abastos','Carrera 22 con Ave. Carlos Soublette #8-35','San Crist?bal','T?chira','5022','Venezuela');
INSERT INTO `Orders` VALUES (10977,'FOLKO',8,"3/26/1998 12:00:00 AM","4/23/1998 12:00:00 AM","4/10/1998 12:00:00 AM",3,208.5,'Folk och f? HB','?kergatan 24','Br?cke',NULL,'S-844 67','Sweden');
INSERT INTO `Orders` VALUES (10978,'MAISD',9,"3/26/1998 12:00:00 AM","4/23/1998 12:00:00 AM","4/23/1998 12:00:00 AM",2,32.82,'Maison Dewey','Rue Joseph-Bens 532','Bruxelles',NULL,'B-1180','Belgium');
INSERT INTO `Orders` VALUES (10979,'ERNSH',8,"3/26/1998 12:00:00 AM","4/23/1998 12:00:00 AM","3/31/1998 12:00:00 AM",2,353.07,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria');
INSERT INTO `Orders` VALUES (10980,'FOLKO',4,"3/27/1998 12:00:00 AM","5/8/1998 12:00:00 AM","4/17/1998 12:00:00 AM",1,1.26,'Folk och f? HB','?kergatan 24','Br?cke',NULL,'S-844 67','Sweden');
INSERT INTO `Orders` VALUES (10981,'HANAR',1,"3/27/1998 12:00:00 AM","4/24/1998 12:00:00 AM","4/2/1998 12:00:00 AM",2,193.37,'Hanari Carnes','Rua do Pa?o, 67','Rio de Janeiro','RJ','05454-876','Brazil');
INSERT INTO `Orders` VALUES (10982,'BOTTM',2,"3/27/1998 12:00:00 AM","4/24/1998 12:00:00 AM","4/8/1998 12:00:00 AM",1,14.01,'Bottom-Dollar Markets','23 Tsawassen Blvd.','Tsawassen','BC','T2F 8M4','Canada');
INSERT INTO `Orders` VALUES (10983,'SAVEA',2,"3/27/1998 12:00:00 AM","4/24/1998 12:00:00 AM","4/6/1998 12:00:00 AM",2,657.54,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA');
INSERT INTO `Orders` VALUES (10984,'SAVEA',1,"3/30/1998 12:00:00 AM","4/27/1998 12:00:00 AM","4/3/1998 12:00:00 AM",3,211.22,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA');
INSERT INTO `Orders` VALUES (10985,'HUNGO',2,"3/30/1998 12:00:00 AM","4/27/1998 12:00:00 AM","4/2/1998 12:00:00 AM",1,91.51,'Hungry Owl All-Night Grocers','8 Johnstown Road','Cork','Co. Cork',NULL,'Ireland');
INSERT INTO `Orders` VALUES (10986,'OCEAN',8,"3/30/1998 12:00:00 AM","4/27/1998 12:00:00 AM","4/21/1998 12:00:00 AM",2,217.86,'Oc?ano Atl?ntico Ltda.','Ing. Gustavo Moncada 8585 Piso 20-A','Buenos Aires',NULL,'1010','Argentina');
INSERT INTO `Orders` VALUES (10987,'EASTC',8,"3/31/1998 12:00:00 AM","4/28/1998 12:00:00 AM","4/6/1998 12:00:00 AM",1,185.48,'Eastern Connection','35 King George','London',NULL,'WX3 6FW','UK');
INSERT INTO `Orders` VALUES (10988,'RATTC',3,"3/31/1998 12:00:00 AM","4/28/1998 12:00:00 AM","4/10/1998 12:00:00 AM",2,61.14,'Rattlesnake Canyon Grocery','2817 Milton Dr.','Albuquerque','NM','87110','USA');
INSERT INTO `Orders` VALUES (10989,'QUEDE',2,"3/31/1998 12:00:00 AM","4/28/1998 12:00:00 AM","4/2/1998 12:00:00 AM",1,34.76,'Que Del?cia','Rua da Panificadora, 12','Rio de Janeiro','RJ','02389-673','Brazil');
INSERT INTO `Orders` VALUES (10990,'ERNSH',2,"4/1/1998 12:00:00 AM","5/13/1998 12:00:00 AM","4/7/1998 12:00:00 AM",3,117.61,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria');
INSERT INTO `Orders` VALUES (10991,'QUICK',1,"4/1/1998 12:00:00 AM","4/29/1998 12:00:00 AM","4/7/1998 12:00:00 AM",1,38.51,'QUICK-Stop','Taucherstra?e 10','Cunewalde',NULL,'01307','Germany');
INSERT INTO `Orders` VALUES (10992,'THEBI',1,"4/1/1998 12:00:00 AM","4/29/1998 12:00:00 AM","4/3/1998 12:00:00 AM",3,4.27,'The Big Cheese','89 Jefferson Way Suite 2','Portland','OR','97201','USA');
INSERT INTO `Orders` VALUES (10993,'FOLKO',7,"4/1/1998 12:00:00 AM","4/29/1998 12:00:00 AM","4/10/1998 12:00:00 AM",3,8.81,'Folk och f? HB','?kergatan 24','Br?cke',NULL,'S-844 67','Sweden');
INSERT INTO `Orders` VALUES (10994,'VAFFE',2,"4/2/1998 12:00:00 AM","4/16/1998 12:00:00 AM","4/9/1998 12:00:00 AM",3,65.53,'Vaffeljernet','Smagsloget 45','?rhus',NULL,'8200','Denmark');
INSERT INTO `Orders` VALUES (10995,'PERIC',1,"4/2/1998 12:00:00 AM","4/30/1998 12:00:00 AM","4/6/1998 12:00:00 AM",3,46.0,'Pericles Comidas cl?sicas','Calle Dr. Jorge Cash 321','M?xico D.F.',NULL,'05033','Mexico');
INSERT INTO `Orders` VALUES (10996,'QUICK',4,"4/2/1998 12:00:00 AM","4/30/1998 12:00:00 AM","4/10/1998 12:00:00 AM",2,1.12,'QUICK-Stop','Taucherstra?e 10','Cunewalde',NULL,'01307','Germany');
INSERT INTO `Orders` VALUES (10997,'LILAS',8,"4/3/1998 12:00:00 AM","5/15/1998 12:00:00 AM","4/13/1998 12:00:00 AM",2,73.91,'LILA-Supermercado','Carrera 52 con Ave. Bol?var #65-98 Llano Largo','Barquisimeto','Lara','3508','Venezuela');
INSERT INTO `Orders` VALUES (10998,'WOLZA',8,"4/3/1998 12:00:00 AM","4/17/1998 12:00:00 AM","4/17/1998 12:00:00 AM",2,20.31,'Wolski Zajazd','ul. Filtrowa 68','Warszawa',NULL,'01-012','Poland');
INSERT INTO `Orders` VALUES (10999,'OTTIK',6,"4/3/1998 12:00:00 AM","5/1/1998 12:00:00 AM","4/10/1998 12:00:00 AM",2,96.35,'Ottilies K?seladen','Mehrheimerstr. 369','K?ln',NULL,'50739','Germany');
INSERT INTO `Orders` VALUES (11000,'RATTC',2,"4/6/1998 12:00:00 AM","5/4/1998 12:00:00 AM","4/14/1998 12:00:00 AM",3,55.12,'Rattlesnake Canyon Grocery','2817 Milton Dr.','Albuquerque','NM','87110','USA');
INSERT INTO `Orders` VALUES (11001,'FOLKO',2,"4/6/1998 12:00:00 AM","5/4/1998 12:00:00 AM","4/14/1998 12:00:00 AM",2,197.3,'Folk och f? HB','?kergatan 24','Br?cke',NULL,'S-844 67','Sweden');
INSERT INTO `Orders` VALUES (11002,'SAVEA',4,"4/6/1998 12:00:00 AM","5/4/1998 12:00:00 AM","4/16/1998 12:00:00 AM",1,141.16,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA');
INSERT INTO `Orders` VALUES (11003,'THECR',3,"4/6/1998 12:00:00 AM","5/4/1998 12:00:00 AM","4/8/1998 12:00:00 AM",3,14.91,'The Cracker Box','55 Grizzly Peak Rd.','Butte','MT','59801','USA');
INSERT INTO `Orders` VALUES (11004,'MAISD',3,"4/7/1998 12:00:00 AM","5/5/1998 12:00:00 AM","4/20/1998 12:00:00 AM",1,44.84,'Maison Dewey','Rue Joseph-Bens 532','Bruxelles',NULL,'B-1180','Belgium');
INSERT INTO `Orders` VALUES (11005,'WILMK',2,"4/7/1998 12:00:00 AM","5/5/1998 12:00:00 AM","4/10/1998 12:00:00 AM",1,0.75,'Wilman Kala','Keskuskatu 45','Helsinki',NULL,'21240','Finland');
INSERT INTO `Orders` VALUES (11006,'GREAL',3,"4/7/1998 12:00:00 AM","5/5/1998 12:00:00 AM","4/15/1998 12:00:00 AM",2,25.19,'Great Lakes Food Market','2732 Baker Blvd.','Eugene','OR','97403','USA');
INSERT INTO `Orders` VALUES (11007,'PRINI',8,"4/8/1998 12:00:00 AM","5/6/1998 12:00:00 AM","4/13/1998 12:00:00 AM",2,202.24,'Princesa Isabel Vinhos','Estrada da sa?de n. 58','Lisboa',NULL,'1756','Portugal');
INSERT INTO `Orders` VALUES (11008,'ERNSH',7,"4/8/1998 12:00:00 AM","5/6/1998 12:00:00 AM","null",3,79.46,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria');
INSERT INTO `Orders` VALUES (11009,'GODOS',2,"4/8/1998 12:00:00 AM","5/6/1998 12:00:00 AM","4/10/1998 12:00:00 AM",1,59.11,'Godos Cocina T?pica','C/ Romero, 33','Sevilla',NULL,'41101','Spain');
INSERT INTO `Orders` VALUES (11010,'REGGC',2,"4/9/1998 12:00:00 AM","5/7/1998 12:00:00 AM","4/21/1998 12:00:00 AM",2,28.71,'Reggiani Caseifici','Strada Provinciale 124','Reggio Emilia',NULL,'42100','Italy');
INSERT INTO `Orders` VALUES (11011,'ALFKI',3,"4/9/1998 12:00:00 AM","5/7/1998 12:00:00 AM","4/13/1998 12:00:00 AM",1,1.21,'Alfred''s Futterkiste','Obere Str. 57','Berlin',NULL,'12209','Germany');
INSERT INTO `Orders` VALUES (11012,'FRANK',1,"4/9/1998 12:00:00 AM","4/23/1998 12:00:00 AM","4/17/1998 12:00:00 AM",3,242.95,'Frankenversand','Berliner Platz 43','M?nchen',NULL,'80805','Germany');
INSERT INTO `Orders` VALUES (11013,'ROMEY',2,"4/9/1998 12:00:00 AM","5/7/1998 12:00:00 AM","4/10/1998 12:00:00 AM",1,32.99,'Romero y tomillo','Gran V?a, 1','Madrid',NULL,'28001','Spain');
INSERT INTO `Orders` VALUES (11014,'LINOD',2,"4/10/1998 12:00:00 AM","5/8/1998 12:00:00 AM","4/15/1998 12:00:00 AM",3,23.6,'LINO-Delicateses','Ave. 5 de Mayo Porlamar','I. de Margarita','Nueva Esparta','4980','Venezuela');
INSERT INTO `Orders` VALUES (11015,'SANTG',2,"4/10/1998 12:00:00 AM","4/24/1998 12:00:00 AM","4/20/1998 12:00:00 AM",2,4.62,'Sant? Gourmet','Erling Skakkes gate 78','Stavern',NULL,'4110','Norway');
INSERT INTO `Orders` VALUES (11016,'AROUT',9,"4/10/1998 12:00:00 AM","5/8/1998 12:00:00 AM","4/13/1998 12:00:00 AM",2,33.8,'Around the Horn','Brook Farm Stratford St. Mary','Colchester','Essex','CO7 6JX','UK');
INSERT INTO `Orders` VALUES (11017,'ERNSH',9,"4/13/1998 12:00:00 AM","5/11/1998 12:00:00 AM","4/20/1998 12:00:00 AM",2,754.26,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria');
INSERT INTO `Orders` VALUES (11018,'LONEP',4,"4/13/1998 12:00:00 AM","5/11/1998 12:00:00 AM","4/16/1998 12:00:00 AM",2,11.65,'Lonesome Pine Restaurant','89 Chiaroscuro Rd.','Portland','OR','97219','USA');
INSERT INTO `Orders` VALUES (11019,'RANCH',6,"4/13/1998 12:00:00 AM","5/11/1998 12:00:00 AM","null",3,3.17,'Rancho grande','Av. del Libertador 900','Buenos Aires',NULL,'1010','Argentina');
INSERT INTO `Orders` VALUES (11020,'OTTIK',2,"4/14/1998 12:00:00 AM","5/12/1998 12:00:00 AM","4/16/1998 12:00:00 AM",2,43.3,'Ottilies K?seladen','Mehrheimerstr. 369','K?ln',NULL,'50739','Germany');
INSERT INTO `Orders` VALUES (11021,'QUICK',3,"4/14/1998 12:00:00 AM","5/12/1998 12:00:00 AM","4/21/1998 12:00:00 AM",1,297.18,'QUICK-Stop','Taucherstra?e 10','Cunewalde',NULL,'01307','Germany');
INSERT INTO `Orders` VALUES (11022,'HANAR',9,"4/14/1998 12:00:00 AM","5/12/1998 12:00:00 AM","5/4/1998 12:00:00 AM",2,6.27,'Hanari Carnes','Rua do Pa?o, 67','Rio de Janeiro','RJ','05454-876','Brazil');
INSERT INTO `Orders` VALUES (11023,'BSBEV',1,"4/14/1998 12:00:00 AM","4/28/1998 12:00:00 AM","4/24/1998 12:00:00 AM",2,123.83,'B''s Beverages','Fauntleroy Circus','London',NULL,'EC2 5NT','UK');
INSERT INTO `Orders` VALUES (11024,'EASTC',4,"4/15/1998 12:00:00 AM","5/13/1998 12:00:00 AM","4/20/1998 12:00:00 AM",1,74.36,'Eastern Connection','35 King George','London',NULL,'WX3 6FW','UK');
INSERT INTO `Orders` VALUES (11025,'WARTH',6,"4/15/1998 12:00:00 AM","5/13/1998 12:00:00 AM","4/24/1998 12:00:00 AM",3,29.17,'Wartian Herkku','Torikatu 38','Oulu',NULL,'90110','Finland');
INSERT INTO `Orders` VALUES (11026,'FRANS',4,"4/15/1998 12:00:00 AM","5/13/1998 12:00:00 AM","4/28/1998 12:00:00 AM",1,47.09,'Franchi S.p.A.','Via Monte Bianco 34','Torino',NULL,'10100','Italy');
INSERT INTO `Orders` VALUES (11027,'BOTTM',1,"4/16/1998 12:00:00 AM","5/14/1998 12:00:00 AM","4/20/1998 12:00:00 AM",1,52.52,'Bottom-Dollar Markets','23 Tsawassen Blvd.','Tsawassen','BC','T2F 8M4','Canada');
INSERT INTO `Orders` VALUES (11028,'KOENE',2,"4/16/1998 12:00:00 AM","5/14/1998 12:00:00 AM","4/22/1998 12:00:00 AM",1,29.59,'K?niglich Essen','Maubelstr. 90','Brandenburg',NULL,'14776','Germany');
INSERT INTO `Orders` VALUES (11029,'CHOPS',4,"4/16/1998 12:00:00 AM","5/14/1998 12:00:00 AM","4/27/1998 12:00:00 AM",1,47.84,'Chop-suey Chinese','Hauptstr. 31','Bern',NULL,'3012','Switzerland');
INSERT INTO `Orders` VALUES (11030,'SAVEA',7,"4/17/1998 12:00:00 AM","5/15/1998 12:00:00 AM","4/27/1998 12:00:00 AM",2,830.75,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA');
INSERT INTO `Orders` VALUES (11031,'SAVEA',6,"4/17/1998 12:00:00 AM","5/15/1998 12:00:00 AM","4/24/1998 12:00:00 AM",2,227.22,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA');
INSERT INTO `Orders` VALUES (11032,'WHITC',2,"4/17/1998 12:00:00 AM","5/15/1998 12:00:00 AM","4/23/1998 12:00:00 AM",3,606.19,'White Clover Markets','1029 - 12th Ave. S.','Seattle','WA','98124','USA');
INSERT INTO `Orders` VALUES (11033,'RICSU',7,"4/17/1998 12:00:00 AM","5/15/1998 12:00:00 AM","4/23/1998 12:00:00 AM",3,84.74,'Richter Supermarkt','Starenweg 5','Gen?ve',NULL,'1204','Switzerland');
INSERT INTO `Orders` VALUES (11034,'OLDWO',8,"4/20/1998 12:00:00 AM","6/1/1998 12:00:00 AM","4/27/1998 12:00:00 AM",1,40.32,'Old World Delicatessen','2743 Bering St.','Anchorage','AK','99508','USA');
INSERT INTO `Orders` VALUES (11035,'SUPRD',2,"4/20/1998 12:00:00 AM","5/18/1998 12:00:00 AM","4/24/1998 12:00:00 AM",2,0.17,'Supr?mes d?lices','Boulevard Tirou, 255','Charleroi',NULL,'B-6000','Belgium');
INSERT INTO `Orders` VALUES (11036,'DRACD',8,"4/20/1998 12:00:00 AM","5/18/1998 12:00:00 AM","4/22/1998 12:00:00 AM",3,149.47,'Drachenblut Delikatessen','Walserweg 21','Aachen',NULL,'52066','Germany');
INSERT INTO `Orders` VALUES (11037,'GODOS',7,"4/21/1998 12:00:00 AM","5/19/1998 12:00:00 AM","4/27/1998 12:00:00 AM",1,3.2,'Godos Cocina T?pica','C/ Romero, 33','Sevilla',NULL,'41101','Spain');
INSERT INTO `Orders` VALUES (11038,'SUPRD',1,"4/21/1998 12:00:00 AM","5/19/1998 12:00:00 AM","4/30/1998 12:00:00 AM",2,29.59,'Supr?mes d?lices','Boulevard Tirou, 255','Charleroi',NULL,'B-6000','Belgium');
INSERT INTO `Orders` VALUES (11039,'LINOD',1,"4/21/1998 12:00:00 AM","5/19/1998 12:00:00 AM","null",2,65.0,'LINO-Delicateses','Ave. 5 de Mayo Porlamar','I. de Margarita','Nueva Esparta','4980','Venezuela');
INSERT INTO `Orders` VALUES (11040,'GREAL',4,"4/22/1998 12:00:00 AM","5/20/1998 12:00:00 AM","null",3,18.84,'Great Lakes Food Market','2732 Baker Blvd.','Eugene','OR','97403','USA');
INSERT INTO `Orders` VALUES (11041,'CHOPS',3,"4/22/1998 12:00:00 AM","5/20/1998 12:00:00 AM","4/28/1998 12:00:00 AM",2,48.22,'Chop-suey Chinese','Hauptstr. 31','Bern',NULL,'3012','Switzerland');
INSERT INTO `Orders` VALUES (11042,'COMMI',2,"4/22/1998 12:00:00 AM","5/6/1998 12:00:00 AM","5/1/1998 12:00:00 AM",1,29.99,'Com?rcio Mineiro','Av. dos Lus?adas, 23','Sao Paulo','SP','05432-043','Brazil');
INSERT INTO `Orders` VALUES (11043,'SPECD',5,"4/22/1998 12:00:00 AM","5/20/1998 12:00:00 AM","4/29/1998 12:00:00 AM",2,8.8,'Sp?cialit?s du monde','25, rue Lauriston','Paris',NULL,'75016','France');
INSERT INTO `Orders` VALUES (11044,'WOLZA',4,"4/23/1998 12:00:00 AM","5/21/1998 12:00:00 AM","5/1/1998 12:00:00 AM",1,8.72,'Wolski Zajazd','ul. Filtrowa 68','Warszawa',NULL,'01-012','Poland');
INSERT INTO `Orders` VALUES (11045,'BOTTM',6,"4/23/1998 12:00:00 AM","5/21/1998 12:00:00 AM","null",2,70.58,'Bottom-Dollar Markets','23 Tsawassen Blvd.','Tsawassen','BC','T2F 8M4','Canada');
INSERT INTO `Orders` VALUES (11046,'WANDK',8,"4/23/1998 12:00:00 AM","5/21/1998 12:00:00 AM","4/24/1998 12:00:00 AM",2,71.64,'Die Wandernde Kuh','Adenauerallee 900','Stuttgart',NULL,'70563','Germany');
INSERT INTO `Orders` VALUES (11047,'EASTC',7,"4/24/1998 12:00:00 AM","5/22/1998 12:00:00 AM","5/1/1998 12:00:00 AM",3,46.62,'Eastern Connection','35 King George','London',NULL,'WX3 6FW','UK');
INSERT INTO `Orders` VALUES (11048,'BOTTM',7,"4/24/1998 12:00:00 AM","5/22/1998 12:00:00 AM","4/30/1998 12:00:00 AM",3,24.12,'Bottom-Dollar Markets','23 Tsawassen Blvd.','Tsawassen','BC','T2F 8M4','Canada');
INSERT INTO `Orders` VALUES (11049,'GOURL',3,"4/24/1998 12:00:00 AM","5/22/1998 12:00:00 AM","5/4/1998 12:00:00 AM",1,8.34,'Gourmet Lanchonetes','Av. Brasil, 442','Campinas','SP','04876-786','Brazil');
INSERT INTO `Orders` VALUES (11050,'FOLKO',8,"4/27/1998 12:00:00 AM","5/25/1998 12:00:00 AM","5/5/1998 12:00:00 AM",2,59.41,'Folk och f? HB','?kergatan 24','Br?cke',NULL,'S-844 67','Sweden');
INSERT INTO `Orders` VALUES (11051,'LAMAI',7,"4/27/1998 12:00:00 AM","5/25/1998 12:00:00 AM","null",3,2.79,'La maison d''Asie','1 rue Alsace-Lorraine','Toulouse',NULL,'31000','France');
INSERT INTO `Orders` VALUES (11052,'HANAR',3,"4/27/1998 12:00:00 AM","5/25/1998 12:00:00 AM","5/1/1998 12:00:00 AM",1,67.26,'Hanari Carnes','Rua do Pa?o, 67','Rio de Janeiro','RJ','05454-876','Brazil');
INSERT INTO `Orders` VALUES (11053,'PICCO',2,"4/27/1998 12:00:00 AM","5/25/1998 12:00:00 AM","4/29/1998 12:00:00 AM",2,53.05,'Piccolo und mehr','Geislweg 14','Salzburg',NULL,'5020','Austria');
INSERT INTO `Orders` VALUES (11054,'CACTU',8,"4/28/1998 12:00:00 AM","5/26/1998 12:00:00 AM","null",1,0.33,'Cactus Comidas para llevar','Cerrito 333','Buenos Aires',NULL,'1010','Argentina');
INSERT INTO `Orders` VALUES (11055,'HILAA',7,"4/28/1998 12:00:00 AM","5/26/1998 12:00:00 AM","5/5/1998 12:00:00 AM",2,120.92,'HILARION-Abastos','Carrera 22 con Ave. Carlos Soublette #8-35','San Crist?bal','T?chira','5022','Venezuela');
INSERT INTO `Orders` VALUES (11056,'EASTC',8,"4/28/1998 12:00:00 AM","5/12/1998 12:00:00 AM","5/1/1998 12:00:00 AM",2,278.96,'Eastern Connection','35 King George','London',NULL,'WX3 6FW','UK');
INSERT INTO `Orders` VALUES (11057,'NORTS',3,"4/29/1998 12:00:00 AM","5/27/1998 12:00:00 AM","5/1/1998 12:00:00 AM",3,4.13,'North/South','South House 300 Queensbridge','London',NULL,'SW7 1RZ','UK');
INSERT INTO `Orders` VALUES (11058,'BLAUS',9,"4/29/1998 12:00:00 AM","5/27/1998 12:00:00 AM","null",3,31.14,'Blauer See Delikatessen','Forsterstr. 57','Mannheim',NULL,'68306','Germany');
INSERT INTO `Orders` VALUES (11059,'RICAR',2,"4/29/1998 12:00:00 AM","6/10/1998 12:00:00 AM","null",2,85.8,'Ricardo Adocicados','Av. Copacabana, 267','Rio de Janeiro','RJ','02389-890','Brazil');
INSERT INTO `Orders` VALUES (11060,'FRANS',2,"4/30/1998 12:00:00 AM","5/28/1998 12:00:00 AM","5/4/1998 12:00:00 AM",2,10.98,'Franchi S.p.A.','Via Monte Bianco 34','Torino',NULL,'10100','Italy');
INSERT INTO `Orders` VALUES (11061,'GREAL',4,"4/30/1998 12:00:00 AM","6/11/1998 12:00:00 AM","null",3,14.01,'Great Lakes Food Market','2732 Baker Blvd.','Eugene','OR','97403','USA');
INSERT INTO `Orders` VALUES (11062,'REGGC',4,"4/30/1998 12:00:00 AM","5/28/1998 12:00:00 AM","null",2,29.93,'Reggiani Caseifici','Strada Provinciale 124','Reggio Emilia',NULL,'42100','Italy');
INSERT INTO `Orders` VALUES (11063,'HUNGO',3,"4/30/1998 12:00:00 AM","5/28/1998 12:00:00 AM","5/6/1998 12:00:00 AM",2,81.73,'Hungry Owl All-Night Grocers','8 Johnstown Road','Cork','Co. Cork',NULL,'Ireland');
INSERT INTO `Orders` VALUES (11064,'SAVEA',1,"5/1/1998 12:00:00 AM","5/29/1998 12:00:00 AM","5/4/1998 12:00:00 AM",1,30.09,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA');
INSERT INTO `Orders` VALUES (11065,'LILAS',8,"5/1/1998 12:00:00 AM","5/29/1998 12:00:00 AM","null",1,12.91,'LILA-Supermercado','Carrera 52 con Ave. Bol?var #65-98 Llano Largo','Barquisimeto','Lara','3508','Venezuela');
INSERT INTO `Orders` VALUES (11066,'WHITC',7,"5/1/1998 12:00:00 AM","5/29/1998 12:00:00 AM","5/4/1998 12:00:00 AM",2,44.72,'White Clover Markets','1029 - 12th Ave. S.','Seattle','WA','98124','USA');
INSERT INTO `Orders` VALUES (11067,'DRACD',1,"5/4/1998 12:00:00 AM","5/18/1998 12:00:00 AM","5/6/1998 12:00:00 AM",2,7.98,'Drachenblut Delikatessen','Walserweg 21','Aachen',NULL,'52066','Germany');
INSERT INTO `Orders` VALUES (11068,'QUEEN',8,"5/4/1998 12:00:00 AM","6/1/1998 12:00:00 AM","null",2,81.75,'Queen Cozinha','Alameda dos Can?rios, 891','Sao Paulo','SP','05487-020','Brazil');
INSERT INTO `Orders` VALUES (11069,'TORTU',1,"5/4/1998 12:00:00 AM","6/1/1998 12:00:00 AM","5/6/1998 12:00:00 AM",2,15.67,'Tortuga Restaurante','Avda. Azteca 123','M?xico D.F.',NULL,'05033','Mexico');
INSERT INTO `Orders` VALUES (11070,'LEHMS',2,"5/5/1998 12:00:00 AM","6/2/1998 12:00:00 AM","null",1,136.0,'Lehmanns Marktstand','Magazinweg 7','Frankfurt a.M.',NULL,'60528','Germany');
INSERT INTO `Orders` VALUES (11071,'LILAS',1,"5/5/1998 12:00:00 AM","6/2/1998 12:00:00 AM","null",1,0.93,'LILA-Supermercado','Carrera 52 con Ave. Bol?var #65-98 Llano Largo','Barquisimeto','Lara','3508','Venezuela');
INSERT INTO `Orders` VALUES (11072,'ERNSH',4,"5/5/1998 12:00:00 AM","6/2/1998 12:00:00 AM","null",2,258.64,'Ernst Handel','Kirchgasse 6','Graz',NULL,'8010','Austria');
INSERT INTO `Orders` VALUES (11073,'PERIC',2,"5/5/1998 12:00:00 AM","6/2/1998 12:00:00 AM","null",2,24.95,'Pericles Comidas cl?sicas','Calle Dr. Jorge Cash 321','M?xico D.F.',NULL,'05033','Mexico');
INSERT INTO `Orders` VALUES (11074,'SIMOB',7,"5/6/1998 12:00:00 AM","6/3/1998 12:00:00 AM","null",2,18.44,'Simons bistro','Vinb?ltet 34','Kobenhavn',NULL,'1734','Denmark');
INSERT INTO `Orders` VALUES (11075,'RICSU',8,"5/6/1998 12:00:00 AM","6/3/1998 12:00:00 AM","null",2,6.19,'Richter Supermarkt','Starenweg 5','Gen?ve',NULL,'1204','Switzerland');
INSERT INTO `Orders` VALUES (11076,'BONAP',4,"5/6/1998 12:00:00 AM","6/3/1998 12:00:00 AM","null",2,38.28,'Bon app''','12, rue des Bouchers','Marseille',NULL,'13008','France');
INSERT INTO `Orders` VALUES (11077,'RATTC',1,"5/6/1998 12:00:00 AM","6/3/1998 12:00:00 AM","null",2,8.53,'Rattlesnake Canyon Grocery','2817 Milton Dr.','Albuquerque','NM','87110','USA');
INSERT INTO `Products` VALUES (1,'Chai',1,1,'10 boxes x 20 bags',18.0,39,NULL,10,0);
INSERT INTO `Products` VALUES (2,'Chang',1,1,'24 - 12 oz bottles',19.0,17,40,25,0);
INSERT INTO `Products` VALUES (3,'Aniseed Syrup',1,2,'12 - 550 ml bottles',10.0,13,70,25,0);
INSERT INTO `Products` VALUES (4,'Chef Anton''s Cajun Seasoning',2,2,'48 - 6 oz jars',22.0,53,NULL,NULL,0);
INSERT INTO `Products` VALUES (5,'Chef Anton''s Gumbo Mix',2,2,'36 boxes',21.35,NULL,NULL,NULL,1);
INSERT INTO `Products` VALUES (6,'Grandma''s Boysenberry Spread',3,2,'12 - 8 oz jars',25.0,120,NULL,25,0);
INSERT INTO `Products` VALUES (7,'Uncle Bob''s Organic Dried Pears',3,7,'12 - 1 lb pkgs.',30.0,15,NULL,10,0);
INSERT INTO `Products` VALUES (8,'Northwoods Cranberry Sauce',3,2,'12 - 12 oz jars',40.0,6,NULL,NULL,0);
INSERT INTO `Products` VALUES (9,'Mishi Kobe Niku',4,6,'18 - 500 g pkgs.',97.0,29,NULL,NULL,1);
INSERT INTO `Products` VALUES (10,'Ikura',4,8,'12 - 200 ml jars',31.0,31,NULL,NULL,0);
INSERT INTO `Products` VALUES (11,'Queso Cabrales',5,4,'1 kg pkg.',21.0,22,30,30,0);
INSERT INTO `Products` VALUES (12,'Queso Manchego La Pastora',5,4,'10 - 500 g pkgs.',38.0,86,NULL,NULL,0);
INSERT INTO `Products` VALUES (13,'Konbu',6,8,'2 kg box',6.0,24,NULL,5,0);
INSERT INTO `Products` VALUES (14,'Tofu',6,7,'40 - 100 g pkgs.',23.25,35,NULL,NULL,0);
INSERT INTO `Products` VALUES (15,'Genen Shouyu',6,2,'24 - 250 ml bottles',15.5,39,NULL,5,0);
INSERT INTO `Products` VALUES (16,'Pavlova',7,3,'32 - 500 g boxes',17.45,29,NULL,10,0);
INSERT INTO `Products` VALUES (17,'Alice Mutton',7,6,'20 - 1 kg tins',39.0,NULL,NULL,NULL,1);
INSERT INTO `Products` VALUES (18,'Carnarvon Tigers',7,8,'16 kg pkg.',62.5,42,NULL,NULL,0);
INSERT INTO `Products` VALUES (19,'Teatime Chocolate Biscuits',8,3,'10 boxes x 12 pieces',9.2,25,NULL,5,0);
INSERT INTO `Products` VALUES (20,'Sir Rodney''s Marmalade',8,3,'30 gift boxes',81.0,40,NULL,NULL,0);
INSERT INTO `Products` VALUES (21,'Sir Rodney''s Scones',8,3,'24 pkgs. x 4 pieces',10.0,3,40,5,0);
INSERT INTO `Products` VALUES (22,'Gustaf''s Kn?ckebr?d',9,5,'24 - 500 g pkgs.',21.0,104,NULL,25,0);
INSERT INTO `Products` VALUES (23,'Tunnbr?d',9,5,'12 - 250 g pkgs.',9.0,61,NULL,25,0);
INSERT INTO `Products` VALUES (24,'Guaran? Fant?stica',10,1,'12 - 355 ml cans',4.5,20,NULL,NULL,1);
INSERT INTO `Products` VALUES (25,'NuNuCa Nu?-Nougat-Creme',11,3,'20 - 450 g glasses',14.0,76,NULL,30,0);
INSERT INTO `Products` VALUES (26,'Gumb?r Gummib?rchen',11,3,'100 - 250 g bags',31.23,15,NULL,NULL,0);
INSERT INTO `Products` VALUES (27,'Schoggi Schokolade',11,3,'100 - 100 g pieces',43.9,49,NULL,30,0);
INSERT INTO `Products` VALUES (28,'R?ssle Sauerkraut',12,7,'25 - 825 g cans',45.6,26,NULL,NULL,1);
INSERT INTO `Products` VALUES (29,'Th?ringer Rostbratwurst',12,6,'50 bags x 30 sausgs.',123.79,NULL,NULL,NULL,1);
INSERT INTO `Products` VALUES (30,'Nord-Ost Matjeshering',13,8,'10 - 200 g glasses',25.89,10,NULL,15,0);
INSERT INTO `Products` VALUES (31,'Gorgonzola Telino',14,4,'12 - 100 g pkgs',12.5,NULL,70,20,0);
INSERT INTO `Products` VALUES (32,'Mascarpone Fabioli',14,4,'24 - 200 g pkgs.',32.0,9,40,25,0);
INSERT INTO `Products` VALUES (33,'Geitost',15,4,'500 g',2.5,112,NULL,20,0);
INSERT INTO `Products` VALUES (34,'Sasquatch Ale',16,1,'24 - 12 oz bottles',14.0,111,NULL,15,0);
INSERT INTO `Products` VALUES (35,'Steeleye Stout',16,1,'24 - 12 oz bottles',18.0,20,NULL,15,0);
INSERT INTO `Products` VALUES (36,'Inlagd Sill',17,8,'24 - 250 g  jars',19.0,112,NULL,20,0);
INSERT INTO `Products` VALUES (37,'Gravad lax',17,8,'12 - 500 g pkgs.',26.0,11,50,25,0);
INSERT INTO `Products` VALUES (38,'C?te de Blaye',18,1,'12 - 75 cl bottles',263.5,17,NULL,15,0);
INSERT INTO `Products` VALUES (39,'Chartreuse verte',18,1,'750 cc per bottle',18.0,69,NULL,5,0);
INSERT INTO `Products` VALUES (40,'Boston Crab Meat',19,8,'24 - 4 oz tins',18.4,123,NULL,30,0);
INSERT INTO `Products` VALUES (41,'Jack''s New England Clam Chowder',19,8,'12 - 12 oz cans',9.65,85,NULL,10,0);
INSERT INTO `Products` VALUES (42,'Singaporean Hokkien Fried Mee',20,5,'32 - 1 kg pkgs.',14.0,26,NULL,NULL,1);
INSERT INTO `Products` VALUES (43,'Ipoh Coffee',20,1,'16 - 500 g tins',46.0,17,10,25,0);
INSERT INTO `Products` VALUES (44,'Gula Malacca',20,2,'20 - 2 kg bags',19.45,27,NULL,15,0);
INSERT INTO `Products` VALUES (45,'Rogede sild',21,8,'1k pkg.',9.5,5,70,15,0);
INSERT INTO `Products` VALUES (46,'Spegesild',21,8,'4 - 450 g glasses',12.0,95,NULL,NULL,0);
INSERT INTO `Products` VALUES (47,'Zaanse koeken',22,3,'10 - 4 oz boxes',9.5,36,NULL,NULL,0);
INSERT INTO `Products` VALUES (48,'Chocolade',22,3,'10 pkgs.',12.75,15,70,25,0);
INSERT INTO `Products` VALUES (49,'Maxilaku',23,3,'24 - 50 g pkgs.',20.0,10,60,15,0);
INSERT INTO `Products` VALUES (50,'Valkoinen suklaa',23,3,'12 - 100 g bars',16.25,65,NULL,30,0);
INSERT INTO `Products` VALUES (51,'Manjimup Dried Apples',24,7,'50 - 300 g pkgs.',53.0,20,NULL,10,0);
INSERT INTO `Products` VALUES (52,'Filo Mix',24,5,'16 - 2 kg boxes',7.0,38,NULL,25,0);
INSERT INTO `Products` VALUES (53,'Perth Pasties',24,6,'48 pieces',32.8,NULL,NULL,NULL,1);
INSERT INTO `Products` VALUES (54,'Tourti?re',25,6,'16 pies',7.45,21,NULL,10,0);
INSERT INTO `Products` VALUES (55,'P?t? chinois',25,6,'24 boxes x 2 pies',24.0,115,NULL,20,0);
INSERT INTO `Products` VALUES (56,'Gnocchi di nonna Alice',26,5,'24 - 250 g pkgs.',38.0,21,10,30,0);
INSERT INTO `Products` VALUES (57,'Ravioli Angelo',26,5,'24 - 250 g pkgs.',19.5,36,NULL,20,0);
INSERT INTO `Products` VALUES (58,'Escargots de Bourgogne',27,8,'24 pieces',13.25,62,NULL,20,0);
INSERT INTO `Products` VALUES (59,'Raclette Courdavault',28,4,'5 kg pkg.',55.0,79,NULL,NULL,0);
INSERT INTO `Products` VALUES (60,'Camembert Pierrot',28,4,'15 - 300 g rounds',34.0,19,NULL,NULL,0);
INSERT INTO `Products` VALUES (61,'Sirop d''?rable',29,2,'24 - 500 ml bottles',28.5,113,NULL,25,0);
INSERT INTO `Products` VALUES (62,'Tarte au sucre',29,3,'48 pies',49.3,17,NULL,NULL,0);
INSERT INTO `Products` VALUES (63,'Vegie-spread',7,2,'15 - 625 g jars',43.9,24,NULL,5,0);
INSERT INTO `Products` VALUES (64,'Wimmers gute Semmelkn?del',12,5,'20 bags x 4 pieces',33.25,22,80,30,0);
INSERT INTO `Products` VALUES (65,'Louisiana Fiery Hot Pepper Sauce',2,2,'32 - 8 oz bottles',21.05,76,NULL,NULL,0);
INSERT INTO `Products` VALUES (66,'Louisiana Hot Spiced Okra',2,2,'24 - 8 oz jars',17.0,4,100,20,0);
INSERT INTO `Products` VALUES (67,'Laughing Lumberjack Lager',16,1,'24 - 12 oz bottles',14.0,52,NULL,10,0);
INSERT INTO `Products` VALUES (68,'Scottish Longbreads',8,3,'10 boxes x 8 pieces',12.5,6,10,15,0);
INSERT INTO `Products` VALUES (69,'Gudbrandsdalsost',15,4,'10 kg pkg.',36.0,26,NULL,15,0);
INSERT INTO `Products` VALUES (70,'Outback Lager',7,1,'24 - 355 ml bottles',15.0,15,10,30,0);
INSERT INTO `Products` VALUES (71,'Flotemysost',15,4,'10 - 500 g pkgs.',21.5,26,NULL,NULL,0);
INSERT INTO `Products` VALUES (72,'Mozzarella di Giovanni',14,4,'24 - 200 g pkgs.',34.8,14,NULL,NULL,0);
INSERT INTO `Products` VALUES (73,'R?d Kaviar',17,8,'24 - 150 g jars',15.0,101,NULL,5,0);
INSERT INTO `Products` VALUES (74,'Longlife Tofu',4,7,'5 kg pkg.',10.0,4,20,5,0);
INSERT INTO `Products` VALUES (75,'Rh?nbr?u Klosterbier',12,1,'24 - 0.5 l bottles',7.75,125,NULL,25,0);
INSERT INTO `Products` VALUES (76,'Lakkalik??ri',23,1,'500 ml',18.0,57,NULL,20,0);
INSERT INTO `Products` VALUES (77,'Original Frankfurter gr?ne So?e',12,2,'12 boxes',13.0,32,NULL,15,0);
INSERT INTO `Region` VALUES (1,'Eastern                                           ');
INSERT INTO `Region` VALUES (2,'Western                                           ');
INSERT INTO `Region` VALUES (3,'Northern                                          ');
INSERT INTO `Region` VALUES (4,'Southern                                          ');
INSERT INTO `Shippers` VALUES (1,'Speedy Express','(503) 555-9831');
INSERT INTO `Shippers` VALUES (2,'United Package','(503) 555-3199');
INSERT INTO `Shippers` VALUES (3,'Federal Shipping','(503) 555-9931');
INSERT INTO `Suppliers` VALUES (1,'Exotic Liquids','Charlotte Cooper','Purchasing Manager','49 Gilbert St.','London',NULL,'EC1 4SD','UK','(171) 555-2222',NULL,NULL);
INSERT INTO `Suppliers` VALUES (2,'New Orleans Cajun Delights','Shelley Burke','Order Administrator','P.O. Box 78934','New Orleans','LA','70117','USA','(100) 555-4822',NULL,'#CAJUN.HTM# ');
INSERT INTO `Suppliers` VALUES (3,'Grandma Kelly''s Homestead','Regina Murphy','Sales Representative','707 Oxford Rd.','Ann Arbor','MI','48104','USA','(313) 555-5735','(313) 555-3349',NULL);
INSERT INTO `Suppliers` VALUES (4,'Tokyo Traders','Yoshi Nagase','Marketing Manager','9-8 Sekimai Musashino-shi','Tokyo',NULL,'100','Japan','(03) 3555-5011',NULL,NULL);
INSERT INTO `Suppliers` VALUES (5,'Cooperativa de Quesos ''Las Cabras''','Antonio del Valle Saavedra','Export Administrator','Calle del Rosal 4','Oviedo','Asturias','33007','Spain','(98) 598 76 54',NULL,NULL);
INSERT INTO `Suppliers` VALUES (6,'Mayumi''s','Mayumi Ohno','Marketing Representative','92 Setsuko Chuo-ku','Osaka',NULL,'545','Japan','(06) 431-7877',NULL,'Mayumi''s (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/mayumi.htm# ');
INSERT INTO `Suppliers` VALUES (7,'Pavlova, Ltd.','Ian Devling','Marketing Manager','74 Rose St. Moonie Ponds','Melbourne','Victoria','3058','Australia','(03) 444-2343','(03) 444-6588',NULL);
INSERT INTO `Suppliers` VALUES (8,'Specialty Biscuits, Ltd.','Peter Wilson','Sales Representative','29 King''s Way','Manchester',NULL,'M14 GSD','UK','(161) 555-4448',NULL,NULL);
INSERT INTO `Suppliers` VALUES (9,'PB Kn?ckebr?d AB','Lars Peterson','Sales Agent','Kaloadagatan 13','G?teborg',NULL,'S-345 67','Sweden','031-987 65 43','031-987 65 91',NULL);
INSERT INTO `Suppliers` VALUES (10,'Refrescos Americanas LTDA','Carlos Diaz','Marketing Manager','Av. das Americanas 12.890','Sao Paulo',NULL,'5442','Brazil','(11) 555 4640',NULL,NULL);
INSERT INTO `Suppliers` VALUES (11,'Heli S??waren GmbH & Co. KG','Petra Winkler','Sales Manager','Tiergartenstra?e 5','Berlin',NULL,'10785','Germany','(010) 9984510',NULL,NULL);
INSERT INTO `Suppliers` VALUES (12,'Plutzer Lebensmittelgro?m?rkte AG','Martin Bein','International Marketing Mgr.','Bogenallee 51','Frankfurt',NULL,'60439','Germany','(069) 992755',NULL,'Plutzer (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/plutzer.htm# ');
INSERT INTO `Suppliers` VALUES (13,'Nord-Ost-Fisch Handelsgesellschaft mbH','Sven Petersen','Coordinator Foreign Markets','Frahmredder 112a','Cuxhaven',NULL,'27478','Germany','(04721) 8713','(04721) 8714',NULL);
INSERT INTO `Suppliers` VALUES (14,'Formaggi Fortini s.r.l.','Elio Rossi','Sales Representative','Viale Dante, 75','Ravenna',NULL,'48100','Italy','(0544) 60323','(0544) 60603','#FORMAGGI.HTM# ');
INSERT INTO `Suppliers` VALUES (15,'Norske Meierier','Beate Vileid','Marketing Manager','Hatlevegen 5','Sandvika',NULL,'1320','Norway','(0)2-953010',NULL,NULL);
INSERT INTO `Suppliers` VALUES (16,'Bigfoot Breweries','Cheryl Saylor','Regional Account Rep.','3400 - 8th Avenue Suite 210','Bend','OR','97101','USA','(503) 555-9931',NULL,NULL);
INSERT INTO `Suppliers` VALUES (17,'Svensk Sj?f?da AB','Michael Bj?rn','Sales Representative','Brovallav?gen 231','Stockholm',NULL,'S-123 45','Sweden','08-123 45 67',NULL,NULL);
INSERT INTO `Suppliers` VALUES (18,'Aux joyeux eccl?siastiques','Guyl?ne Nodier','Sales Manager','203, Rue des Francs-Bourgeois','Paris',NULL,'75004','France','(1) 03.83.00.68','(1) 03.83.00.62',NULL);
INSERT INTO `Suppliers` VALUES (19,'New England Seafood Cannery','Robb Merchant','Wholesale Account Agent','Order Processing Dept. 2100 Paul Revere Blvd.','Boston','MA','02134','USA','(617) 555-3267','(617) 555-3389',NULL);
INSERT INTO `Suppliers` VALUES (20,'Leka Trading','Chandra Leka','Owner','471 Serangoon Loop, Suite #402','Singapore',NULL,'0512','Singapore','555-8787',NULL,NULL);
INSERT INTO `Suppliers` VALUES (21,'Lyngbysild','Niels Petersen','Sales Manager','Lyngbysild Fiskebakken 10','Lyngby',NULL,'2800','Denmark','43844108','43844115',NULL);
INSERT INTO `Suppliers` VALUES (22,'Zaanse Snoepfabriek','Dirk Luchte','Accounting Manager','Verkoop Rijnweg 22','Zaandam',NULL,'9999 ZZ','Netherlands','(12345) 1212','(12345) 1210',NULL);
INSERT INTO `Suppliers` VALUES (23,'Karkki Oy','Anne Heikkonen','Product Manager','Valtakatu 12','Lappeenranta',NULL,'53120','Finland','(953) 10956',NULL,NULL);
INSERT INTO `Suppliers` VALUES (24,'G''day, Mate','Wendy Mackenzie','Sales Representative','170 Prince Edward Parade Hunter''s Hill','Sydney','NSW','2042','Australia','(02) 555-5914','(02) 555-4873','G''day Mate (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/gdaymate.htm# ');
INSERT INTO `Suppliers` VALUES (25,'Ma Maison','Jean-Guy Lauzon','Marketing Manager','2960 Rue St. Laurent','Montr?al','Qu?bec','H1J 1C3','Canada','(514) 555-9022',NULL,NULL);
INSERT INTO `Suppliers` VALUES (26,'Pasta Buttini s.r.l.','Giovanni Giudici','Order Administrator','Via dei Gelsomini, 153','Salerno',NULL,'84100','Italy','(089) 6547665','(089) 6547667',NULL);
INSERT INTO `Suppliers` VALUES (27,'Escargots Nouveaux','Marie Delamare','Sales Manager','22, rue H. Voiron','Montceau',NULL,'71300','France','85.57.00.07',NULL,NULL);
INSERT INTO `Suppliers` VALUES (28,'Gai p?turage','Eliane Noz','Sales Representative','Bat. B 3, rue des Alpes','Annecy',NULL,'74000','France','38.76.98.06','38.76.98.58',NULL);
INSERT INTO `Suppliers` VALUES (29,'For?ts d''?rables','Chantal Goulet','Accounting Manager','148 rue Chasseur','Ste-Hyacinthe','Qu?bec','J2S 7S8','Canada','(514) 555-2955','(514) 555-2921',NULL);
INSERT INTO `Territories` VALUES ('01581','Westboro                                          ',1);
INSERT INTO `Territories` VALUES ('01730','Bedford                                           ',1);
INSERT INTO `Territories` VALUES ('01833','Georgetow                                         ',1);
INSERT INTO `Territories` VALUES ('02116','Boston                                            ',1);
INSERT INTO `Territories` VALUES ('02139','Cambridge                                         ',1);
INSERT INTO `Territories` VALUES ('02184','Braintree                                         ',1);
INSERT INTO `Territories` VALUES ('02903','Providence                                        ',1);
INSERT INTO `Territories` VALUES ('03049','Hollis                                            ',3);
INSERT INTO `Territories` VALUES ('03801','Portsmouth                                        ',3);
INSERT INTO `Territories` VALUES ('06897','Wilton                                            ',1);
INSERT INTO `Territories` VALUES ('07960','Morristown                                        ',1);
INSERT INTO `Territories` VALUES ('08837','Edison                                            ',1);
INSERT INTO `Territories` VALUES ('10019','New York                                          ',1);
INSERT INTO `Territories` VALUES ('10038','New York                                          ',1);
INSERT INTO `Territories` VALUES ('11747','Mellvile                                          ',1);
INSERT INTO `Territories` VALUES ('14450','Fairport                                          ',1);
INSERT INTO `Territories` VALUES ('19428','Philadelphia                                      ',3);
INSERT INTO `Territories` VALUES ('19713','Neward                                            ',1);
INSERT INTO `Territories` VALUES ('20852','Rockville                                         ',1);
INSERT INTO `Territories` VALUES ('27403','Greensboro                                        ',1);
INSERT INTO `Territories` VALUES ('27511','Cary                                              ',1);
INSERT INTO `Territories` VALUES ('29202','Columbia                                          ',4);
INSERT INTO `Territories` VALUES ('30346','Atlanta                                           ',4);
INSERT INTO `Territories` VALUES ('31406','Savannah                                          ',4);
INSERT INTO `Territories` VALUES ('32859','Orlando                                           ',4);
INSERT INTO `Territories` VALUES ('33607','Tampa                                             ',4);
INSERT INTO `Territories` VALUES ('40222','Louisville                                        ',1);
INSERT INTO `Territories` VALUES ('44122','Beachwood                                         ',3);
INSERT INTO `Territories` VALUES ('45839','Findlay                                           ',3);
INSERT INTO `Territories` VALUES ('48075','Southfield                                        ',3);
INSERT INTO `Territories` VALUES ('48084','Troy                                              ',3);
INSERT INTO `Territories` VALUES ('48304','Bloomfield Hills                                  ',3);
INSERT INTO `Territories` VALUES ('53404','Racine                                            ',3);
INSERT INTO `Territories` VALUES ('55113','Roseville                                         ',3);
INSERT INTO `Territories` VALUES ('55439','Minneapolis                                       ',3);
INSERT INTO `Territories` VALUES ('60179','Hoffman Estates                                   ',2);
INSERT INTO `Territories` VALUES ('60601','Chicago                                           ',2);
INSERT INTO `Territories` VALUES ('72716','Bentonville                                       ',4);
INSERT INTO `Territories` VALUES ('75234','Dallas                                            ',4);
INSERT INTO `Territories` VALUES ('78759','Austin                                            ',4);
INSERT INTO `Territories` VALUES ('80202','Denver                                            ',2);
INSERT INTO `Territories` VALUES ('80909','Colorado Springs                                  ',2);
INSERT INTO `Territories` VALUES ('85014','Phoenix                                           ',2);
INSERT INTO `Territories` VALUES ('85251','Scottsdale                                        ',2);
INSERT INTO `Territories` VALUES ('90405','Santa Monica                                      ',2);
INSERT INTO `Territories` VALUES ('94025','Menlo Park                                        ',2);
INSERT INTO `Territories` VALUES ('94105','San Francisco                                     ',2);
INSERT INTO `Territories` VALUES ('95008','Campbell                                          ',2);
INSERT INTO `Territories` VALUES ('95054','Santa Clara                                       ',2);
INSERT INTO `Territories` VALUES ('95060','Santa Cruz                                        ',2);
INSERT INTO `Territories` VALUES ('98004','Bellevue                                          ',2);
INSERT INTO `Territories` VALUES ('98052','Redmond                                           ',2);
INSERT INTO `Territories` VALUES ('98104','Seattle                                           ',2);
