<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Générateur de codes</title>
    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<h1>Encodage produit</h1>

<div class="container mt-5">
    <div class="card shadow">
        <div class="card-body">
<h3 class="mb-4">Générer un code-barres ou un QR Code</h3>
         
<form action="Barcode" method="get" class="row g-3">

    
    <div class="col-md-6">
    <label class="form-label">Type de code</label>
    <select class="form-select" name="codeType">
         <option value="barcode">Code-barres</option>
         <option value="qrcode">QR Code</option>
    </select><br><br>
    </div>
    
    <div class="col-md-6">
    <label class="form-label">Code produit :</label>
    <input type="text" class="form-control" name="code" required>
    <br><br></div>

     <div class="col-md-6">
    <label class="form-label">Libellé produit :</label>
    <input type="text" class="form-control" name="label" required>
    <br><br></div>

     <div class="col-md-6">
   <label class="form-label">Format :</label>
    <select name="fmt" class="form-select" >
        <option value="png">PNG</option>
        <option value="jpeg">JPEG</option>
        <option value="svg">SVG</option>
    </select>
   <br><br></div>

     <div class="col-md-6">
    <label class="form-label">Marge blanche (mm) :</label>
    <input type="number" class="form-control" name="qz" value="1">
    <br><br></div>

     <div class="col-md-6">
    <label class="form-label">Hauteur (mm):</label>
    <input type="number" class="form-control" name="height" value="70">
    <br><br></div>
    
     <div class="col-md-6">
    <label class="form-label">Type de code-barres :</label><!-- comment -->
    <select name="type" class="form-select" >
        <option value="code128">CODE128</option>
        <option value="datamatrix">DATAMATRIX</option>
        <option value="code39">CODE39</option>
       
    </select>
    <br><br></div>
    
     <div class="col-md-6">
    <label class="form-label">Rapport large/étroit :</label>
    <select name="wf" class="form-select">
        <option value="0.2">0.2</option>
        <option value="0.5">0.5</option>
        <option value="1">1</option>
        <option value="2">2</option>
    </select>
    <br><br></div>
    
     <div class="col-md-6">
    <label class="form-label">Largeur du module (barre fine) (mm):</label>
    <select name="mw" class="form-select">
    <option value="0.7">0.7</option>
    <option value="1.3">1.3</option>
    <option value="4.0">4</option>
    <option value="7.0">7</option>
    </select>
    <br><br></div>
    
     <div class="col-md-6">
    <label class="form-label">Résolution</label>
    <select name="dpi" class="form-select">
        <option value="150">150</option>
        <option value="300">300</option>
    </select>
    <br><br></div>
    
     <div class="col-md-6">
    <label class="form-label">Texte lisible :</label>
    <select name="human-readable-pos" class="form-select">
        <option value="bottom">Bas</option>
        <option value="top">Haut</option>
        <option value="none">Aucun</option>
    </select>
    <br><br></div>
    
      <!-- Options QR -->
      <div class="col-md-4">
         <label class="form-label">Taille QR (px)</label>
         <input type="number" class="form-control" name="size" value="250">
         <br><br></div>
     
    <div class="col-12">
    <button type="submit" class="btn btn-primary w-100">Valider</button>

</form>

</body>
</html>