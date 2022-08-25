const Web3 = require("web3");

const ethNetwork = 'https://rinkeby.infura.io/v3/2DZm06AoCDLxLBOsfC0Et8eBgT9';

const web3 = new Web3(ethNetwork)
const abi = [
	{
		"inputs": [
			{
				"internalType": "string",
				"name": "nombre_",
				"type": "string"
			}
		],
		"stateMutability": "nonpayable",
		"type": "constructor"
	},
	{
		"inputs": [],
		"name": "apellido",
		"outputs": [
			{
				"internalType": "string",
				"name": "",
				"type": "string"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [],
		"name": "medicamento",
		"outputs": [
			{
				"internalType": "string",
				"name": "",
				"type": "string"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [],
		"name": "nombre_completo",
		"outputs": [
			{
				"internalType": "string",
				"name": "",
				"type": "string"
			}
		],
		"stateMutability": "view",
		"type": "function"
	}
    ]
let contract = new web3.eth.Contract(abi, "0x76DcAa6cA20028E62C61114BEDFccD2209d2b7Ae")
console.log(contract)

contract.methods.apellido().call().then( (result) => {console.log(result);})

