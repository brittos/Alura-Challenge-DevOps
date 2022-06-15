## Challenge DevOps Alura - Semana 01: Criando containers

### Descrição

Etapas:
- **Familiarizando com a Aplicação:** A partir de um código fonte existente, executar a aplicação e realizar testes. Verificar quais as portas utilizadas e conexões com banco de dados;
- **Criação do Container:** Coloque a aplicação dentro de um container. É recomendada a utilização do Docker nesta etapa, porém outras estruturas de containers podem ser utilizadas;
- **Testando o Container:** Inicie o container localmente e verifique se todas as funcionalidades da aplicação estão funcionando como esperado;
- **Salvando o container em um repositório:** Após a criação e testes do container é interessante salvarmos ele em um repositório, como por exemplo o Docker Hub.

### Executando o Projeto:

Levantando o container utilizando a imagem criada na etapa dois e [hospedada no Docker Hub](https://hub.docker.com/r/britto/aluraflix) na etapa quatro:

    nerdctl compose up -d
    kubectl apply -f pod.yaml

A aplicação estará disponível através da porta **8000**, logo você poderá acessar através do endereço: ``http://localhost:8000``.

Para interagir com a aplicação através da linha de comando:
  
    nerdctl exec -it aluraflix-app sh
    kubectl exec -it aluraflix-pod sh
    
### Rancher Desktop

Utilizei o Rancher Desktop em todo o processo, ele é um projeto de código aberto do grupo SUSE Rancher Engineering que traz Kubernetes e gerenciamento de contêineres para a área de trabalho. É executado no Windows, macOS e Linux. 
Para obter informações orientadas ao usuário sobre o Rancher Desktop, consulte [rancherdesktop.io][home].
Para obter documentação orientada ao usuário, consulte [docs.rancherdesktop.io][docs].

[home]: https://rancherdesktop.io
[docs]: https://docs.rancherdesktop.io

<br><br>
Mais informações sobre o desafio: https://www.alura.com.br/challenges/devops/semana-01-criando-containers
