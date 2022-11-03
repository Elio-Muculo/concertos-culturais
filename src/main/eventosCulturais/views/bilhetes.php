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
    <title>Ver Bilhetes</title>
</head>

<body class="container">
    <?php include __DIR__ . '../../config/crud.php';
    $id = $_GET['id'];
    echo "<hr>";
    echo $id;
    echo "<hr>";

    $dados = read("Select * from bilhete INNER JOIN espectador ON espectador.espectador_id = bilhete.espectador_id where bilhete.evento_id = $id;");

    // var_dump($dados);
    ?>
    <div class="divCentral">
        <center>
            <h1>Lista venda de Bilhetes</h1>
            <h3>Nome do evento: <?php //echo $_SESSION['perfil']; 
                                ?></h3>

            <?php $h = read("SELECT COUNT(*) FROM bilhete where bilhete.evento_id = $id;");
            foreach ($h as $k) {
                echo "<h2>" . "Total de Vendas:  " . "#" . $k['COUNT(*)'] . "</h2>";
            }
            ?>
            <img src="../img/download.jpg" style="width: 80px; border-radius:5%;" alt="logo">
            <hr>
        </center>
        <br><br>


        <table>
            <thead>
                <tr>
                    <th>Espectador</th>
                    <th>Estado bilhete</th>
                    <th>Quantidade</th>
                    <th>Tipo de bilhete</th>
                    <th>Data da compra</th>
                    <th>Numero de telefone</th>
                    <th>Bairro</th>
                </tr>
            </thead>
            <tbody>
                <?php $quant = 0;
                foreach ($dados as $a) {  ?>

                    <tr>
                        <td><?php echo $a['nome']; ?></td>
                        <td><?php echo $a['estado']; ?></td>
                        <td><?php echo $a['quantidade']; ?></td>
                        <td><?php echo $a['tipo_bilhete']; ?></td>
                        <td><?php echo $a['data_compra']; ?></td>
                        <td><?php echo $a['telefone']; ?></td>
                        <td><?php echo $a['bairro']; ?></td>
                    </tr>
                <?php
                    $quant = $quant + $a['quantidade'];
                } ?>
                <tr>
                    <td><strong>Total</strong></td>
                    <td>-</td>
                    <td><?php echo $quant; ?></td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                </tr>
            </tbody>
        </table>
        <br><br>
        <h3>admin: </h3>
    </div>
</body>

</html>