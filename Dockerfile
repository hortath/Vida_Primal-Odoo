# Usa a imagem oficial do Odoo (já vem pronta com tudo)
FROM odoo:17

# Define o diretório de trabalho
WORKDIR /usr/src/odoo

# Copia arquivos adicionais do seu projeto (se houver)
# COPY ./addons /mnt/extra-addons

# Exposição da porta padrão
EXPOSE 8069

# Comando padrão de execução
CMD ["odoo"]
