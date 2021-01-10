Oggi mi hanno chiesto di modificare la Pipelines di Azure in modo tale che notificasse di effettuare un task manuale all'utente.

Dopo un minimo di ricerca ho trovato subito quello che mi serviva: **Manual Intervention Task**.

Precisamente questo task permette di mettere in pausa il deploy su uno stage consentendo di effettuare operazioni manuali e dando poi la possibilità di riattivarlo.

Visto che questo task non effettua nessuna azione diretta sul deploy può essere utilizzato solo all'interno di un' Agentless phase, 
non dimenticatevi di aggiungerla altrimenti cercherete il **Manual Intervention Task** invano :)

![azure-devops-add-an-agentless-job](/assets/images/posts/20201102/azure-devops-add-an-agentless-job.png)

Dopo aver aggiunto un' Agentless phase vediamo come aggiungere il task:
1) Click su +.
2) Seleziona il Manual Intervention task.
3) Click su Add.
![azure-devops-add-a-manual-intervention-task](/assets/images/posts/20201102/azure-devops-add-a-manual-intervention-task.png)


Dopo averlo aggiunto sarà possibile configuarne i parametri:

1. **Diplay Name**  : Obbligatorio. Nome del task che comparirà nella pipeline.
2. **Instructions** : Facoltativo.  Istruzioni da mostrare all'utente quando il task è attivo.Si possono inserire variali quali Ambiente di rilascio e/o definite dall'utente.
3. **Notify users** : Facoltativo.  Si può impostare un utente o gruppo di utenti a cui inviare una notifica quando il task è attivo.
4. **On timeout**   : Obbligatorio. Se deve specificare cosa fare(Remuse or Reject) in caso il task vada in timeout. Il default è Reject.

5. **Enabled**		      : Indica se il task è abilitato o meno.
6. **Continue On Error** : Indica se i task successivi devono essere eseguiti anche se il task in oggetto fallisce.
7. **Always run**		  : Indica se eseguire il task anche se la build e/o il deploy sono falliti.

8. **Timeout** : Obbligatorio. Specifica i minuti entro i quali il task viene annullato dal server. 0 è infinito.

![azure-devops-manual-intervention-task](/assets/images/posts/20201102/azure-devops-manual-intervention-task.png)

