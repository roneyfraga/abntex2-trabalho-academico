# TCC | monografia | dissertação | tese + LaTeX + ABNT = abnTeX

O presente trabalho tem como objetivo auxiliar a construção de TCC/monografias, dissertações e teses utilizando as normas da Associação Brasileira de Normas Técnicas ABNT através da classe e pacotes [abnTeX2](https://code.google.com/p/abntex2/wiki/Download). 

Eu apenas baixei o modelo canônico [`abntex2-modelo-trabalho-academico.tex`](https://code.google.com/p/abntex2/wiki/Download), organizei em diretórios conforme [Modelo Latex para monografia do curso Bacharelado em Ciência da Computação da UFRJ](https://github.com/dcc-ufrj/monografia-latex), adicionei algumas funcionalidades encontradas no [Modelo de tese para o Instituto de Matemática, Estatística e Computação Científica (IMECC) da UNICAMP](https://github.com/lpoo/modelo_tese_imecc), e por fim, inseri o Capítulo 2 com algumas dicas sobre integração LaTeX e o [software R](http://cran.r-project.org), [zotero](https://www.zotero.org), e outras especiarias.

Para compilar, em linux ou mac, basta executar no terminal:

```
make all
```

e para limpar os arquivos auxiliares gerados na compilação, fazer:

```
make clean
```

