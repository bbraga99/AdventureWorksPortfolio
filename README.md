<h1>📊 Análise de Vendas no Banco de Dados AdventureWorks</h1><br>
Esse projeto tem por objetivo fazer uma análise de dados utilizando o SQL onde realizamos a exploração dos dados de vendas do banco de dados AdventureWorks.<br><br>
O principal objetivo do projeto foi obter insights valiosos sobre faturamento, clientes e produtos mais vendidos da empresa.<br><br>
📌 Principais aspectos analisados:<br>
✅ Receita total e vendas por ano/mês<br>
✅ Evolução de vendas por ano<br>
✅ Ticket médio por venda<br>
✅ Desempenho por categoria de produto<br>
✅ Produtos mais vendidos<br>
✅ Clientes que mais compraram<br>
✅ Comparação entre os meses de maior e menor faturamento<br>
✅ Clientes novos vs recorrentes<br><br>
O projeto conta com scripts de SQL que vão desde o básico como SELECT, WHERE ao avançado contato com SUBQUERIES, CTE e AGREGAÇÕES.<br>
<hr>
<h2>🛒 1. Total de Vendas</h2><br>
<img src="https://github.com/bbraga99/AdventureWorksPortfolio/blob/main/images/total_vendas.png?raw=true">
Esta consulta retorna o faturamento total da empresa, somando todas as vendas registradas.
A total de vendas geradas em todos os anos reflete no desempenho geral da empresa.

<hr>

<h2>📅 2. Total de Vendas por Ano</h2><br>
<img src="https://github.com/bbraga99/AdventureWorksPortfolio/blob/main/images/total_vendas_por_ano.png?raw=true">
Permite visualizar o desempenho de vendas ao longo dos anos.
 
Uma análise temporal de vendas pode ajudar a empresa a identificar tendências e sazonalidades no consumo. Caso em anos recentes houver alguma queda das vendas, pode indicar alguma mudança no mercado ou também concorrência.
<hr>
<h2>💰 3. Ticket Médio de Venda</h2><br>
<img src="https://github.com/bbraga99/AdventureWorksPortfolio/blob/main/images/ticket_medio.png?raw=true">
Determina o valor médio, mínimo e máximo de uma compra.
 
Esses números ajudam a entender o comportamento do consumidor e definir estratégias para precificação dos produtos. Caso o ticket médio seja baixo, a empresa pode considerar algumas estratégias de vendas como por exemplo o cross-sell, aumento de preços ou programa de fidelidade.
<hr>
<h2>🎯 4. Vendas por Categoria de Produto</h2><br>
<img src="https://github.com/bbraga99/AdventureWorksPortfolio/blob/main/images/vendas_por_categoria.png?raw=true">
Identifica quais categorias de produtos geram mais receita.
 
Com base nesses dados, pode ser interessante para a empresa expandir o portfólio de produtos que fazem parte da categoria que gera a maior receita para a empresa. Para as categorias que possuem um desempenho menor, estratégias de marketing ou promoções podem ser uma boa estratégia para aumentar as vendas.

<hr>
<h2>🏆 5. TOP 10 Produtos Mais Vendidos</h2><br>
<img src="https://github.com/bbraga99/AdventureWorksPortfolio/blob/main/images/top_10_produtos.png?raw=true">
Lista os produtos mais populares entre os clientes.
 
Identificar os produtos mais vendidos da empresa auxiliam a empresa para definição de estratégias promocionais e priorização de estoque desses produtos, também pode indiciar tendências. Pode ser interessante a empresa entender o que torna esses produtos atrativos para seu público, sendo um insight valioso em lançamentos de novos produtos.
<hr>
<h2>📊 6. Média de Vendas por Mês</h2><br>
<img src="https://github.com/bbraga99/AdventureWorksPortfolio/blob/main/images/media_por_mes.png?raw=true">
Analisa a sazonalidade das vendas.
 
Identificar a média de vendas por mês pode ajudar a empresa a definir objetivos mensais e também poder ter uma expectativa de crescimento/faturamento para anos posteriores.
Também pode ajudar a observar possíveis sazonalidades e criar algumas estratégias como campanhas promocionais.

