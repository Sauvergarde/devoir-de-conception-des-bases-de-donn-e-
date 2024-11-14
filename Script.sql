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
  descSpec char(20)
);
CREATE TABLE Formation(
  codeForm integer primary key,
  titreForm var(50),
  dureForm time,
  prixForm float,
  codeSpec integer,
  FOREIGN KEY (codeSpec) REFERENCES specialite(codeSpec)
)

