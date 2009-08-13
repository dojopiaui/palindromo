Palindromo
==========

Problema
--------

Reconhecer palavras, frases ou qualquer sequência de caracteres que sejam palíndromos.

O que é um Palíndromo
---------------------

É uma palavra, frase ou qualquer outra sequência de unidades (como uma cadeia de ADN; Enzima de restrição) que tenha a propriedade de poder ser lida tanto da direita para a esquerda como da esquerda para a direita. Num palíndromo, normalmente são desconsiderados os sinais ortográficos (diacríticos ou de pontuação), assim como o espaços entre palavras." [Wikipedia](http://pt.wikipedia.org/wiki/Pal%C3%ADndromo "Fonte: Wikipedia")

Modo de Usar
------------

Usando o `irb` você pode verificar se qualquer string é um palíndromo (método `palindrome?`) levando em consideração até a caixa das letras (método `palindrome_case?`).

    irb -r palindrome.rb
    irb(main):001:0> exemplo1 = "Socorram-me, subi no ônibus em Marrocos!"
    => "Socorram-me, subi no \303\264nibus em Marrocos!"
    irb(main):002:0> exemplo1.palindrome?
    => true
    irb(main):003:0> exemplo1.palindrome_case?
    => false
    irb(main):004:0> exemplo2 = "O Pó de Cocaína Mata Maníaco Cedo, PÔ!"
    => "O P\303\263 de Coca\303\255na Mata Man\303\255aco Cedo, P\303\224!"
    irb(main):005:0> exemplo2.palindrome?
    => true
    irb(main):006:0> exemplo2.palindrome_case?
    => true

TODO
----

* Criar um conjunto maior de palíndromos para utilizar nos testes
* Refatorar ainda mais o código de forma que fique mais DRY

Authors
-------

Copyright © 2009 [Dojo Piauí](http://dojopi.wordpress.com/), released under the MIT license

LICENSE
-------

(The MIT License)

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.
