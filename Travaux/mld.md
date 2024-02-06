
1. **Entités:**
    - **Utilisateur**
        - *UtilisateurID* (clé primaire)
        - Email
        - Mot de passe
        - Nom
        - Prénom

    - **Etudiant**
        - *EtudiantID* (clé primaire, clé étrangère vers Utilisateur) (1:1)

    - **Formateur**
        - *FormateurID* (clé primaire, clé étrangère vers Utilisateur) (1:1)

    - **Session**
        - *SessionID* (clé primaire)
        - Nom de la session (unique)
        - Date de début
        - Date de fin

    - **Cours**
        - *CoursID* (clé primaire)
        - Nom du cours
        - *SessionID* (clé étrangère vers Session) (1:N)

    - **ContenuCours**
        - *ContenuID* (clé primaire)
        - Description ou contenu du cours
        - *CoursID* (clé étrangère vers Cours) (1:1)

    - **Evaluation**
        - *EvaluationID* (clé primaire)
        - Type d'évaluation (qcm, tp, etc.)
        - *FormateurID* (clé étrangère vers Formateur) (1:N)
        - *SessionID* (clé étrangère vers Session) (1:N)

    - **Note**
        - *NoteID* (clé primaire)
        - Note
        - *EvaluationID* (clé étrangère vers Evaluation) (1:N)
        - *EtudiantID* (clé étrangère vers Etudiant) (1:N)

    - **Trombinoscope**
        - *TrombinoscopeID* (clé primaire)
        - URL de la photo
        - *SessionID* (clé étrangère vers Session) (1:1)
        - *EtudiantID* (clé étrangère vers Etudiant) (1:1)