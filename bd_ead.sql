create database db_EAD
default character set utf8 -- Acentuação para lingua latina
default collate utf8_general_ci; -- Definindo o banco como insensitive case

use db_EAD;

create table tbl_categoria
(	
    cd_categoria int primary key auto_increment,
    ds_categoria varchar(25) not null    
)
default charset utf8;


create table tbl_autor
(	
    cd_autor int primary key auto_increment,
    nm_autor varchar(45) not null    
)
default charset utf8;


create table tbl_livro -- cria tabela
(	
    cd_livro int primary key auto_increment, -- chave primaria com auto increment
    no_isbn varchar(17) not null, 
    cd_categoria int not null,
    nm_livro varchar(70) not null,
    cd_autor int not null,
    no_pag varchar(4) not null,
    vl_preco decimal(6,2) not null,  /*atributo do tipo decimal, onde o pirmiero numero antes da virgula
									   representa o numero de caracteres maximo total, enqaunto o depois
                                       representa o maximo de caracteres depois da linha*/	
    qt_estoque int not null,
    ds_resumo_obra text not null,
    ds_capa varchar(255) not null,
    sg_lancamento enum('S','N') not null, -- tipo ENUM serve para fazer validação, aceita apenas char entre o especificado
    constraint fk_cat foreign key(cd_categoria) references tbl_categoria(cd_categoria),
    constraint fk_autor foreign key(cd_autor) references tbl_autor(cd_autor)
)  
default charset utf8;

-- Inserindo valores na tabela

insert into tbl_categoria
values(default,'Design'),
(default, 'Infraestrutura'),
(default, 'Dados'),
(default, 'Front-end'),
(default, 'Mobile');


insert into tbl_autor
values(default,'Alexandre Aquiles'),		-- codigo 1
(default, 'Tárcio Zemel'),					-- codigo 2	
(default, 'Rafael Steil'),					-- codigo 3
(default, 'Fabricio Teixeira'),				-- codigo 4
(default, 'Vinícius Carvalho'),				-- codigo 5
(default, 'Fernando Baglio'),				-- codigo 6
(default, 'David Paniz'),					-- codigo 7
(default, 'Rosangela Marquesone'),			-- codigo 8
(default, 'Natan Souza'),					-- codigo 9
(default, 'Danilo Sato'),				    -- codigo 10
(default, 'Juliano Ramos'),				    -- codigo 11
(default, 'Fernando Bryan Frizzarin'),		-- codigo 12
(default, 'Eduardo Popovici'),				-- codigo 13
(default, 'Adrian Gois'),				    -- codigo 14
(default, 'Everton Coimbra de Araújo'),		-- codigo 15
(default, 'Sérgio Lopes'),				    -- codigo 16
(default, 'Flávio Almeida'),			    -- codigo 17
(default, 'Roger Silva');				    -- codigo 18

-- Inserindo valores na tabela livro

-- primeira parte

