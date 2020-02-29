%Sistema baseado em vencedores do Oscar por categorias, sendo elas:
%filme, diretor, ator, atriz, trilha sonora. 
%Para rodar há 2 formas. Fazendo "load" do file em algum terminal com 
%swi-prolog ou através do site https://swish.swi-prolog.org/
%No site é só fazer load do arquivo ou colar na aba "Program" e ir
%na parte inferior das queries e digitar o comando "begin(Y)" - (mais fácil)
%O sistema pergunta ano de nascimento e o ano que a pessoa quer
%para saber os respectivos vencedores e o sistema aproveita e calcula
%a diferença de anos entre o ano de nascimento e o ano escolhido.
%Depois o sistema utiliza os "likes" do site ranker.com nas músicas
%vencedoras do Oscar e devolve a média de "likes" por década. E, após isso,
%recomenda para o usuário a música com mais "likes" dos site(vale lembrar
%que na década de 20 ainda não havia a categoria).
%A idéia do projeto é demonstrar um sistema em Prolog onde se tenha
%fatos, regras, recursão, funções e listas para modelar um sistema
%que interage com o usuário
%%obs1: o funcionamento completo é só a partir de 1934, pois ainda não havia
%a categoria de melhor trilha sonora antes.
%obs2: no swi-prolog online aparece um "warning" "Singleton variables: [Y]",
%mas não atrapalha o funcionamento.
%obs3: também se pode testar usando queries como ?- filme(1936,X)
%ou melhor_decada_sessenta ou rating(1997,X) ... e assim por diante...




%filmes vencedores por ano

filme(1928, 'Wings').
filme(1929, 'The BroadWay Melody').
filme(1930, 'All Quiet on the Western Front').
filme(1931,'Cimarron').
filme(1932, 'Grand Hotel').
filme(1933,'Cavalcade').
filme(1934, 'It happened one night').
filme(1935,'Mutiny on the Bounty').
filme(1936,'The Great Ziegfeld').
filme(1937,'The Life of Emile Zola').
filme(1938,'We cant take it with you').
filme(1939,'Gone with the wind').
filme(1940,'Rebecca').
filme(1941,'How green was my valley').
filme(1942, 'Mrs. Miniver').
filme(1943, 'Casablanca').
filme(1944, 'Going My Way').
filme(1945, 'The Lost Weekend').
filme(1946, 'The Best Years of our lives').
filme(1947, 'Gentleman agreement').
filme(1948, 'Hamlet').
filme(1949, 'All Kings men').
filme(1950, 'All about Eve').
filme(1951, 'An American in Paris').
filme(1952, 'The Greatest show on Earth').
filme(1953, 'From Here to eternity').
filme(1954, 'On the waterfront').
filme(1955, 'Marty').
filme(1956,'Around the world in 80 days').
filme(1957, 'The Bridge on the River Kwai').
filme(1958,'Gigi').
filme(1959, 'Ben-Hur').
filme(1960,'The apartment').
filme(1961,'West Side Story').
filme(1962,'Lawrence of Arabia').
filme(1963,'Tom Jones').
filme(1964,'My Fair Lady').
filme(1965,'The Sound of Music').
filme(1966,'A Man for all reasons').
filme(1967, 'In the heat of the Night').
filme(1968, 'Oliver!').
filme(1969, 'Midnight Cowboy').
filme(1970, 'Patton').
filme(1971, 'The French Connection').
filme(1972, 'The Godfather').
filme(1973, 'The Sting').
filme(1974, 'The Godfather Part II').
filme(1975, 'One flew over the Cuckoos Nest').
filme(1976, 'Rocky').
filme(1977, 'Annie Hall').
filme(1978, 'The Deer Hunter').
filme(1979, 'Kramer vs Kramer').
filme(1980, 'Ordinary People').
filme(1981,'Charriots of Fire').
filme(1982, 'Gandhi').
filme(1983,'Terms of Endearment').
filme(1984, 'Amadeus').
filme(1985,'Out of Africa').
filme(1986,'Platoon').
filme(1987,'The Last Emperor').
filme(1988,'Rain Man').
filme(1989,'Driving Miss Daisy').
filme(1990,'Dances with wolves').
filme(1991,'The Silence of the Lambs').
filme(1992, 'Unforgiven').
filme(1993, 'Childrens List').
filme(1994, 'Forrest Gump').
filme(1995, 'BraveHeart').
filme(1996, 'The English Patient').
filme(1997, 'Titanic').
filme(1998, 'Shakespeare in Love').
filme(1999, 'American Beauty').
filme(2000, 'Gladiator').
filme(2001, 'A Beautiful Mind').
filme(2002, 'Chicago').
filme(2003, 'The Lod of the Rings: The Return of the King').
filme(2004, 'Million Dollar Baby').
filme(2005, 'Crash').
filme(2006, 'The Departed').
filme(2007, 'No Country for old Men').
filme(2008, 'SlumDog Millionaire').
filme(2009, 'The Hurt Locker').
filme(2010, 'The Kings Speech').
filme(2011, 'The Artist').
filme(2012, 'Argo').
filme(2013, '12 Years a Slave').
filme(2014, 'Birdman').
filme(2015, 'SpotLight').
filme(2016, 'MoonLight').
filme(2017, 'The Shape of Water').
filme(2018, 'Green Book').

