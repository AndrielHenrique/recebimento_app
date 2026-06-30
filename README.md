# PDMDE - RECEBIMENTO

## Visão Geral

O **PDMDE RECEBIMENTO** é um aplicativo desenvolvido em **Flutter/Dart** para a
disciplina de **Programação para Dispositivos Móveis**. O sistema tem
como objetivo gerenciar o recebimento de materiais, especificamente
barras de aço, vinculadas às Autorizações de Fornecimento (AF).

O projeto foi estruturado utilizando a arquitetura **MVC
(Model--View--Controller)**, juntamente com uma camada **DAO (Data
Access Object)** responsável por isolar o acesso ao banco de dados
SQLite.

## Funcionalidades

-   Autenticação de usuários utilizando banco SQLite.
-   Acesso administrativo.
-   Cadastro, edição e exclusão de usuários, somente para administrador.
-   Edição do perfil do usuário autenticado.
-   Cadastro, consulta e edição de Autorizações de Fornecimento.
-   Gerenciamento dos itens das AFs.
-   Registro de recebimento de barras de aço.
-   Histórico de recebimentos.
-   Sincronização por API REST.
-   Persistência local utilizando SQLite.

# Instalação e Execução

## Pré-requisitos

  Ferramenta                               Finalidade
  ---------------------------------------- ----------------------------------
  Flutter SDK (3.11 ou superior)           Compilar e executar o aplicativo
  Android Studio ou VS Code                Ambiente de desenvolvimento
  Emulador Android ou dispositivo físico   Execução do aplicativo
  Node.js (LTS)                            Execução da API

## 1. Clonar o projeto

``` bash
git clone <url-do-repositorio>
```

## 2. Instalar dependências

``` bash
flutter pub get
```

## 3. Configurar a API

Edite `lib/http/dio_client.dart` e ajuste a variável `baseUrl`.

Celular físico:

``` dart
baseUrl: 'http://192.168.X.X:3000'
```

Emulador Android:

``` dart
baseUrl: 'http://10.0.2.2:3000'
```

Flutter Web ou iOS:

``` dart
baseUrl: 'http://localhost:3000'
```

## 4. Executar a API

``` bash
cd lib/totvs_mock_api
npm install
node server.js
```

## 5. Executar o aplicativo

``` bash
flutter run
```

# Credenciais
Na primeira execução, o banco SQLite é criado automaticamente com um usuário administrador.

  Usuário   admin
  ------- -- -------
  Senha     admin
> **Importante:** O sistema não possui cadastro de novos usuários na tela de login. Apenas o usuário administrador pode criar novos usuários por meio da funcionalidade de gerenciamento de usuários disponível no aplicativo.
# Tecnologias

-   Flutter
-   Dart
-   SQLite
-   Provider
-   Dio
-   Node.js
-   Express
-   MVC
-   DAO
