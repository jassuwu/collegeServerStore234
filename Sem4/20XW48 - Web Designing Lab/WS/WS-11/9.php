<!DOCTYPE html>
<html lang="en">

<body>



    <form action="9.php" method="post">
        <input name="text" type="text">
        <input type="submit">
    </form>


    <?php



    $_SESSION['data'] = $_POST['text'];
    echo "The name you entered is: " . $_SESSION['data'];

    foreach ($_SESSION as $key => $value) {
        echo "\n" . $value;
    }

    ?>

</body>

</html>