%diretores vencedores por ano

diretor(1928, 'Lewis Milestone').
diretor(1929, 'Frank Lloyd').
diretor(1930, 'Lewis Milestone').
diretor(1931,'Norman Taurog').
diretor(1932, 'Frank Borzage').
diretor(1933,'Frank Lloyd').
diretor(1934, 'Frank Capra').
diretor(1935,'John Ford').
diretor(1936,'Frank Capra').
diretor(1937,'Leo McCarey').
diretor(1938,'Frank Capra').
diretor(1939,'Victor Fleming').
diretor(1940,'John Ford').
diretor(1941,'John Ford').
diretor(1942, 'William Wyler').
diretor(1943, 'Michael Curtis').
diretor(1944, 'Leo McCarey').
diretor(1945, 'Billy Wilder').
diretor(1946, 'William Wyler').
diretor(1947, 'Elia Kazan').
diretor(1948, 'John Huston').
diretor(1949, 'Joseph Mankiewicz').
diretor(1950, 'Joseph Mankiewicz').
diretor(1951, 'George Stevens').
diretor(1952, 'John Ford').
diretor(1953, 'Fred Zinnemann').
diretor(1954, 'Elia Kazan').
diretor(1955, 'Delbert Mann').
diretor(1956,'George Stevens').
diretor(1957, 'David Lean').
diretor(1958,'Vincent Minneli').
diretor(1959, 'Willian Wyler').
diretor(1960,'Billy Wilder').
diretor(1961,'Robert Wise').
diretor(1962,'David Lean').
diretor(1963,'Tony Richardson').
diretor(1964,'George Cukor').
diretor(1965,'Robert Wise').
diretor(1966,'Fred Zinnemann').
diretor(1967, 'Mike Nichols').
diretor(1968, 'Carol Reed').
diretor(1969, 'John Schlesinger').
diretor(1970, 'Franklin J. Schaffner').
diretor(1971, 'William Friedkin').
diretor(1972, 'Bob Fosse').
diretor(1973, 'George Roy Hill').
diretor(1974, 'Francis Ford Coppola').
diretor(1975, 'Miloš Forman').
diretor(1976, 'John G. Avildsen').
diretor(1977, 'Woody Allen').
diretor(1978, 'Michael Cimino').
diretor(1979, 'Robert Benton').
diretor(1980, 'Robert Redford').
diretor(1981,'Warren Beatty').
diretor(1982, 'Richard Attenborough').
diretor(1983,'James L. Brooks').
diretor(1984, 'Miloš Forman').
diretor(1985,'Sydney Pollack').
diretor(1986,'Oliver Stone').
diretor(1987,'Bernardo Bertolucci').
diretor(1988,'Barry Levinson').
diretor(1989,'Oliver Stone').
diretor(1990,'Kevin Costner').
diretor(1991,'Jonathan Demme').
diretor(1992, 'Clint Eastwood').
diretor(1993, 'Steven Spielberg').
diretor(1994, 'Robert Zemeckis').
diretor(1995, 'Mel Gibson').
diretor(1996, 'Anthony Minghella').
diretor(1997, 'James Cameron').
diretor(1998, 'Steven Spielberg').
diretor(1999, 'Sam Mendes').
diretor(2000, 'Steven Soderbergh').
diretor(2001, 'Ron Howard').
diretor(2002, 'Roman Polanski').
diretor(2003, 'Peter Jackson').
diretor(2004, 'Clint Eastwood').
diretor(2005, 'Ang Lee').
diretor(2006, 'Martin Scorsese').
diretor(2007, 'Coen Brothers').
diretor(2008, 'Danny Boyle').
diretor(2009, 'Kathryn Bigelow').
diretor(2010, 'Tom Hooper').
diretor(2011, 'Michel Hazanavicius').
diretor(2012, 'Ang Lee').
diretor(2013, 'Alfonso Cuarón').
diretor(2014, 'Alejandro G. Iñárritu').
diretor(2015, 'Alejandro G. Iñárritu').
diretor(2016, 'Damien Chazelle').
diretor(2017, 'Guillermo del Toro').
diretor(2018, 'Alfonso Cuarón').

