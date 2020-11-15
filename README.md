# elixir-playground

- __Data__: 15/11/2020
- __Autor__: [@augustoliks](https://github.com/augustoliks) | <carlos.santos110@fatec.sp.gov.br>
- __Descrição__: Ambiente provisionado com docker-compose, contendo Jupyter-Notebook que expõem códigos Elixir;
- __Objetivo__: Fixar e descrever o entendimento sobre os recursos da Linguagem Elixir.
- __Funcionalidades__:
    - docker-compose com o ambiente jupyter-notebook com Kernel Elixir configurado.


## Depêndencias

Depêndencia     | Versão    | Descrição
:---:           |:---:      |:---:
docker          | 19.03.8   | Gerenciador de Containers
docker-compose  | 1.25.4    | Orquestrador de Containers

## Estrutura do Projeto

```shell
├── docker-compose.yml  # Compose do projeto
├── exercicies          # Códigos Elixir, executados no terminal
│   ├── 01-hello-world.exs
│   └── ...                 
└── jupyter-notebook    # Jupyter-Notebooks 
    ├── test-provisioning-env.ipynb
    └── ...
```

## Instalação do Ambiente

```bash
$ git clone https://github.com/augustoliks/elixir-playground.git
$ cd elixir-playground/
$ docker-compose up -d 

    Creating network "elixir-playground_default" with the default driver
    Creating jup-notebook ... done
```

Para acessar o ambiente Web do Jupyter, é necessário um token de acesso. Este é gerado no momento do _build_ da Imagem. Para obter este Token, com o container operante, executar:

```bash
$ docker logs jup-notebook 
```

A saída do comando, irá conter o link de acesso ao ambiente Web do Jupyter, com o token incluso.

```
$ docker logs jup-notebook 
...
     Copy/paste this URL into your browser when you connect for the first time,
    to login with a token:
        http://localhost:8888/?token=267cbe9bc6673475720b2554c7ff1ad996814a3219006eae&token=267
```

> No exemplo, a URL de acesso para o Jupyter é: http://localhost:8888/?token=267cbe9bc6673475720b2554c7ff1ad996814a3219006eae&token=267 

## Referências

- https://elixir-lang.org/getting-started/introduction.html
- https://github.com/pprzetacznik/IElixir
