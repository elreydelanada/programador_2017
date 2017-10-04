-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: clase30
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.21-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departamento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) DEFAULT NULL,
  `id_provincia` int(11) NOT NULL,
  `id_departamento` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_provincia` (`id_provincia`),
  CONSTRAINT `departamento_ibfk_1` FOREIGN KEY (`id_provincia`) REFERENCES `provincia` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=94029 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (6007,'Adolfo Alsina',6,7),(6014,'Adolfo Gonzales Chaves',6,14),(6021,'Alberti',6,21),(6028,'Almirante Brown',6,28),(6035,'Avellaneda',6,35),(6042,'Ayacucho',6,42),(6049,'Azul',6,49),(6056,'Bahía Blanca',6,56),(6063,'Balcarce',6,63),(6070,'Baradero',6,70),(6077,'Arrecifes',6,77),(6084,'Benito Juárez',6,84),(6091,'Berazategui',6,91),(6098,'Berisso',6,98),(6105,'Bolívar',6,105),(6112,'Bragado',6,112),(6119,'Brandsen',6,119),(6126,'Campana',6,126),(6134,'Cañuelas',6,134),(6140,'Capitán Sarmiento',6,140),(6147,'Carlos Casares',6,147),(6154,'Carlos Tejedor',6,154),(6161,'Carmen de Areco',6,161),(6168,'Castelli',6,168),(6175,'Colón',6,175),(6182,'Coronel de Marina Leonardo Rosales',6,182),(6189,'Coronel Dorrego',6,189),(6196,'Coronel Pringles',6,196),(6203,'Coronel Suárez',6,203),(6210,'Chacabuco',6,210),(6217,'Chascomús',6,217),(6224,'Chivilcoy',6,224),(6231,'Daireaux',6,231),(6238,'Dolores',6,238),(6245,'Ensenada',6,245),(6252,'Escobar',6,252),(6260,'Esteban Echeverría',6,260),(6266,'Exaltación de la Cruz',6,266),(6270,'Ezeiza',6,270),(6274,'Florencio Varela',6,274),(6277,'Florentino Ameghino',6,277),(6280,'General Alvarado',6,280),(6287,'General Alvear',6,287),(6294,'General Arenales',6,294),(6301,'General Belgrano',6,301),(6308,'General Guido',6,308),(6315,'General Juan Madariaga',6,315),(6322,'General La Madrid',6,322),(6329,'General Las Heras',6,329),(6336,'General Lavalle',6,336),(6343,'General Paz',6,343),(6351,'General Pinto',6,351),(6357,'General Pueyrredón',6,357),(6364,'General Rodríguez',6,364),(6371,'General San Martín',6,371),(6385,'General Viamonte',6,385),(6392,'General Villegas',6,392),(6399,'Guaminí',6,399),(6406,'Hipólito Yrigoyen',6,406),(6408,'Hurlingham',6,408),(6410,'Ituzaingó',6,410),(6412,'José C. Paz',6,412),(6413,'Junín',6,413),(6420,'La Costa',6,420),(6427,'La Matanza',6,427),(6434,'Lanús',6,434),(6441,'La Plata',6,441),(6448,'Laprida',6,448),(6455,'Las Flores',6,455),(6462,'Leandro N. Alem',6,462),(6469,'Lincoln',6,469),(6476,'Lobería',6,476),(6483,'Lobos',6,483),(6490,'Lomas de Zamora',6,490),(6497,'Luján',6,497),(6505,'Magdalena',6,505),(6511,'Maipú',6,511),(6515,'Malvinas Argentinas',6,515),(6518,'Mar Chiquita',6,518),(6525,'Marcos Paz',6,525),(6532,'Mercedes',6,532),(6539,'Merlo',6,539),(6547,'Monte',6,547),(6553,'Monte Hermoso',6,553),(6560,'Moreno',6,560),(6568,'Morón',6,568),(6574,'Navarro',6,574),(6581,'Necochea',6,581),(6588,'9 de Julio',6,588),(6595,'Olavarría',6,595),(6602,'Patagones',6,602),(6609,'Pehuajó',6,609),(6616,'Pellegrini',6,616),(6623,'Pergamino',6,623),(6630,'Pila',6,630),(6638,'Pilar',6,638),(6644,'Pinamar',6,644),(6648,'Presidente Perón',6,648),(6651,'Puán',6,651),(6655,'Punta Indio',6,655),(6658,'Quilmes',6,658),(6665,'Ramallo',6,665),(6672,'Rauch',6,672),(6679,'Rivadavia',6,679),(6686,'Rojas',6,686),(6693,'Roque Pérez',6,693),(6700,'Saavedra',6,700),(6707,'Saladillo',6,707),(6714,'Salto',6,714),(6721,'Salliqueló',6,721),(6728,'San Andrés de Giles',6,728),(6735,'San Antonio de Areco',6,735),(6742,'San Cayetano',6,742),(6749,'San Fernando',6,749),(6756,'San Isidro',6,756),(6760,'San Miguel',6,760),(6763,'San Nicolás',6,763),(6770,'San Pedro',6,770),(6778,'San Vicente',6,778),(6784,'Suipacha',6,784),(6791,'Tandil',6,791),(6798,'Tapalqué',6,798),(6805,'Tigre',6,805),(6812,'Tordillo',6,812),(6819,'Tornquist',6,819),(6826,'Trenque Lauquen',6,826),(6833,'Tres Arroyos',6,833),(6840,'Tres de Febrero',6,840),(6847,'Tres Lomas',6,847),(6854,'25 de Mayo',6,854),(6861,'Vicente López',6,861),(6868,'Villa Gesell',6,868),(6875,'Villarino',6,875),(6882,'Zárate',6,882),(10007,'Ambato',10,7),(10014,'Ancasti',10,14),(10021,'Andalgalá',10,21),(10028,'Antofagasta de la Sierra',10,28),(10035,'Belén',10,35),(10042,'Capayán',10,42),(10049,'Capital',10,49),(10056,'El Alto',10,56),(10063,'Fray Mamerto Esquiú',10,63),(10070,'La Paz',10,70),(10077,'Paclín',10,77),(10084,'Pomán',10,84),(10091,'Santa María',10,91),(10098,'Santa Rosa',10,98),(10105,'Tinogasta',10,105),(10112,'Valle Viejo',10,112),(14007,'Calamuchita',14,7),(14014,'Capital',14,14),(14021,'Colón',14,21),(14028,'Cruz del Eje',14,28),(14035,'General Roca',14,35),(14042,'General San Martín',14,42),(14049,'Ischilín',14,49),(14056,'Juárez Celman',14,56),(14063,'Marcos Juárez',14,63),(14070,'Minas',14,70),(14077,'Pocho',14,77),(14084,'Presidente Roque Sáenz Peña',14,84),(14091,'Punilla',14,91),(14098,'Río Cuarto',14,98),(14105,'Río Primero',14,105),(14112,'Río Seco',14,112),(14119,'Río Segundo',14,119),(14126,'San Alberto',14,126),(14133,'San Javier',14,133),(14140,'San Justo',14,140),(14147,'Santa María',14,147),(14154,'Sobremonte',14,154),(14161,'Tercero Arriba',14,161),(14168,'Totoral',14,168),(14175,'Tulumba',14,175),(14182,'Unión',14,182),(18007,'Bella Vista',18,7),(18014,'Berón de Astrada',18,14),(18021,'Capital',18,21),(18028,'Concepción',18,28),(18035,'Curuzú Cuatiá',18,35),(18042,'Empedrado',18,42),(18049,'Esquina',18,49),(18056,'General Alvear',18,56),(18063,'General Paz',18,63),(18070,'Goya',18,70),(18077,'Itatí',18,77),(18084,'Ituzaingó',18,84),(18091,'Lavalle',18,91),(18098,'Mburucuyá',18,98),(18105,'Mercedes',18,105),(18112,'Monte Caseros',18,112),(18119,'Paso de los Libres',18,119),(18126,'Saladas',18,126),(18133,'San Cosme',18,133),(18140,'San Luis del Palmar',18,140),(18147,'San Martín',18,147),(18154,'San Miguel',18,154),(18161,'San Roque',18,161),(18168,'Santo Tomé',18,168),(18175,'Sauce',18,175),(22007,'Almirante Brown',22,7),(22014,'Bermejo',22,14),(22021,'Comandante Fernández',22,21),(22028,'Chacabuco',22,28),(22036,'12 de Octubre',22,36),(22039,'2 de Abril',22,39),(22043,'Fray Justo Santa María de Oro',22,43),(22049,'General Belgrano',22,49),(22056,'General Donovan',22,56),(22063,'General Güemes',22,63),(22070,'Independencia',22,70),(22077,'Libertad',22,77),(22084,'Libertador General San Martín',22,84),(22091,'Maipú',22,91),(22098,'Mayor Luis J. Fontana',22,98),(22105,'9 de Julio',22,105),(22112,'O\'Higgins',22,112),(22119,'Presidencia de la Plaza',22,119),(22126,'1º de Mayo',22,126),(22133,'Quitilipi',22,133),(22140,'San Fernando',22,140),(22147,'San Lorenzo',22,147),(22154,'Sargento Cabral',22,154),(22161,'Tapenagá',22,161),(22168,'25 de Mayo',22,168),(26007,'Biedma',26,7),(26014,'Cushamen',26,14),(26021,'Escalante',26,21),(26028,'Florentino Ameghino',26,28),(26035,'Futaleufú',26,35),(26042,'Gaiman',26,42),(26049,'Gastre',26,49),(26056,'Languiñeo',26,56),(26063,'Mártires',26,63),(26070,'Paso de Indios',26,70),(26077,'Rawson',26,77),(26084,'Río Senguer',26,84),(26091,'Sarmiento',26,91),(26098,'Tehuelches',26,98),(26105,'Telsen',26,105),(30008,'Colón',30,8),(30015,'Concordia',30,15),(30021,'Diamante',30,21),(30028,'Federación',30,28),(30035,'Federal',30,35),(30042,'Feliciano',30,42),(30049,'Gualeguay',30,49),(30056,'Gualeguaychú',30,56),(30063,'Islas del Ibicuy',30,63),(30070,'La Paz',30,70),(30077,'Nogoyá',30,77),(30084,'Paraná',30,84),(30088,'San Salvador',30,88),(30091,'Tala',30,91),(30098,'Uruguay',30,98),(30105,'Victoria',30,105),(30113,'Villaguay',30,113),(34007,'Bermejo',34,7),(34014,'Formosa',34,14),(34021,'Laishi',34,21),(34028,'Matacos',34,28),(34035,'Patiño',34,35),(34042,'Pilagás',34,42),(34049,'Pilcomayo',34,49),(34056,'Pirané',34,56),(34063,'Ramón Lista',34,63),(38007,'Cochinoca',38,7),(38014,'El Carmen',38,14),(38021,'Dr. Manuel Belgrano',38,21),(38028,'Humahuaca',38,28),(38035,'Ledesma',38,35),(38042,'Palpalá',38,42),(38049,'Rinconada',38,49),(38056,'San Antonio',38,56),(38063,'San Pedro',38,63),(38070,'Santa Bárbara',38,70),(38077,'Santa Catalina',38,77),(38084,'Susques',38,84),(38094,'Tilcara',38,94),(38098,'Tumbaya',38,98),(38105,'Valle Grande',38,105),(38112,'Yavi',38,112),(42007,'Atreucó',42,7),(42014,'Caleu Caleu',42,14),(42021,'Capital',42,21),(42028,'Catriló',42,28),(42035,'Conhelo',42,35),(42042,'Curacó',42,42),(42049,'Chalileo',42,49),(42056,'Chapaleufú',42,56),(42063,'Chical Co',42,63),(42070,'Guatraché',42,70),(42077,'Hucal',42,77),(42084,'Lihuel Calel',42,84),(42091,'Limay Mahuida',42,91),(42098,'Loventué',42,98),(42105,'Maracó',42,105),(42112,'Puelén',42,112),(42119,'Quemú Quemú',42,119),(42126,'Rancul',42,126),(42133,'Realicó',42,133),(42140,'Toay',42,140),(42147,'Trenel',42,147),(42154,'Utracán',42,154),(46007,'Arauco',46,7),(46014,'Capital',46,14),(46021,'Castro Barros',46,21),(46028,'Coronel Felipe Varela',46,28),(46035,'Chamical',46,35),(46042,'Chilecito',46,42),(46049,'Famatina',46,49),(46056,'General Ángel V. Peñaloza',46,56),(46063,'General Belgrano',46,63),(46070,'General Juan Facundo Quiroga',46,70),(46077,'General Lamadrid',46,77),(46084,'General Ocampo',46,84),(46091,'General San Martín',46,91),(46098,'Vinchina',46,98),(46105,'Independencia',46,105),(46112,'Rosario Vera Peñaloza',46,112),(46119,'San Blas de los Sauces',46,119),(46126,'Sanagasta',46,126),(50007,'Capital',50,7),(50014,'General Alvear',50,14),(50021,'Godoy Cruz',50,21),(50028,'Guaymallén',50,28),(50035,'Junín',50,35),(50042,'La Paz',50,42),(50049,'Las Heras',50,49),(50056,'Lavalle',50,56),(50063,'Luján de Cuyo',50,63),(50070,'Maipú',50,70),(50077,'Malargüe',50,77),(50084,'Rivadavia',50,84),(50091,'San Carlos',50,91),(50098,'San Martín',50,98),(50105,'San Rafael',50,105),(50112,'Santa Rosa',50,112),(50119,'Tunuyán',50,119),(50126,'Tupungato',50,126),(54007,'Apóstoles',54,7),(54014,'Cainguás',54,14),(54021,'Candelaria',54,21),(54028,'Capital',54,28),(54035,'Concepción',54,35),(54042,'Eldorado',54,42),(54049,'General Manuel Belgrano',54,49),(54056,'Guaraní',54,56),(54063,'Iguazú',54,63),(54070,'Leandro N. Alem',54,70),(54077,'Libertador General San Martín',54,77),(54084,'Montecarlo',54,84),(54091,'Oberá',54,91),(54098,'San Ignacio',54,98),(54105,'San Javier',54,105),(54112,'San Pedro',54,112),(54119,'25 de Mayo',54,119),(58007,'Aluminé',58,7),(58014,'Añelo',58,14),(58021,'Catán Lil',58,21),(58028,'Collón Curá',58,28),(58035,'Confluencia',58,35),(58042,'Chos Malal',58,42),(58049,'Huiliches',58,49),(58056,'Lácar',58,56),(58063,'Loncopué',58,63),(58070,'Los Lagos',58,70),(58077,'Minas',58,77),(58084,'Ñorquín',58,84),(58091,'Pehuenches',58,91),(58098,'Picún Leufú',58,98),(58105,'Picunches',58,105),(58112,'Zapala',58,112),(62007,'Adolfo Alsina',62,7),(62014,'Avellaneda',62,14),(62021,'Bariloche',62,21),(62028,'Conesa',62,28),(62035,'El Cuy',62,35),(62042,'General Roca',62,42),(62049,'9 de Julio',62,49),(62056,'Ñorquincó',62,56),(62063,'Pichi Mahuida',62,63),(62070,'Pilcaniyeu',62,70),(62077,'San Antonio',62,77),(62084,'Valcheta',62,84),(62091,'25 de Mayo',62,91),(66007,'Anta',66,7),(66014,'Cachi',66,14),(66021,'Cafayate',66,21),(66028,'Capital',66,28),(66035,'Cerrillos',66,35),(66042,'Chicoana',66,42),(66049,'General Güemes',66,49),(66056,'General José de San Martín',66,56),(66063,'Guachipas',66,63),(66070,'Iruya',66,70),(66077,'La Caldera',66,77),(66084,'La Candelaria',66,84),(66091,'La Poma',66,91),(66098,'La Viña',66,98),(66105,'Los Andes',66,105),(66112,'Metán',66,112),(66119,'Molinos',66,119),(66126,'Orán',66,126),(66133,'Rivadavia',66,133),(66140,'Rosario de la Frontera',66,140),(66147,'Rosario de Lerma',66,147),(66154,'San Carlos',66,154),(66161,'Santa Victoria',66,161),(70007,'Albardón',70,7),(70014,'Angaco',70,14),(70021,'Calingasta',70,21),(70028,'Capital',70,28),(70035,'Caucete',70,35),(70042,'Chimbas',70,42),(70049,'Iglesia',70,49),(70056,'Jáchal',70,56),(70063,'9 de Julio',70,63),(70070,'Pocito',70,70),(70077,'Rawson',70,77),(70084,'Rivadavia',70,84),(70091,'San Martín',70,91),(70098,'Santa Lucía',70,98),(70105,'Sarmiento',70,105),(70112,'Ullum',70,112),(70119,'Valle Fértil',70,119),(70126,'25 de Mayo',70,126),(70133,'Zonda',70,133),(74007,'Ayacucho',74,7),(74014,'Belgrano',74,14),(74021,'Coronel Pringles',74,21),(74028,'Chacabuco',74,28),(74035,'General Pedernera',74,35),(74042,'Gobernador Dupuy',74,42),(74049,'Junín',74,49),(74056,'La Capital',74,56),(74063,'Libertador General San Martín',74,63),(78007,'Corpen Aike',78,7),(78014,'Deseado',78,14),(78021,'Güer Aike',78,21),(78028,'Lago Argentino',78,28),(78035,'Lago Buenos Aires',78,35),(78042,'Magallanes',78,42),(78049,'Río Chico',78,49),(82007,'Belgrano',82,7),(82014,'Caseros',82,14),(82021,'Castellanos',82,21),(82028,'Constitución',82,28),(82035,'Garay',82,35),(82042,'General López',82,42),(82049,'General Obligado',82,49),(82056,'Iriondo',82,56),(82063,'La Capital',82,63),(82070,'Las Colonias',82,70),(82077,'9 de Julio',82,77),(82084,'Rosario',82,84),(82091,'San Cristóbal',82,91),(82098,'San Javier',82,98),(82105,'San Jerónimo',82,105),(82112,'San Justo',82,112),(82119,'San Lorenzo',82,119),(82126,'San Martín',82,126),(82133,'Vera',82,133),(86007,'Aguirre',86,7),(86014,'Alberdi',86,14),(86021,'Atamisqui',86,21),(86028,'Avellaneda',86,28),(86035,'Banda',86,35),(86042,'Belgrano',86,42),(86049,'Capital',86,49),(86056,'Copo',86,56),(86063,'Choya',86,63),(86070,'Figueroa',86,70),(86077,'General Taboada',86,77),(86084,'Guasayán',86,84),(86091,'Jiménez',86,91),(86098,'Juan F. Ibarra',86,98),(86105,'Loreto',86,105),(86112,'Mitre',86,112),(86119,'Moreno',86,119),(86126,'Ojo de Agua',86,126),(86133,'Pellegrini',86,133),(86140,'Quebrachos',86,140),(86147,'Río Hondo',86,147),(86154,'Rivadavia',86,154),(86161,'Robles',86,161),(86168,'Salavina',86,168),(86175,'San Martín',86,175),(86182,'Sarmiento',86,182),(86189,'Silípica',86,189),(90007,'Burruyacú',90,7),(90014,'Cruz Alta',90,14),(90021,'Chicligasta',90,21),(90028,'Famaillá',90,28),(90035,'Graneros',90,35),(90042,'Juan B. Alberdi',90,42),(90049,'La Cocha',90,49),(90056,'Leales',90,56),(90063,'Lules',90,63),(90070,'Monteros',90,70),(90077,'Río Chico',90,77),(90084,'Capital',90,84),(90091,'Simoca',90,91),(90098,'Tafí del Valle',90,98),(90105,'Tafí Viejo',90,105),(90112,'Trancas',90,112),(90119,'Yerba Buena',90,119),(94007,'Río Grande',94,7),(94014,'Ushuaia',94,14),(94021,'Islas del Atlántico Sur',94,21),(94028,'Antártida Argentina',94,28);
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provincia`
--

