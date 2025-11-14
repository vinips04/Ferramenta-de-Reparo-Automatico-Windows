# Ferramenta de Reparo Automatico Windows (.bat)

Script `.bat` para automação de tarefas de **diagnóstico e reparo automático de sistemas Windows**. (Executa **DISM**, **SFC** e **CHKDSK** em sequência, com geração de logs automáticos para análise técnica.)

<img width="979" height="512" alt="image" src="https://github.com/user-attachments/assets/cb70692f-0c24-4419-9739-57dd2129ca38" />

## Funcionalidades
- Reparo de imagem do sistema (DISM /RestoreHealth)  
- Verificação e restauração de arquivos corrompidos (SFC /scannow)  
- Verificação e correção de erros no disco (CHKDSK /f /r)  
- Criação automática de logs com data e hora  
- Verificação de privilégios administrativos antes da execução  
- Mensagens guiadas durante o processo de reparo  

## Stack Utilizadas
Batch Script • Windows CMD • Ferramentas nativas do sistema (DISM, SFC, CHKDSK)

## Objetivo
Automatizar processos de reparo e diagnóstico do Windows, reduzindo a necessidade de intervenção manual e padronizando a manutenção de sistemas em ambiente corporativo ou de suporte técnico.

## Estrutura
`Ferramenta-de-Reparo-Windows/`

`/logs` `/evidencias` `/reparo_automatico.bat`

## Evidências
Capturas de tela e logs de execução disponíveis em `/evidencias/`.

## Como utilizar o script

1. **Baixe** ou **clone** o repositório:
   git clone [https://github.com/vinips04/Ferramenta-de-Reparo-Automatico-Windows.git](https://github.com/vinips04/Ferramenta-de-Reparo-Automatico-Windows.git)

2. **Acesse** a pasta do projeto:
   
 `cd Ferramenta-de-Reparo-Automatico-Windows`

4. **Execute o script como Administrador:**

* Clique com o botão direito em `reparo_automatico.bat`
* Selecione **“Executar como administrador”**

## 👨‍💻 Autor
👉  **Vinicius Pereira**  

Analista de TI Júnior | Infraestrutura e Suporte Técnico  

[LinkedIn](https://www.linkedin.com/in/viniciuspereira27/) | [GitHub](https://github.com/vinips04)
