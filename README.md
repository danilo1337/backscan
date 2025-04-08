### 1. Instalar o Node.js (v16)

```bash
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt install -y nodejs
```

---

### 2. Instalar as Dependências do Projeto

```bash
npm install
```

---

### 3. Configurar as Variáveis do Projeto

Edite o arquivo `server.js`:

```bash
nano server.js
```

- Substitua **BOT-TOKEN** pelo token do seu bot do Telegram.
- Substitua **CHAT-TOKEN** pelo ID do chat ou grupo onde deseja receber as mensagens.

Pressione **CTRL + X**, depois **Y** e **Enter** para salvar.

---

### 4. Criar e Configurar um Bot no Telegram

1. No Telegram, procure por **@BotFather**.
2. Envie o comando:
   ```bash
   /newbot
   ```
3. Siga as instruções e anote o **token** fornecido.
4. Para obter o **ID do chat/grupo**:
   - Adicione o bot ao grupo.
   - Envie uma mensagem no grupo.
   - Acesse:
     ```bash
     https://api.telegram.org/botSEU_BOT_TOKEN/getUpdates
     ```
   - Anote o `chat_id`.

---

### 5. Iniciar o Servidor

```bash
node server.js
```

Se tudo estiver correto, a saída deve indicar que o servidor está rodando.

---

### 6. Instalar o Ngrok e Expor a Porta

```bash
ngrok http 80
```

Copie a **URL gerada pelo Ngrok** (exemplo: `https://abc123.ngrok.io`).

---

### 7. Atualizar a URL no Projeto

No arquivo `frontend/index.html`, substitua `https://abc123.ngrok.io` pela URL gerada pelo Ngrok:

```js
fetch("https://abc123.ngrok.io/send-location", {
```

---

### 8. Testar o Projeto

Abra o navegador e permita acesso à localização. Se tudo estiver correto, a localização será enviada para o bot no Telegram:

```bash
https://abc123.ngrok.io/send-location
```

---

### 9. Hospedar a Página HTML na Vercel

Para deixar a interface do **BackScan** online, hospede o `index.html` na Vercel.

#### 9.1 Criar uma Conta na Vercel

1. Acesse [https://vercel.com/](https://vercel.com/) e crie uma conta (pode usar o login do GitHub).
2. Após logar, clique em **"New Project"**.

#### 9.2 Subir o Projeto para o GitHub

Caso ainda não tenha subido o código:

```bash
git init
git add index.html
git commit -m "Adiciona interface do BackScan"
git branch -M main
git remote add origin https://github.com/seu-usuario/backscan-frontend.git
git push -u origin main
```

#### 9.3 Implantar na Vercel

1. Na Vercel, clique em **"Import Git Repository"** e selecione o repositório do seu projeto.
2. Escolha as configurações padrão e clique em **Deploy**.
3. Após a implantação, copie a URL gerada (exemplo: `https://backscan.vercel.app`).

Agora qualquer pessoa pode acessar sua página! 🚀

---

