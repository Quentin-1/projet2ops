#Version 1.0
#Auteur : QR 
#Projet 2 Groupe 2 OPS
Install-Module -Name Az.Accounts #Installation des dépendances AZ. 
#$CredsAz = Get-Credential #Mise en variable des login/Password.
az login
#Connect-AzAccount -Credential $CredsAz # Connexion sur Azure grace au login.

#Création du groupe de ressource Security-Server dans la localisation NorthEurope : 
az deployment sub create --location northeurope --template-file \\Mac\Home\Documents\DIIAGE\DIIAGE-2\P2\Deploy\GR\azuredeploy.json --parameters \\Mac\Home\Documents\DIIAGE\DIIAGE-2\P2\Deploy\GR\azuredeploy.parameters.json
az deployment group create --resource-group Server-Security-TEST --template-file \\Mac\Home\Documents\DIIAGE\DIIAGE-2\P2\Deploy\INFRATEST\azuredeploytest.json --parameters \\Mac\Home\Documents\DIIAGE\DIIAGE-2\P2\Deploy\INFRATEST\azuredeploytest.parameters.json        