%ator vencedor por ano

ator(1928, 'Emil Jannings').
ator(1929, 'Warner Baxter').
ator(1930, 'George Arliss ').
ator(1931,'Lionel Barrymore').
ator(1932, 'Wallace Beery').
ator(1933,'Charles Laughton').
ator(1934, 'Clark Gable ').
ator(1935,'Victor McLaglen').
ator(1936,'Paul Muni ').
ator(1937,'Spencer Tracy ').
ator(1938,'Spencer Tracy').
ator(1939,'Robert Donat').
ator(1940,'James Stewart ').
ator(1941,'Gary Cooper ').
ator(1942, 'James Cagney').
ator(1943, 'Paul Lukas ').
ator(1944, 'Bing Crosby').
ator(1945, 'Ray Milland ').
ator(1946, 'Fredric March ').
ator(1947, 'Ronald Colman ').
ator(1948, 'Laurence Olivier').
ator(1949, 'Broderick Crawford ').
ator(1950, 'José Ferrer ').
ator(1951, 'Humphrey Bogart').
ator(1952, 'Gary Cooper').
ator(1953, 'William Holden ').
ator(1954, 'Marlon Brando ').
ator(1955, 'Ernest Borgnine').
ator(1956,'Yul Brynner').
ator(1957, 'Alec Guinness').
ator(1958,'David Niven').
ator(1959, 'Charlton Heston').
ator(1960,'Burt Lancaster').
ator(1961,'Maximilian Schell').
ator(1962,'Gregory Peck').
ator(1963,'Sidney Poitier').
ator(1964,'Rex Harrison').
ator(1965,'Lee Marvin').
ator(1966,'Paul Scofield').
ator(1967, 'Rod Steiger').
ator(1968, 'Cliff Robertson ').
ator(1969, 'John Wayne').
ator(1970, 'George C. Scott').
ator(1971, 'Gene Hackman').
ator(1972, 'Marlon Brando').
ator(1973, 'Jack Lemmon ').
ator(1974, 'Art Carney').
ator(1975, 'Jack Nicholson ').
ator(1976, 'Peter Finch').
ator(1977, 'Richard Dreyfuss').
ator(1978, 'Jon Voight').
ator(1979, 'Dustin Hoffman').
ator(1980, 'Robert De Niro ').
ator(1981,'Henry Fonda').
ator(1982, 'Ben Kingsley ').
ator(1983,'Robert Duvall ').
ator(1984, 'F. Murray Abraham').
ator(1985,'William Hurt ').
ator(1986,'Paul Newman').
ator(1987,'Michael Douglas ').
ator(1988,'Dustin Hoffman ').
ator(1989,'Daniel Day-Lewis ').
ator(1990,'Jeremy Irons').
ator(1991,'Anthony Hopkins').
ator(1992, 'Al Pacino').
ator(1993, 'Tom Hanks').
ator(1994, 'Tom Hanks ').
ator(1995, 'Nicolas Cage').
ator(1996, 'Geoffrey Rush').
ator(1997, 'Jack Nicholson').
ator(1998, 'Roberto Benigni ').
ator(1999, 'Kevin Spacey').
ator(2000, 'Russell Crowe ').
ator(2001, 'Denzel Washington ').
ator(2002, 'Adrien Brody').
ator(2003, 'Sean Penn').
ator(2004, 'Jamie Foxx').
ator(2005, 'Philip Seymour Hoffman').
ator(2006, 'Forest Whitaker ').
ator(2007, 'Daniel Day-Lewis').
ator(2008, 'Sean Penn').
ator(2009, 'Jeff Bridges ').
ator(2010, 'Colin Firth').
ator(2011, 'Jean Dujardin').
ator(2012, 'Daniel Day-Lewis ').
ator(2013, 'Matthew McConaughey').
ator(2014, 'Eddie Redmayne ').
ator(2015, 'Leonardo DiCaprio').
ator(2016, 'Casey Affleck').
ator(2017, 'Gary Oldman').
ator(2018, 'Rami Malek ').

