<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Produits</title>
</head>
<body>

<h1>Encodage produit</h1>

<form action="Barcode" method="get">

    <label>Code produit :</label>
    <input type="text" name="code" required>

    <br><br>

    <label>Libellé produit :</label>
    <input type="text" name="label" required>

    <br><br>

   <label>Format :</label>
    <select name="fmt">
        <option value="png">PNG</option>
        <option value="jpeg">JPEG</option>
    </select>
    <br><br>

    <label>Quiet Zone :</label>
    <input type="number" name="qz" value="2">
    <br><br>

    <label>Hauteur :</label>
    <input type="number" name="height" value="50">
    <br><br>
    
    <label>le type de code-barres :</label><!-- comment -->
    <select name="type">
        <option value="code128">CODE128</option>
        <option value="datamatrix">DATAMATRIX</option>
        <option value="code39">CODE39</option>
    </select>
    <br><br>
    
    <label>Le module :</label>
    <select name="mw">
    <option value="1">0.7</option>
    <option value="2">1.3</option>
    </select>
    <br><br>
    
    <button type="submit">Valider</button>

</form>

</body>
</html>