<hr>
<h2>📉 7. Mês que Menos Vendeu e Mês que Mais Vendeu</h2><br>
<img src="https://github.com/bbraga99/AdventureWorksPortfolio/blob/main/images/mes%20com%20maior%20e%20menor%20venda.png?raw=true">
Determina os extremos de faturamento mensal.
 
Com essa análise, podemos identificar qual foi o mês e ano onde teve o maior valor vendido e também o que teve o maior valor vendido. Esse dado pode ajudar a empresa a identificar possíveis causas disso.
<h2>👥 8. TOP 10 Clientes que Mais Compraram</h2><br>
<img src="https://github.com/bbraga99/AdventureWorksPortfolio/blob/main/images/top_10_clientes.png?raw=true">
Lista os clientes mais valiosos para o negócio.
 
Identificar quais são os clientes mais valiosos para a empresa é uma boa estratégia, pois, com base neles, permite criar estratégias como programa de fidelidade ou também oferecer benefícios exclusivos para esse grupo de clientes.
<hr>
<h2>📈 9. Média de Vendas por Cliente</h2><br>
<img src="https://github.com/bbraga99/AdventureWorksPortfolio/blob/main/images/media_vendas_cliente.png?raw=true">
Calcula o valor médio gasto por cliente.
 
Aqui podemos ver que a média gasta por cada cliente é de aproximadamente R$ 8.810,29. Isso pode indicar um nível de poder de compra da base de clientes.
Esses dados podem ser úteis caso a empresa queira fazer uma segmentação de clientes com base na média e desenvolver estratégias personalizadas.

<hr>

<h2>📊 10.Clientes Novos x Recorrentes no AdventureWorks</h2><br>
<img src="https://github.com/bbraga99/AdventureWorksPortfolio/blob/main/images/clientes%20novos%20x%20recorrentes.png?raw=true">
  Analisando os dados de clientes, podemos perceber que em todos os anos o número de nova cliente supera a quantidade de clientes recorrentes. Isso indica que a empresa está em constante aquisição de novos consumidores, porém, também pode-se levantar um alerta sobre retenção.
  Temos um destaque para o ano de 2013 que teve um total de 8730 novos clientes, superando os outros anos.
  Isso é um bom sinal caso a estratégia da empresa seja conquistar aumentar sua base de clientes, podendo-se concluir que sua estratégia foi bem-sucedida.
  Por outro lado, sua base de clientes recorrentes não acompanha a de novos clientes, indicando que a empresa precisa trabalhar melhor sua estratégia de retenção.
<hr>
<h2>🎯 Conclusão</h2><br>
  Essa análise revelou insights importantes sobre o desempenho comercial da empresa ao longo dos anos. Foi possível identificar períodos de crescimento e queda no faturamento, com destaque para 2014, que apresentou uma redução nas vendas, sendo o segundo ano de menor faturamento da empresa. Esse cenário pode estar relacionado a fatores como aumento da concorrência ou mudanças no mercado.<br>
  Outro ponto relevante foi a relação entre novos e recorrentes clientes. Em todos os anos analisados, 2013 se destacou como o ano com o maior número de novos clientes e, consequentemente, o de maior faturamento. No entanto, ao longo do período estudado, o número de novos clientes sempre superou o de recorrentes, indicando que a empresa possui uma estratégia eficiente de aquisição, mas pode aprimorar suas ações de retenção. Investir em fidelização, como programas de recompra ou benefícios exclusivos para clientes antigos, pode ser uma oportunidade para aumentar o ticket médio e fortalecer a base de consumidores fiéis.<br>
  Além disso, conseguimos mapear os produtos e categorias mais vendidos, calcular o ticket médio das compras e identificar os clientes que mais contribuíram para o faturamento da empresa.<br>
No geral, essa análise forneceu uma visão abrangente do cenário de vendas, destacando oportunidades estratégicas para otimizar o desempenho comercial e impulsionar o crescimento nos próximos anos.

