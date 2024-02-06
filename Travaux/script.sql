CREATE TABLE Utilisateur (
                             UtilisateurID INT PRIMARY KEY,
                             Email VARCHAR(255) UNIQUE,
                             MotDePasse VARCHAR(255),
                             Nom VARCHAR(50),
                             Prenom VARCHAR(50)
);
CREATE TABLE Etudiant (
                          EtudiantID INT PRIMARY KEY,
                          FOREIGN KEY (EtudiantID) REFERENCES Utilisateur (UtilisateurID)
);
CREATE TABLE Formateur (
                           FormateurID INT PRIMARY KEY,
                           FOREIGN KEY (FormateurID) REFERENCES Utilisateur (UtilisateurID)
);
CREATE TABLE Session (
                         SessionID INT PRIMARY KEY,
                         NomSession VARCHAR(50) UNIQUE,
                         DateDebut DATE,
                         DateFin DATE
);
CREATE TABLE Cours (
                       CoursID INT PRIMARY KEY,
                       NomCours VARCHAR(100),
                       SessionID INT,
                       FOREIGN KEY (SessionID) REFERENCES Session (SessionID)
);
CREATE TABLE ContenuCours (
                              ContenuID INT PRIMARY KEY,
                              Description TEXT,
                              CoursID INT,
                              FOREIGN KEY (CoursID) REFERENCES Cours (CoursID)
);
CREATE TABLE Evaluation (
                            EvaluationID INT PRIMARY KEY,
                            TypeEvaluation VARCHAR(50),
                            FormateurID INT,
                            SessionID INT,
                            FOREIGN KEY (FormateurID) REFERENCES Formateur (FormateurID),
                            FOREIGN KEY (SessionID) REFERENCES Session (SessionID)
);
CREATE TABLE Note (
                      NoteID INT PRIMARY KEY,
                      Note INT,
                      EvaluationID INT,
                      EtudiantID INT,
                      FOREIGN KEY (EvaluationID) REFERENCES Evaluation (EvaluationID),
                      FOREIGN KEY (EtudiantID) REFERENCES Etudiant (EtudiantID)
);
CREATE TABLE Trombinoscope (
                               TrombinoscopeID INT PRIMARY KEY,
                               PhotoURL VARCHAR(255),
                               SessionID INT,
                               EtudiantID INT,
                               FOREIGN KEY (SessionID) REFERENCES Session (SessionID),
                               FOREIGN KEY (EtudiantID) REFERENCES Etudiant (EtudiantID)
);