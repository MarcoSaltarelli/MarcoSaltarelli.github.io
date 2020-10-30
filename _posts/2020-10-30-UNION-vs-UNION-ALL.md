---
layout: post
title:  "UNION VS UNION ALL"
tags:"SQL SELECT UNION"
category:SQL
---
Le istruzioni UNION e UNION ALL sono utili per unire il risultato di 2 o piu query che restituiscono lo stesso numero e tipo di colonne.

Si differenziano per come gestiscono le righe duplicate.

La UNION effettua una SELECT distict andando a rimuovere i duplicati e ordinandoli.

La UNION ALL non rimuove i duplicati e non effettua ordinamento per default risultando quindi più performante.

Se sappiamo quindi a priori che il risultato delle query non ritorna duplicati è consigliato utilizzare UNION ALL al posto di UNION.

Esempio pratico:

Supponiamo di avere 2 tabelle con i seguenti valori

![tabelle](/assets/images/posts/unionvsunionall/tabelle.png)


Utilizzando UNION ALL

![unionall](/assets/images/posts/unionvsunionall/unionall.png)

avremo come risultato  

![resultunionall](/assets/images/posts/unionvsunionall/resultunionall.png)


Utilizzando UNION

![unionall](/assets/images/posts/unionvsunionall/uniona.png)

avremo come risultato

![resultunion](/assets/images/posts/unionvsunionall/resultunion.png)


vediamo come il record "Giovanni,Giovanni@dominio.com" viene estratto una sola volta perchè duplicato.


Da questo link è possibile scaricare lo script utilizzato per l'esempio [sqlscript](/assets/script/unionvsunionall.sql)