%atriz vencedora por ano

atriz(1928, 'Janet Gaynor').
atriz(1929, 'Mary Pickford').
atriz(1930, 'Norma Shearer').
atriz(1931,'Marie Dressler ').
atriz(1932, 'Helen Hayes ').
atriz(1933,'Katharine Hepburn').
atriz(1934, 'Claudette Colbert ').
atriz(1935,'Bette Davis').
atriz(1936,'Luise Rainer ').
atriz(1937,'Luise Rainer').
atriz(1938,'Bette Davis').
atriz(1939,'Vivien Leigh').
atriz(1940,'Ginger Rogers ').
atriz(1941,'Joan Fontaine').
atriz(1942, 'Greer Garson ').
atriz(1943, 'Jennifer Jones').
atriz(1944, 'Ingrid Bergman').
atriz(1945, 'Joan Crawford ').
atriz(1946, 'Olivia de Havilland ').
atriz(1947, 'Loretta Young ').
atriz(1948, 'Jane Wyman').
atriz(1949, 'Olivia de Havilland').
atriz(1950, 'Judy Holliday').
atriz(1951, 'Vivien Leigh').
atriz(1952, 'Shirley Booth ').
atriz(1953, 'Audrey Hepburn ').
atriz(1954, 'Grace Kelly').
atriz(1955, 'Anna Magnani ').
atriz(1956,'Ingrid Bergman ').
atriz(1957, 'Joanne Woodward').
atriz(1958,'Susan Hayward').
atriz(1959, 'Simone Signoret').
atriz(1960,'Elizabeth Taylor').
atriz(1961,'Sophia Loren').
atriz(1962,'Anne Bancroft').
atriz(1963,'Patricia Neal ').
atriz(1964,'Julie Andrews').
atriz(1965,'Julie Christie ').
atriz(1966,'Elizabeth Taylor ').
atriz(1967, 'Katharine Hepburn').
atriz(1968, 'Katharine Hepburn ').
atriz(1969, 'Maggie Smith').
atriz(1970, 'Glenda Jackson').
atriz(1971, 'Jane Fonda').
atriz(1972, 'Liza Minnelli').
atriz(1973, 'Glenda Jackson').
atriz(1974, 'Ellen Burstyn').
atriz(1975, 'Louise Fletcher ').
atriz(1976, 'Faye Dunaway ').
atriz(1977, 'Diane Keaton').
atriz(1978, 'Jane Fonda').
atriz(1979, 'Sally Field ').
atriz(1980, 'Sissy Spacek').
atriz(1981,'Katharine Hepburn ').
atriz(1982, 'Meryl Streep ').
atriz(1983,'Shirley MacLaine').
atriz(1984, 'Sally Field').
atriz(1985,'Geraldine Page ').
atriz(1986,'Marlee Matlin').
atriz(1987,'Cher').
atriz(1988,'Jodie Foster ').
atriz(1989,'Jessica Tandy').
atriz(1990,'Kathy Bates').
atriz(1991,'Jodie Foster ').
atriz(1992, 'Emma Thompson').
atriz(1993, 'Holly Hunter').
atriz(1994, 'Jessica Lange').
atriz(1995, 'Susan Sarandon ').
atriz(1996, 'Frances McDormand').
atriz(1997, 'Helen Hunt ').
atriz(1998, 'Gwyneth Paltrow').
atriz(1999, 'Hilary Swank').
atriz(2000, 'Julia Roberts ').
atriz(2001, 'Halle Berry ').
atriz(2002, 'Nicole Kidman').
atriz(2003, 'Charlize Theron ').
atriz(2004, 'Hilary Swank ').
atriz(2005, 'Reese Witherspoon ').
atriz(2006, 'Helen Mirren ').
atriz(2007, 'Marion Cotillard').
atriz(2008, 'Kate Winslet').
atriz(2009, 'Sandra Bullock').
atriz(2010, 'Natalie Portman').
atriz(2011, 'Meryl Streep').
atriz(2012, 'Jennifer Lawrence').
atriz(2013, 'Cate Blanchett').
atriz(2014, 'Julianne Moore').
atriz(2015, 'Brie Larson').
atriz(2016, 'Emma Stone').
atriz(2017, 'Frances McDormand').
atriz(2018, 'Olivia Colman').

