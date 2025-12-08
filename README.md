<b>BootcampSui Brasil - Dezembro 2025</b> 

Esse repósitorio será mostrado os desafios feitos durante o bootcamp na linguagem MOVE.

O projeto é único, se chama Sui Brasil Bootcamp, dentro dele tem outras pastas referente a exercicios criados e exemplos feitos durante as aulas.

<b>Configurando ambiente</b> 

Antes de configurar o projeto devemos verificar a versão da sui instalada, criar um projeto e acessar a pasta do projeto, dentro do projeto executar os comandos.

Comandos essencias:

criar projeto: sui move new meu_projeto

sui - ver os comandos que tem na sui

sui -–version para ver a versão que consta ativa

<img width="598" height="28" alt="image" src="https://github.com/user-attachments/assets/39c2ec48-73bb-483c-9700-5c1950bde23f" />



sui cliente 

O comando sui client permite interagir com a rede Sui, criar carteiras, enviar transações, visualizar objetos e publicar contratos Move.

Ao executar o comando deve clicar - y no teclado e após enter.

<img width="648" height="34" alt="image" src="https://github.com/user-attachments/assets/c2710953-ab2d-41ef-8e9e-f43259030580" />

- Após será mostrada a  Url que vamos conectar com alguns nós de conexão da blockchain , já vai criar a testnet
- Ao escolher a opção Y irá criar a padrão

Tipo de criptografia

<img width="663" height="31" alt="image" src="https://github.com/user-attachments/assets/347c2f74-ff06-486d-b687-9b920719fe28" />

- Selecionar o tipo de criptografia da carteira - vamos criar a carteira de desenvolvedor
- Vamos utilizar a 0 - ed25519, digitar 0 e enter

Após a carteira será criada

<img width="899" height="27" alt="image" src="https://github.com/user-attachments/assets/5d290803-d24f-4c12-868f-903b576d9f45" />

Irá ser mostrada a Recovery Phase,que palavras de recuperação da carteira, deve se anotar em um lugar seguro e não mostrar para ninguém.


<img width="895" height="110" alt="image" src="https://github.com/user-attachments/assets/9eed09f0-4f9a-4f03-97d8-10a127b55389" />


Verificar ambiente de testes criado

<b>Testnet - Ambiente de testes avançados</b>

sui cliente envs

<img width="835" height="114" alt="image" src="https://github.com/user-attachments/assets/9d0f2485-5089-4c8d-8914-32966c936758" />


Criar no <b>ambiente de devnet - Ambiente de desenvolvimento</b>


 sui client new-env --alias devnet --rpc https://fullnode.devnet.sui.io:443      

 <img width="897" height="48" alt="image" src="https://github.com/user-attachments/assets/0f95669f-e202-44a4-b819-4c8b0ae6e218" />


<b>Mainnet - Rede oficial</b>

sui client new-env --alias mainnet --rpc https://fullnode.mainnet.sui.io:443

Verificar os ambientes criados

sui cliente envs


<img width="876" height="173" alt="image" src="https://github.com/user-attachments/assets/edf82490-fc81-435b-a151-9f10a6b0b4a7" />

Mudar de rede

sui client switch –env devnet 

<img width="847" height="57" alt="image" src="https://github.com/user-attachments/assets/44ea5540-0616-4b27-8957-50e0ba2aded2" />


Pegar faucet tokens gratuitos para usar em ambiente de testes

sui client faucet


<img width="855" height="60" alt="image" src="https://github.com/user-attachments/assets/358836fe-7bd9-4abd-a33c-fd38c995f5b2" />


Verificar se recebeu os tokens

sui client gas

<img width="865" height="122" alt="image" src="https://github.com/user-attachments/assets/84559475-2833-4454-9a5f-f54e89c38a98" />

Verificar a quantidade de tokens

sui client balance


<img width="820" height="158" alt="image" src="https://github.com/user-attachments/assets/22026b7d-2db5-44d7-ab31-7937e926c09f" />



OBS: Para pegar faucet na testnet tem que usar a url


https://faucet.sui.io/


Verificar meu endereço de carteira

sui client active-address

<img width="865" height="58" alt="image" src="https://github.com/user-attachments/assets/68da9d6d-0264-4762-b020-c3519311759d" />



<b>Publicar meu projeto</b>


sui client publish 


<img width="881" height="339" alt="image" src="https://github.com/user-attachments/assets/d4e39f50-e06e-45f5-ae5d-8fdeff19f796" />


<img width="842" height="307" alt="image" src="https://github.com/user-attachments/assets/2bd09d0a-fdde-42ef-8ede-2eb7ac928414" />

No terminal será mostrada as informação do pacote publicado
- Pegar a informação do <b>package ID</b>
  
0xf8e95844d5161561dd1816ac37025032d227962ef0f4566be16ee8ffa0119b69

Acessa o site sui scam e verifica o projeto publicado


https://suiscan.xyz/devnet/home


<img width="881" height="411" alt="image" src="https://github.com/user-attachments/assets/4f659fd1-c578-42f8-b0ee-f78dc2faf2f7" />




<b>Referenciar a estrutura - funções no caso</b>


sui client call –package id –module –function 

Comando de acordo com minha função criado no código 

sui client call --package 0xf8e95844d5161561dd1816ac37025032d227962ef0f4566be16ee8ffa0119b69 --module todolistm --function new


<img width="903" height="308" alt="image" src="https://github.com/user-attachments/assets/2519a7a5-8754-48ef-b90f-adb91543f5af" />


ID objeto 0x2d6c8632ad030f8f39bab0840019a71d7646fa614eef21347e4503859077e307


<img width="875" height="327" alt="image" src="https://github.com/user-attachments/assets/49cfd11c-494f-4444-956d-82561ef597db" />

Comando para a função ser executada  e será mostrada no sui scam

sui client call --package 0xf8e95844d5161561dd1816ac37025032d227962ef0f4566be16ee8ffa0119b69 --module todolistm --function add_item --args 0x2d6c8632ad030f8f39bab0840019a71d7646fa614eef21347e4503859077e307 "Aula 5 Move - 05/12" 

<img width="884" height="347" alt="image" src="https://github.com/user-attachments/assets/6a95b246-a178-4d67-8bee-e2e7b3ce0d12" />


Obs:
- Se quiser adicionar mais item fazer o mesmo comando só mudar o texto que vai gerar.
- O código desse projeto está na pasta todolistM
- https://github.com/MicheleGiane9/Sui-Brasil---Bootcamp/tree/e58dc8260ab9d5e034fb77ff217ad5200e4d4597/todolistM
