insert into tbl_livro
values
(Default,'978-85-94188-81-6','4','O retorno do cangaceiro JavaScript','1','488','93.00','25',

'<p>O paradigma funcional está cada vez mais presente em frameworks modernos. E com o JavaScript em constante evolução,
 os desenvolvedores cangaceiros estão sempre aprendendo novas formas de aprimorar a manutenção e legibilidade de seus
 códigos, armando-se de conceitos e técnicas para se aventurar em terras ainda mais avançadas e frameworks que possuem
 grande demanda no atual mercado de trabalho.</p>
 <p>Neste livro, Flávio Almeida retorna ao cangaço JavaScript, introduzindo o leitor aos jargões e técnicas do paradigma
 funcional aplicados a JavaScript avançado. Você aprenderá os conceitos da Programação Funcional por meio de exemplos
 práticos com a criação da nossa própria biblioteca e operadores. Para completar, o autor traz os padrões de projeto
 mais utilizados para você melhorar ainda mais seus projetos. Com essas novas técnicas, você incrementará seu arsenal
 para resolver problemas comuns do seu dia a dia como programador front-end e estará pronto para explorar áreas mais
 profundas do sertão da programação.</p>', 'javascriptcangaceiro','N'),
 
 

 (Default,'978-85-5519-079-7','3','Comece com o principal banco de dados open source do mercado','5','165','59.90','40',
'<p>O MySQL é praticamente onipresente nos projetos de software atuais. Boa parte deles o utiliza como banco de dados
 para armazenar as informações da sua aplicação, por conta da sua facilidade de instalação e configuração.</p>
 <p>Neste livro, Vinícius Carvalho introduz o leitor no mundo do banco de dados MySQL, ensinando os principais comandos
 DML e DDL, e ferramentas gráficas. Você vai aprender a trabalhar com procedures, manipular triggers, criar backups e
 vários outros recursos que fazem a diferença no dia a dia.</p>
 <p>Versão do MySQL: 8.0.</p>', 'bancomysql','N'),
 

(Default,'978-85-66250-32-9','1','Edição e organização de fotos com Adobe Lightroom','3','199','69.00','23',
'<p>Uma imagem vale por mil palavras. Uma foto pode deixar alguém sem palavras. Contudo, como encontrar alguma foto
 específica no meio de outras milhares? E como editar, corrigir e mostrá-las a amigos ou clientes de maneira eficiente
 e profissional?</p>
 <p>Uma sessão fotográfica pode facilmente conter milhares de arquivos, e o número cresce cada vez mais à medida que
 os anos passam. Seja você um fotógrafo profissional ou hobbista, ainda é preciso ter uma boa organização sobre seu
 trabalho, além de ferramentas que lhe ajudem a ser mais produtivo.</p>
 <p>Para estas e outras coisas o Adobe Lightroom é a ferramenta perfeita. Com uma interface otimizada para fotógrafos
 de todos os níveis, pensada desde o início em produtividade e qualidade, este programa para Windows e Mac irá lhe
 surpreender.</p>', 'adobe-lightroom','N'),
 
 
 (Default,'978-85-66250-33-6','1','Conhecendo o Adobe Photoshop CS6','2','380','59.00','80',
'<p>Sempre quis entender como fotos que a princípio não tem nada de mais, depois de alguns retoques, ganham outra vida?
 Com esse livro, além de entender como funciona os segredos da manipulação de imagens, você vai aprender a aplicá-los 
 na prática.</p>
 <p>O autor Tárcio Zemel explica, passo a passo, para quem não possui nenhuma experiência com Photoshop, os segredos
 de edição de imagens, aplicação de filtros, organização de trabalho com camadas, aplicação de máscaras, ajustes de tons
 de cores, seleções avançadas e muito mais.</p>
 <p>No final do livro, você ainda aprende a fazer a imagem da capa, modificando e estilizando a Mona Lisa.</p>','photoshop','N');

-- Segunda parte

insert into tbl_livro
values 
(Default,'978-85-94188-60-1','4','bootstrap 4 - biblioteca front-end mais utilizada no mundo','9','172','59.90','100',
'<p>Fazer um site elegante nunca foi tão fácil, mesmo para quem não sabe escrever uma linha de CSS e, muito menos, entend
e como harmonizar cores, balancear elementos e tipografia. O Bootstrap é, resumidamente, um grande arquivo CSS com uma
 excelente documentação, que possui dezenas e dezenas de componentes prontos. No começo, foi criado pelo Twitter para servir
 como um guia de estilos em CSS da empresa; hoje, é a biblioteca mais famosa e utilizada no mundo.</p>
 <p>DNeste livro, Natan Souza ensinará como trabalhar com esta fantástica biblioteca em sua última versão 4 ao montar uma
 página do zero, a partir de um wireframe. Você verá seus principais componentes, como menu responsivo, grids, painéis e botões,
 além de aprender a customizar seu tema padrão e algumas boas práticas de HTML5, sempre levando em consideração a semântica do
 código..</p>','bootstrap','S'),
 
 
 (Default,'978-85-66250-40-4','2','DevOps na prática - entrega de software confiável e automatizada','10','284','69.90','0',
'<p>Entregar software em produção é um processo que tem se tornado cada vez mais difícil no departamento de TI de diversas
 empresas. Ciclos longos de teste e divisões entre as equipes de desenvolvimento e de operações são alguns dos fatores que
 contribuem para este problema. Mesmo equipes ágeis que produzem software entregável ao final de cada iteração sofrem para
 chegar em produção quando encontram estas barreiras.</p>
 <p>DevOps é um movimento cultural e profissional que está tentando quebrar essas barreiras. Com o foco em automação,
 colaboração, compartilhamento de ferramentas e de conhecimento, DevOps está mostrando que desenvolvedores e engenheiros
 de sistema têm muito o que aprender uns com os outros.</p>
 <p>Neste livro, Danilo Sato mostra como implementar práticas de DevOps e Entrega Contínua para aumentar a frequência
 de deploys na sua empresa, ao mesmo tempo aumentando a estabilidade e robustez do sistema em produção. Você vai aprender
 como automatizar o build e deploy de uma aplicação web, como automatizar o gerenciamento da infraestrutura, como
 monitorar o sistema em produção, como evoluir a arquitetura e migrá-la para a nuvem, além de conhecer diversas
 ferramentas que você pode aplicar no seu trabalho.</p>','devops','N'),
 
(Default,'978-85-5519-288-3','5','Ionic Framework
Construa aplicativos para todas as plataformas mobile','14','162','49.90','20',
'<p>Com a crescente difusão dos SmartPhones, surgiu uma grande quantidade de Sistemas Operacionais, o que por
 consequência aumentava a dificuldade em padronizar uma linha de desenvolvimento de aplicações que fossem portáveis
 ou multiplataforma. Por conta disto, surgiram os frameworks para compilação híbrida de aplicativos sendo desenvolvidos
 em uma única linguagem. Hoje, sabe-se que isso é possível com a mesclagem de HTML, JavaScript e CSS, basicamente.
 Dentro deste contexto, uma ferramenta se destaca, não apenas por compilar de forma híbrida, mas por oferecer diversos
 componentes, suporte a debugs e fácil aprendizado através de linguagens já conhecidas. Este é o poderoso Ionic Framework.
 Nele é possível utilizar componentes responsivos e atrativos para o desenvolvimento dos aplicativos, com a possibilidade
 de compilação e fácil instalação nas diferentes plataformas mobile. Seu foco é o front view dos aplicativos, isto é, fornece
 componentes para o desenvolvimento da interface dos aplicativos, fazendo o controle através do AngularJS e sendo compilado
 pelo PhoneGap..</p>
 <p>Neste livro, Adrian Gois explora o Ionic Framework em sua versão 1.0, orientando o leitor desde sua instalação, com a
 preparação do ambiente de desenvolvimento, passando pelos comandos básicos até chegar a aspectos avançados, utilizando
 Angular 1. Por meio da criação de um aplicativo de exemplo, que será um Cardápio Móvel, você vai evoluir seu desenvolvimento
 conforme aprende a teoria sobre Ionic e insere novos componentes na prática.</p>','ionic','N'),
 
 
 (Default,'978-85-5519-076-6','4','CSS Eficiente
 
 
Técnicas e ferramentas que fazem a diferença nos estilos','2','144','59.90','25',
'<p>Quando aprendemos a trabalhar com CSS, frequentemente nos pegamos perdidos em detalhes fundamentais que não nos são
 explicados. Por vezes, alguns desses detalhes passam despercebidos até pelo desenvolvedor front-end mais experiente.
 Mas como ir além do conhecimento básico do CSS e preparar o caminho para explorar tópicos mais avançados?.</p>
 <p>Neste livro, Tárcio Zemel ensina como organizar seu estilo, entender especificidade, como usar diferentes
 seletores, trabalhar orientado a objetos com CSS e várias outras técnicas que farão diferença no dia a dia do 
 trabalho com os estilos e abrirão novas possibilidades para você explorar ainda mais o CSS.</p>','css','N');
 
 -- terceira parte
 
 insert into tbl_livro
values 
 (Default,'978-85-5519-231-9','3','Big Data
Técnicas e tecnologias para extração de valor dos dados','8','245','69.90','0',
'<p>Estamos na era dos dados. Não importa qual seja a sua área de atuação, uma palavra atualmente em evidência é: Big Data.
 Podemos encontrar casos de uso em que esse conceito permitiu a redução do número de fraudes, redução de custos na
 produção, eficiência energética, aumento de segurança, entre outros benefícios tão almejados em diversos domínios. Muito
 embora o interesse esteja em alta, Big Data ainda é um termo incipiente, gerando incertezas sobre sua definição, características,
 aplicabilidade e desafios. Como obter dados de diferentes fontes? Como extrair valor a partir dos dados? Qual a infraestrutura
 necessária para criar uma solução de Big Data? Quais habilidades são necessárias para atuar com Big Data em seu projeto?</p>
 <p>Neste livro, Rosangela Marquesone apresenta as tecnologias e soluções de Big Data, em uma abordagem conceitual que detalha
 as características e capacidades de cada uma delas. Você verá as principais fases de um projeto de Big Data, desde a captura,
 o armazenamento, o processamento, análise, até a visualização de dados.</p>','bigdata','S'),
 
 (Default,'978-85-66250-53-4','2','Controlando versões com Git e GitHub','1','220','69.90','28',
'<p>esenvolver software não é fácil. Há sempre demandas de novas funcionalidades a serem desenvolvidas e de alterações nas
 funcionalidades já existentes. Por isso, uma das preocupações nos projetos é manter um histórico de evolução do código fonte,
 facilitando o trabalho de desfazer algumas dessas alterações, caso seja necessário. Além disso, como geralmente trabalhamos
 em equipe, outra preocupação é sobre a integração do trabalho entre os membros da equipe. Diversos problemas relacionados
 com essas preocupações podem acontecer durante o desenvolvimento de um software, e, para evitá-los, é essencial a utilização
 de uma ferramenta de controle de versão.</p>
 <p>O Git é uma dessas ferramentas de controle de versão. Foi criado em 2005 por Linus Torvalds, o criador do Linux, e hoje é
 uma das ferramentas de controle de versão mais utilizadas nos projetos de desenvolvimento de software, por ser mais rápido
 e eficiente do que as outras ferramentas tradicionais, como CVS e SVN.</p>
 <p>Neste livro, Alexandre Aquiles e Rodrigo Ferreira mostrarão como utilizar o Git para controlar as versões do seu projeto.
 Serão ensinados comandos para criação de repositórios, trabalho local e remoto, branches, tags, conflitos, dentre outros
 assuntos. Além disso, será mostrado também como criar uma conta no GitHub e utilizá-la para hospedar seus repositórios.</p>',
 'git','S'),
 
 (Default,'978-85-66250-48-0','1','Introdução e boas práticas em UX Design','4','263','79.90','50',
'<p>Cada vez mais o desenvolvimento do front-end de sites e sistemas tem papel preponderante em como o seu site converte,
 retém e agrada os usuários. Porém, além de saber como implementar uma tela, é importante saber também o que fazer nela.
 Quais recursos devem ser usados? Quais informações precisam ser exibidas? Em quais lugares?.</p>
 <p>Atualmente, a experiência do usuário (User Experience – UX) tem ganhado um papel fundamental na criação de sites e
 aplicativos. Entender como o usuário se comportará no seu sistema é de extremo valor para criar um site simples
 para ele.Neste livro, Fabricio Teixeira mostra com exemplos práticos e reais de sucesso e insucesso de diferentes
 sites quais são as boas práticas e os pilares para conseguir construir um de uso agradável. Confira o
 sumário.</p>','ux','N'),
 
 (Default,'978-85-94188-78-6','2','Guia prático do servidor Linux
Administração Linux para iniciantes','11','169','59.90','0',
'<p>O Linux é o sistema operacional mais seguro que você poderá ter em mãos. Empresas como a Dell, Asus e Acer produzem
 regularmente computadores que utilizam o Linux. Já grandes empresas, como IBM e Google, utilizam-no como estratégia
 em seus ambientes corporativos. Hoje, praticamente toda a infraestrutura da internet atua sobre o sistema do pinguim.
 Conhecer e utilizar o Linux para qualquer pessoa que pretende se tornar um profissional em TI não é uma questão opcional,
 é um pré-requisito.</p>
 <p>Este livro tem como objetivo formar profissionais na Administração de servidores GNU/Linux. Juliano Ramos mostra como
 se introduzir no sistema Linux desde o primeiro contato, iniciando pelos comandos básicos e finalizando com servidores.
 Você verá na prática como trabalhar pelo shell script, conhecerá servidores como o SSH, RAID, Apache, Proxy, entre outros,
 além de lidar com redes, módulos e particionamento de disco.</p>','linux','N'); 

-- quarta parte

insert into tbl_livro
values 
 (Default,'978-85-5519-219-7','5','Entrega contínua em Android
Como automatizar a distribuição de apps','18','190','69.90','25',
'<p>Independente de ser um desenvolvedor freelancer ou um time de desenvolvimento de software já maduro, um item especial ao
 qual o responsável pelo desenvolvimento de um novo software deve dar especial atenção é a entrega do software ao cliente.
 Como será realizada a entrega? Com qual frequência? Será adotado algum processo automatizado ou a entrega do software será
 manual? Como o software é validado antes da entrega? Embora já tenha-se discutido sobre essas questões, um vácuo literário
 permanece quando pensamos em entrega contínua de aplicações mobile.</p>
 <p>Neste livro, Roger Silva vem preencher esta lacuna, explicando como automatizar a distribuição do app para o Google Play,
 como executar testes automatizados sobre as suas funcionalidades e disponibilizá-lo para a equipe de testes em vários
 dispositivos. Você verá como tratar todos esses requisitos para que, quando um desenvolvedor comitar seu código-fonte para um
 repositório de código remoto, uma bateria de testes automatizados seja executada, acompanhada por uma análise de cobertura de
 código-fonte, verificações de regras de negócios e, por fim, chegando até a etapa de distribuição automatizada do app para o
 Google Play.</p>','entregaandroid','S'),
 
 (Default,'978-85-5519-198-5','2','Windows Server 2012 R2
Estudo dirigido para MCSA prova 70-410','13','354','79.90','40',
'<p>A nova certificação MCSA (Microsoft Certified Solutions Associate) é um título atribuído a profissionais da área de TI que
 se proponham a entender muito de um determinado assunto, como o Windows Server 2008, Windows Server 2012, Windows 7, Windows 8,
 SQL Server e Office 365. O MCSA permite que você tenha a base de conhecimento para ocupar um cargo de administrador de sistemas
 computacionais ou de administrador de rede ou ainda especialista em redes de computadores, e é a etapa mais próxima para a
 <p>Com este plano de estudos escrito por Eduardo Popovici, você visitará os assuntos cobrados, bem como terá dicas valiosas
 e exercícios para treinar, tudo para estar pronto para prestar suas provas e obter sua certificação.</p>','mcsa','S');
 
 
 
-- SELECTS

select count(*) from tbl_livro;
select * from tbl_livro;
select no_isbn, nm_livro from tbl_livro;

select * from tbl_autor;
select count(*) from tbl_autor;

select * from tbl_categoria;

-- criação da view para facilitar na utilização do slect
-- view = tabela virtual composta por um resultado de uma consulta

create view vw_livro
as select 
		tbl_livro.cd_livro,
        tbl_livro.no_isbn,
        tbl_categoria.ds_categoria,
        tbl_livro.nm_livro,
        tbl_autor.nm_autor,
        tbl_livro.no_pag,
        tbl_livro.vl_preco,
        tbl_livro.qt_estoque,
        tbl_livro.ds_resumo_obra,
        tbl_livro.ds_capa,
        tbl_livro.sg_lancamento
from tbl_livro inner join tbl_autor -- fazendo a junção de tableas a partir do elemento em comum descrito abaixo
	on tbl_livro.cd_autor = tbl_autor.cd_autor -- ponto em comum entre tabelas
inner join tbl_categoria
	on tbl_livro.cd_categoria = tbl_categoria.cd_categoria;
    
select * from vw_livro; -- Bem melhor

create user 'ead'@'localhost' identified with mysql_native_password by '123456';
grant all privileges on db_ead.* to 'ead'@'localhost' with grant option;

