/**********************************************************************************************/

CREATE TABLE "Reference" (

	"Id_Ref"	INTEGER NOT NULL,
	"Ref"	    VARCHAR(100),

	PRIMARY KEY("Id_Ref" AUTOINCREMENT)
);

/**********************************************************************************************/

CREATE TABLE "Marque" (

	"Id_Marque"	INTEGER NOT NULL,
	"Marque"	VARCHAR(100),

	PRIMARY KEY("Id_Marque" AUTOINCREMENT)
);

/**********************************************************************************************/

CREATE TABLE "Produit" (

	"Id_Produit"	INTEGER NOT NULL,
	"Produit"	    TEXT,
	"Prix"	        TEXT,
	"Couleur"	    TEXT,
	"Composition"	TEXT,
	"Taille"	    TEXT,
	"Avis"	        INTEGER,
	"Reference"	    TEXT,
	"Marque"	    TEXT,

	PRIMARY KEY("Id_Produit" AUTOINCREMENT),

	FOREIGN KEY("Marque") REFERENCES "Marque"("Marque"),
	FOREIGN KEY("Reference") REFERENCES "Reference"("Ref")
);

/**********************************************************************************************/

CREATE TABLE "Vendeur" (

	"Id_Vendeur"	INTEGER NOT NULL,
	"Vendeur"	    VARCHAR(100),
	"Produit"	    VARCHAR(100),

	FOREIGN KEY("Produit") REFERENCES "Produit"("Produit"),

	PRIMARY KEY("Id_Vendeur" AUTOINCREMENT)
);

/**********************************************************************************************/

CREATE TABLE "Note" (

	"Id_Note"	INTEGER NOT NULL,
	"Note"	    VARCHAR(100),
	"Produit"	VARCHAR(100),

	PRIMARY KEY("Id_Note" AUTOINCREMENT),
	FOREIGN KEY("Produit") REFERENCES "Produit"("Produit")
);

/**********************************************************************************************/

CREATE TABLE "Livraison" (

	"Id_Livraison"	INTEGER NOT NULL,
	"Livraison"	    VARCHAR(100),
	"Vendeur"	    VARCHAR(100),
	"Produit"	    VARCHAR(100),

	PRIMARY KEY("Id_Livraison" AUTOINCREMENT),

	FOREIGN KEY("Vendeur") REFERENCES "Vendeur"("Vendeur"),
	FOREIGN KEY("Produit") REFERENCES "Produit"("Produit")
);

/**********************************************************************************************/