%trilha sonora vencedora por ano

trilha(1934, 'The Continental').
trilha(1935, 'Lullaby of Broadway').
trilha(1936, 'The Way You Look Tonight').
trilha(1937,'Sweet Leilani').
trilha(1938,'Thanks for the Memory').
trilha(1939,'Over the Rainbow').
trilha(1940,'When You Wish Upon a Star').
trilha(1941,'The Last Time I Saw Paris').
trilha(1942, 'White Christmas').
trilha(1943, 'Youll Never Know').
trilha(1944, 'Swinging on a Star"').
trilha(1945, 'It Might as Well Be Spring"').
trilha(1946, 'On the Atchison, Topeka and the Santa Fe').
trilha(1947, 'Zip-a-Dee-Doo-Dah').
trilha(1948, 'Buttons and Bows').
trilha(1949, 'Baby, Its Cold Outside').
trilha(1950, 'Mona Lisa"').
trilha(1951, 'In the Cool, Cool, Cool of the Evening').
trilha(1952, 'The Ballad of High Noon"').
trilha(1953, 'Secret Love').
trilha(1954, 'Three Coins in the Fountain').
trilha(1955, 'Love Is a Many-Splendored Thing').
trilha(1956,'Que Sera, Sera').
trilha(1957, 'All the Way').
trilha(1958,'Gigi').
trilha(1959, 'High Hopes').
trilha(1960,'Never on Sunday').
trilha(1961,'Moon River').
trilha(1962,'Days of Wine and Roses"').
trilha(1963,'Call Me Irresponsible').
trilha(1964,'Chim Chim Cher-ee').
trilha(1965,'The Shadow of Your Smile').
trilha(1966,'Born Free"').
trilha(1967, 'Talk to the Animals').
trilha(1968, 'The Windmills of Your Mind').
trilha(1969, 'Raindrops Keep Fallin on My Head').
trilha(1970, 'For All We Know').
trilha(1971, 'Theme from Shaft').
trilha(1972, 'The Morning After').
trilha(1973, 'The Way We Were').
trilha(1974, 'We May Never Love Like This Again').
trilha(1975, 'Im Easy').
trilha(1976, 'Evergreen').
trilha(1977, 'You Light Up My Life').
trilha(1978, 'Last Dance').
trilha(1979, 'It Goes Like It Goes').
trilha(1980, 'Fame').
trilha(1981,'Best That You Can Do').
trilha(1982, 'Up Where We Belong').
trilha(1983,'Flashdance... What a Feeling').
trilha(1984, 'I Just Called to Say I Love You').
trilha(1985,'Say You, Say Me').
trilha(1986,'Take My Breath Away').
trilha(1987,'(Ive Had) The Time of My Life').
trilha(1988,'Let the River Run').
trilha(1989,'Under the Sea').
trilha(1990,'Sooner or Later').
trilha(1991,'Beauty and the Beast').
trilha(1992, 'A Whole New World').
trilha(1993, 'Streets of Philadelphia').
trilha(1994, 'Can You Feel the Love Tonight').
trilha(1995, 'Colors of the Wind').
trilha(1996, 'You Must Love Me').
trilha(1997, 'My Heart Will Go On').
trilha(1998, 'When You Believe').
trilha(1999, 'Youll Be in My Heart').
trilha(2000, 'Things Have Changed').
trilha(2001, 'If I Didnt Have You').
trilha(2002, 'Lose Yourself').
trilha(2003, 'Into the West').
trilha(2004, 'Al otro lado del río').
trilha(2005, 'Its Hard out Here for a Pimp').
trilha(2006, 'I Need to Wake Up').
trilha(2007, 'Falling Slowly').
trilha(2008, 'Jai Ho').
trilha(2009, 'The Weary Kind').
trilha(2010, 'We Belong Together').
trilha(2011, 'Man or Muppet').
trilha(2012, 'Skyfall').
trilha(2013, 'Let It Go').
trilha(2014, 'Glory').
trilha(2015, 'Writings on the Wall').
trilha(2016, 'City of Stars').
trilha(2017, 'Remember Me').
trilha(2018, 'Shallow').

