<!DOCTYPE html>
<html lang="nl">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login</title>
    </head>
    <header>

    </header>
    <body>
      <div>
        <form action="index.php" method="post">
            <label for="username">Gebruikersnaam</label>
            <input type="text" name="username" placeholder="Uw gebruikersnaam" required><br>
            <label for="password">Wachtwoord</label>
            <input type="password" name="password" placeholder="Uw wachtwoord" required><br>
            <input type="submit" value="Log in">
        </form>
        <a href="signup.php"></a>
      </div>
    </body>
</html>
