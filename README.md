# CONTRATO FICHA MEDICA  
<div align='justify'>
Proyecto creado para ser usado en una Dapp que permita la creación y almacenamiento de la información de una Ficha Medica.<br><br>
  
> Integrantes:<br> 
* Roberto Hernandez<br>
* Eduardo Jara<br>
* David Saballo<br>
* Esteban Jara<br>

La estructura y funciones del contrato se encuentran en el archivo Medical.sol:
</div>

```javascript

struct Record {
        string patientName;
        string doctorName;
        string date;
        string diagnosis;
        string problem;
        string treatment;
    }

.............................

function addRecord(
        string memory _patientName,
        string memory _doctorName,
        string memory _date,
        string memory _diagnosis,
        string memory _problem,
        string memory _treatment
    )

..............................

function getRecords() external view returns (Record[] memory) {
        return medicalRecords[msg.sender];
```

## Parametros para la configuración:<br>

* URL de la Red ETHERUM a usar<br>
* Llave privada de la billetara<br>

Estos datos deben ser configurados en el archivo .env <br>
![image](https://github.com/ejaraU/contrato_medico/assets/143906202/007d5e6f-c0c2-4d7c-ab08-ffc33318ee54)

## Compilación del contrato

El siguiente paso es la de compilar el contrato con Hardhat: <br><br>
```
npx hardhat compile
```
## Despliegue del contrato

Para desplegar el contrato debemos aplicar el siguiente comando:

```
npx hardhat run .\scripts\Medical.ts
```

Una vez desplejado el contrato obtendremos su respectiva address y el ABI, el cual sera usado para la creación de la Dapp <br><br>

## Ubicación del ABI

El ABI podemos encontrar en la siguiente ruta --> artifacts\contracts\Medical.sol\MedicalRecord2.json <br>

![image](https://github.com/ejaraU/contrato_medico/assets/143906202/25335249-de42-4b12-ad14-f1d78c6774ab)



