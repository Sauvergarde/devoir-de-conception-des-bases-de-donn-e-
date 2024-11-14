CREATE DATABASE centre_formation
use centre_formation
CREATE TABLE Etudiant(
NumCNIEtu integer primarykey,
NomEtu char(20),
prenomEtu char(20),
dareNaissance date,
adresseEtu char(15),
villeEtu char(20),
niveauEtu char(10)
);
CREATE TABLE specialite (
codeSpec integer primary key,
  nomSpec char(20),
  descSpec char(20),
   active TYNYNT NOT NULL,
  check(active IN (0,1))
);
CREATE TABLE Formation(
  codeForm integer primary key,
  titreForm var(50),
  dureForm time,
  prixForm float,
  codeSpec integer,
  FOREIGN KEY (codeSpec) REFERENCES specialite(codeSpec)
);
CREATE TABLE SessionEtu(
  codeSess integer primary key,
  nomSess char(20),
  dateDebut date,
  dateFin date,
  codeForm integer,
  check(dateFin > dateDebut),
  FOREIGN KEY (codeForm) REFERENCES Formation(codeForm)
);
CREATE TABLE inscription(
  typecour char(20) NOT Null,
  NumCNIEtu integer,
  codeSess integer,
  FOREIGN KEY (NumCNIEtu) REFERENCES etudiant(NumCNIEtu),
  FOREIGN KEY (codeSess) REFERENCES SessionEtu(codeSess)
)

