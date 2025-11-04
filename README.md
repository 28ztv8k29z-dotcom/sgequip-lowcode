SGequip - Low-code (Power Apps) Prototype
Repositório gerado automaticamente para o Projeto Integrador Transdisciplinar (PIT).
Aplicação: SGequip — Gestão de Empréstimos de Equipamentos (Low-code com Power Apps)
Fonte de dados recomendada: SharePoint Lists
Conteúdo:
⦁	/database : scripts DDL de referência (MySQL) - útil para documentação
⦁	/docs : documentação, diagrama ER (PDF) e roteiros
⦁	/screenshots : prints reais (atualizar quando disponíveis)
⦁	/export-powerapps : espaço para o pacote exportado do Power Apps (placeholder)
⦁	README descreve passos para publicar e documentação adicional.
Como usar
1.	Criar listas SharePoint correspondentes (Categoria, Equipamento, Usuario, Emprestimo, Historico_Status).
2.	Importar estas listas no Power Apps e criar telas com conexão a cada lista.
3.	Publicar o app e atualizar o link no documento final.
Estrutura das listas SharePoint sugeridas (campos)
⦁	Categoria: Title (nome), descricao
⦁	Equipamento: Title (nome), fabricante, modelo, serial, status, categoriaId (lookup), observacoes
⦁	Usuario: Title (nome), email, telefone, matricula, tipo
⦁	Emprestimo: equipamentoId (lookup), usuarioId (lookup), data_emprestimo, data_prevista_devolucao, data_devolucao, estado, observacoes
⦁	Historico_Status: equipamentoId (lookup), status_anterior, status_novo, data_alteracao, usuario_responsavel