%número de likes por música vencedora do Oscar para recomendar por década
%https://www.ranker.com/list/best-oscar-winning-songs/ranker-film
%
rating(1928, 12).
rating(1929, 19).
rating(1930, 25).
rating(1931, 98).
rating(1932, 55).
rating(1933, 79).
rating(1934, 41).
rating(1935, 84).
rating(1936, 311).
rating(1937, 22).
rating(1938, 102).
rating(1939, 872).
rating(1940, 527).
rating(1941, 39).
rating(1942, 458).
rating(1943, 42).
rating(1944, 102).
rating(1945, 50).
rating(1946, 28).
rating(1947, 267).
rating(1948, 52).
rating(1949, 287).
rating(1950, 108).
rating(1951, 50).
rating(1952, 97).
rating(1953, 70).
rating(1954, 76).
rating(1955, 108).
rating(1956,261).
rating(1957, 53).
rating(1958, 63).
rating(1959, 108).
rating(1960, 47).
rating(1961, 452).
rating(1962, 95).
rating(1963, 71).
rating(1964, 324).
rating(1965, 78).
rating(1966, 132).
rating(1967, 76).
rating(1968, 110).
rating(1969, 325).
rating(1970, 72).
rating(1971,172).
rating(1972, 74).
rating(1973,253).
rating(1974, 56).
rating(1975, 120).
rating(1976,139).
rating(1977, 142).
rating(1978, 116).
rating(1979, 25).
rating(1980, 208).
rating(1981, 153).
rating(1982,214).
rating(1983, 310).
rating(1984, 261).
rating(1985, 142).
rating(1986, 315).
rating(1987, 419).
rating(1988, 93).
rating(1989, 490).
rating(1990, 52).
rating(1991, 543).
rating(1992, 537).
rating(1993, 195).
rating(1994, 570).
rating(1995, 385).
rating(1996, 76).
rating(1997, 625).
rating(1998,191).
rating(1999, 296).
rating(2000, 49).
rating(2001, 137).
rating(2002, 555).
rating(2003, 138).
rating(2004, 25).
rating(2005, 44).
rating(2006, 29).
rating(2007, 109).
rating(2008, 144).
rating(2009, 26).
rating(2010, 123).
rating(2011, 95).
rating(2012, 403).
rating(2013, 401).
rating(2014, 87).
rating(2015, 112).
rating(2016, 108).
rating(2017, 516).
rating(2018, 69).

