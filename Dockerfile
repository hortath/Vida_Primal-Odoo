# Usa a imagem oficial do Odoo 17 (pode ajustar para sua versão)
FROM odoo:17

# Instala as dependências do sistema necessárias para python-ldap e outras libs
USER root
RUN apt-get update && apt-get install -y \
    libldap2-dev \
    libsasl2-dev \
    libssl-dev \
    gcc \
    python3-dev \
    build-essential \
 && rm -rf /var/lib/apt/lists/*

# Retorna ao usuário padrão do Odoo
USER odoo

# Copia o código-fonte do seu repositório para dentro do container
COPY . /mnt/extra-addons

# Define o comando padrão do container
CMD ["odoo", "-c", "/etc/odoo/odoo.conf"]