DROP TABLE IF EXISTS `provincia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `provincia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provincia`
--

LOCK TABLES `provincia` WRITE;
/*!40000 ALTER TABLE `provincia` DISABLE KEYS */;
INSERT INTO `provincia` VALUES (6,'Buenos Aires'),(10,'Catamarca'),(14,'Córdoba'),(18,'Corrientes'),(22,'Chaco'),(26,'Chubut'),(30,'Entre Ríos'),(34,'Formosa'),(38,'Jujuy'),(42,'La Pampa'),(46,'La Rioja'),(50,'Mendoza'),(54,'Misiones'),(58,'Neuquén'),(62,'Río Negro'),(66,'Salta'),(70,'San Juan'),(74,'San Luis'),(78,'Santa Cruz'),(82,'Santa Fe'),(86,'Santiago del Estero'),(90,'Tucumán'),(94,'Tierra del Fuego, Antártida e Islas del Atlántico Sur');
/*!40000 ALTER TABLE `provincia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dni` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(70) NOT NULL,
  `id_provincia` int(11) NOT NULL,
  `id_departamento` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dni` (`dni`),
  KEY `FK_usuario_provincia_idx` (`id_provincia`),
  KEY `FK_usuario_departamento_clase30_idx` (`id_departamento`),
  CONSTRAINT `FK_usuario_departamento_clase30` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_usuario_provincia_clase30` FOREIGN KEY (`id_provincia`) REFERENCES `provincia` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,321,'Matias','alvarado',6,6021),(4,444444,'Patricia Elena','Gomez',6,6021),(7,12345678,'car','los',6,6021),(8,12321321,'a','a',6,6021),(9,444444456,'yuyuy','tytyty',22,22168),(10,9876,'dd','nn',6,6007);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-03 21:03:34