%Lista ordenada de likes por música vencedora e por décadas
%de acordo com site ranker.com

vinte([12, 19]).
trinta([25,98,55,79,41,84,311,22,102,872]).
quarenta([527,39,459,42,102,50,28,267,52,287]).
cinquenta([108,50,97,70,76,108,261,53,63,108]).
sessenta([47,452,95,71,324,78,132,76,110,325]).
setenta([72,172,74,253,56,120,139,142,116,25]).
oitenta([208,153,214,310,261,142,315,419,93,490]).
noventa([52,543,537,195,570,385,76,625,191,296]).
doismil([49,137,55,138,25,44,29,109,144,26]).
doismiledez([123,95,403,401,87,112,108,516,69]).




 
%regras úteis


vencedor(Year) 		:- 
    filme(Year,F),
    diretor(Year,D),
    ator(Year,A),
    atriz(Year,B),
    trilha(Year,T),
    write('Filme vencedor: '),nl,
    write(F),nl,
    write('Diretor vencedor: '),nl,
    write(D),nl,
    write('Ator vencedor: '),nl,
    write(A),nl,
    write('Atriz vencedora: '),nl,
    write(B),nl,
    write('A trilha sonora vencedora no ano foi: '),nl,
    write(T).
    
%regra pra achar música mais votada de uma década de acordo
%com site ranker.com. Encontra e escreve na tela

encontra_trilha(Ano) :-
    trilha(Ano,Z),
    write(Z).

%músicas com mais likes por cada década de acordo com o site
%ranker.com
%
melhor_decada_trinta :-
    trinta(Lista),
    max(Lista,Maximo),
    rating(Ano,Maximo),
    Ano > 1929,
    encontra_trilha(Ano).

melhor_decada_quarenta :-
    quarenta(Lista),
    max(Lista,Maximo),
    rating(Ano,Maximo),
    Ano > 1939,
    encontra_trilha(Ano).


melhor_decada_cinquenta :-
    cinquenta(Lista),
    max(Lista,Maximo),
    rating(Ano,Maximo),
    Ano > 1949,
    encontra_trilha(Ano).


melhor_decada_sessenta :-
    sessenta(Lista),
    max(Lista,Maximo),
    rating(Ano,Maximo),
    Ano > 1959,
    encontra_trilha(Ano).


melhor_decada_setenta :-
    setenta(Lista),
    max(Lista,Maximo),
    rating(Ano,Maximo),
    Ano > 1969,
    encontra_trilha(Ano).


melhor_decada_oitenta :-
    oitenta(Lista),
    max(Lista,Maximo),
    rating(Ano,Maximo),
    Ano > 1979,
    encontra_trilha(Ano).


melhor_decada_noventa :-
    noventa(Lista),
    max(Lista,Maximo),
    rating(Ano,Maximo),
    Ano > 1989,
    encontra_trilha(Ano).


melhor_decada_doismil :-
    doismil(Lista),
    max(Lista,Maximo),
    rating(Ano,Maximo),
    Ano > 1999,
    encontra_trilha(Ano).


melhor_decada_doismiledez :-
    doismiledez(Lista),
    max(Lista,Maximo),
    rating(Ano,Maximo),
    Ano > 2009,
    encontra_trilha(Ano).
    
    
    

