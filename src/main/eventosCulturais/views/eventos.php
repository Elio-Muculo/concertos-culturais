<?php
session_start();
ob_start();


?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../assets/bootstrap.min.css">
    <link rel="stylesheet" href="../css/styleeventos.css">
    <title>Proximos Eventos</title>
</head>

<body class="container">

    <div class="divCentral">
        <center>
            <h1>Lista de Eventos <?php //echo $_SESSION['nome'] . " #"
                                    ?>!</h1>

            <?php
            include __DIR__ . '../../config/crud.php';


            $h = read("SELECT COUNT(*) FROM evento;");
            foreach ($h as $k) {
                echo "<h2>" . "Total de Eventos Criados:  " . "#" . $k['COUNT(*)'] . "</h2>";
            }
            ?>
            <img src="../img/download.jpg" style="width: 80px; border-radius:5%;" alt="logo">
        </center>

        <?php
        $dados = read("Select * from evento ORDER BY codigo DESC");
        ?>
        <hr>
        <center>
            <p style="color: green;">
                <?php
                if (isset($_SESSION['evento'])) {
                    $a = $_SESSION['evento'];
                    echo "$a";
                    unset($_SESSION['evento']);
                }
                ?>
            </p>
        </center>
        <?php foreach ($dados as $a) {  ?>

            <div style="margin-bottom:20px; padding: 20px; border-bottom: 1px solid lightgray; display: block; text-align: justify;">

                <h3 style="color:brown"><?php echo "Nome do Evento: #"; ?> <?php echo $a['nome']; ?></h3><br>


                <!-- <h3>
                Promotor do evento: <span style="color: red"><?php echo ($a['promotor']); ?></span>
            </h3><br> -->
                <div class="row">
                    <div class="col-lg-4 col-sm-6">
                        <img src="../../webapp/img/<?php echo $a['cartaz']; ?>" style="width: 100%;" alt="cartaz">
                        <?php //echo $a['cartaz']; 
                        ?>
                    </div>

                    <div class="col-lg-8 col-sm-6 texto">
                        <label>
                            Nome do Evento: <span><?php echo $a['nome']; ?></span>
                        </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <label>
                            Promotor do Evento: <span><?php echo $a['promotor']; ?></span>
                        </label><br>
                        <!-- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
                        <label>
                            Hora de Inicio: <span><?php echo $a['hora_inicio']; ?></span>
                        </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                        <label>
                            Hora de Fim: <span><?php echo $a['hora_fim']; ?></span>
                        </label>
                        <br>
                        <!-- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
                        <label>
                            Data do Evento: <span><?php echo $a['data_evento']; ?></span>
                        </label><br>
                        <!-- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
                        <label>
                            Preco do Bilhete: <span><?php echo $a['valor_evento']; ?>MT</span>
                        </label><br>
                        <!-- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
                        <label>
                            Numero de bilhetes: <span><?php echo $a['numero_bilhete']; ?></span>
                        </label><br>
                        <label>
                            Local: <span><?php echo $a['local_evento']; ?></span>
                        </label>

                        <!-- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
                    </div>
                </div>




                <p style="text-align: right;">

                    <!-- <label style="color: green"><a href="./ver.php?id=<?php //echo $a['id']; 
                                                                            ?>">Ver</a></label>
		 		&nbsp;&nbsp;&nbsp;&nbsp; -->

                    <label type="button" class="btn btn-dark">
                        <a href="EditarEvento.php?id=<?php echo $a['codigo']; ?>" style="color:aliceblue; text-decoration:none">Editar evento</a></label>
                    &nbsp;&nbsp;&nbsp;&nbsp;

                    <label type="button" class="btn btn-warning">
                        <a href="bilhetes.php?id=<?php echo $a['codigo']; ?>" style="text-align: right; color:aliceblue; text-decoration:none">Ver bilhetes</a></label>
                    &nbsp;&nbsp;&nbsp;&nbsp;


                </p>



            </div>
        <?php } ?>
    </div>
</body>

</html>