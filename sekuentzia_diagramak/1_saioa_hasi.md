# 1. Saioa Hasi - Sekuentzia Diagrama

Diagrama honek erabiltzaile batek `login.php` bitartez saioa hastean jarraitzen duen prozesu ERREALA erakusten du.

## Partaideak (Zutabeak):
*   **Erabiltzailea:** Sisteman sartu nahi duen pertsona.
*   **login.php (HTML):** Erabiltzaileari erakusten zaion inprimakia.
*   **login.php (PHP):** Zerbitzarian exekutatzen den backend logika.
*   **Datu-basea (V_Login):** Erabiltzaileen datuak gordetzen dituen bistak.

## Urratsak (Gertaerak):
1.  **Erabiltzailea -> login.php (HTML):** Emaila eta pasahitza idatzi eta "Sartu" sakatu.
2.  **login.php (HTML) -> login.php (PHP):** Formularioa bidali `POST` metodoaren bidez.
3.  **login.php (PHP) -> Datu-basea:** Kredentzialak egiaztatu. Testua: `SELECT * FROM V_Login WHERE email = ?`
4.  **Datu-basea -->> login.php (PHP):** Erabiltzailearen errenkada (id, pasahitza, rola).
5.  **login.php (PHP) -> login.php (PHP):** Pasahitza konparatu (`$pasahitza === $user['pasahitza']`).

**[Alt: Kredentzial okerrak edota erabiltzailea ez dago aktibo]**:
6.  **login.php (PHP) -->> login.php (HTML):** Errore mezua definitu (`$errore_mezua`).
7.  **login.php (HTML) -->> Erabiltzailea:** Alerta gorria erakutsi pantailan.

**[Alt: Kredentzial zuzenak]**:
8.  **login.php (PHP) -> login.php (PHP):** Saioa hasi eta aldagaiak gorde. Testua: `session_start()` eta `$_SESSION['rol_id'] = ...`
9.  **login.php (PHP) -->> Erabiltzailea:** Orri nagusira birbideratu. Testua: `header("Location: ../php_medikua/index.php")` (edota dagokion rola).

---

## Ikuspegia (Mermaid)

```mermaid
sequenceDiagram
    participant E as Erabiltzailea
    participant H as login.php (HTML)
    participant P as login.php (PHP)
    participant DB as Datu-basea (V_Login)

    E->>H: Email eta Pasahitza sartu
    H->>P: POST eskaera bidali
    P->>DB: prepare("SELECT * FROM V_Login WHERE email = ?")
    DB-->>P: Erabiltzaile datuak (ID, Rola, Pass)
    
    Note over P: Pasahitza egiaztatu
    
    alt Kredentzial okerrak
        P-->>H: $errore_mezua definitu
        H-->>E: Alerta Mezua erakutsi
    else Kredentzial zuzenak
        Note over P: session_start()
        P->>P: $_SESSION aldagaiak kargatu
        P-->>E: header("Location: .../index.php")
    end
```
