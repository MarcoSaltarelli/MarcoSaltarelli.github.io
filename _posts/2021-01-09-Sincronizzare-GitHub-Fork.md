---
layout: post
title: Sincronizzare GitHub Fork
category: DevOps
tags: [GitHub]
---

Quando si collabora ad un progetto OpenSource su GitHub spesso ci viene chiesto di creare un Fork del progetto su cui applicare le nostre modifiche per poi sottoporle a Pull Request
e in caso venga accettata, aggiornare il repository principale.

Con questo approccio peró, visto che dal momento in cui effettuiamo il Fork e il momento in cui sottoponiamo la nostra Pull Request puó passare diverso tempo,  ci si 
trova davanti al problema che il nostro Fork non sará mai aggiornato con le ultime modifiche applicate al repository principale e questo potrebbe crearci problemi in fase di merge. 

E' consigliato quindi aggiornare spesso il nostro fork con le ultime modifiche apportate al repository principale é sempre comunque prima di sottoporre una Pull Request, vediamo come:


spostarsi nella folder del repository e listare i remote repository configurati
![git-remote-v](/assets/images/posts/20210109/img1.png)

aggiungere poi il nuovo remote upstream repository che sará poi sincronizzato con il nostro fork
![git-remote-add](/assets/images/posts/20210109/img2.png)

verifichiamo che il nuovo upstream sia stato aggiunto
![git-remote-v2](/assets/images/posts/20210109/img3.png)

effettuiamo un fetch dell'upstream repository e delle modifiche ad esso apportate 
![git-fetch-upstream](/assets/images/posts/20210109/img4.png)

effettuiamo il checkout del branch che vogliamo aggiornare, in questo caso dev
![git-checkout](/assets/images/posts/20210109/img5.png)

effettuiamo il merge dall'upstream branch al nostro branch locale 
![git-merge](/assets/images/posts/20210109/img6.png)

a questo punto il nostro repository locale é aggiornato con le ultime modifiche.