%para calcular diferença entre ano de nascimento da pessoa
%e ano escolhido por ela para saber vencedores

calc_tempo(X, Y, Z) 		:- 
    (X > Y), Z is X - Y.
calc_tempo(X, Y, Z) 		:- 
    (X < Y), Z is Y - X. 
calc_tempo(X, Y, Z) 		:- 
    (X == Y), Z is 0. 




%Achar a média de uma lista
%

media( L, M ):-
    sumlist( L, Sum ),
    length( L, Length),
    (  Length > 0
    -> M is Sum / Length
    ;  M is 0
    ).

%Achar máximo de uma lista
max([M],M).          
max([H|T],M) :-
    max(T,M1),       
    M is max(H,M1).  
                     



begin(Y) :-	

          write('Oscar Database'),nl,
          write('Qual seu ano de nascimento?'),nl,
          read(Birth),nl,
          write('Qual ano deseja ver?'),nl,
		  read(Year),nl,
		  write('O vencedor foi:'),nl,
    	  vencedor(Year),nl,
    	  write('A diferença de anos entre seu aniversário e a data escolhida foi:'),nl,
    	  calc_tempo(Year,Birth,K),
          write(K),nl,
          write('A músicas que nosso sistema recomenda são de acordo '),nl,
    	  write('com o site ranker.com e são as com mais likes de cada'),nl,
          write('década.'),nl,
          write('A década de 20 tem média de likes: '),nl,
          vinte(Vinte),
          media(Vinte,U),nl,
    	  write(U),nl,
          write('A década de 30 tem média de likes: '),nl,
          trinta(Trinta),
          media(Trinta,A),nl,
    	  write(A),nl,
          write('E a música com mais likes vencedora de oscar na década: '),nl,
          melhor_decada_trinta, nl,
          write('A década de 40 tem média de likes: '),nl,
          quarenta(Quarenta),
          media(Quarenta,B),nl,
    	  write(B),nl,
          write('E a música com mais likes vencedora de oscar na década: '),nl,
          melhor_decada_quarenta, nl,
          write('A década de 50 tem média de likes: '),nl,
          cinquenta(Cinquenta),
          media(Cinquenta,C),nl,
    	  write(C),nl,
          write('E a música com mais likes vencedora de oscar na década: '),nl,
          melhor_decada_cinquenta, nl,
          write('A década de 60 tem média de likes: '),nl,
          sessenta(Sessenta),
          media(Sessenta,D),nl,
    	  write(D),nl,
          write('E a música com mais likes vencedora de oscar na década: '),nl,
          melhor_decada_sessenta, nl,
          write('A década de 70 tem média de likes: '),nl,
          setenta(Setenta),
          media(Setenta,E),nl,
    	  write(E),nl,
          write('E a música com mais likes vencedora de oscar na década: '),nl,
          melhor_decada_setenta, nl,
          write('A década de 80 tem média de likes: '),nl,
          oitenta(Oitenta),
          media(Oitenta,F),nl,
    	  write(F),nl,
          write('E a música com mais likes vencedora de oscar na década: '),nl,
          melhor_decada_oitenta, nl,
          write('A década de 90 tem média de likes: '),nl,
          noventa(Noventa),
          media(Noventa,G),nl,
    	  write(G),nl,
    	  write('E a música com mais likes vencedora de oscar na década: '),nl,
          melhor_decada_noventa, nl,
          write('A primeira década de 2000 tem média de likes: '),nl,
          doismil(Doismil),
          media(Doismil,H),nl,
    	  write(H),nl,
          write('E a música com mais likes vencedora de oscar na década: '),nl,
          melhor_decada_doismil, nl,
          write('A década de 2010 tem média de likes: '),nl,
          doismiledez(Doismiledez),
          media(Doismiledez,I),nl,
    	  write(I),nl,
          write('E a música com mais likes vencedora de oscar na década: '),nl,
          melhor_decada_doismiledez.
    
         
        
    
    
    
				
         
        
    
    
    
				