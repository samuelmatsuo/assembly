.MODEL small;Define o modelo de memoria small
.STACK 64;Aloca um escopo de 64 bytes para a pilha

.DATA ;Inicia a seção de dados
message db 'Soldador', '$'; Uma string com o texto "Soldador" e o caractere $ (fim da string)

.CODE ;Inicia a seção de código

.CODE ;Define  o ponto de entrada do programa, é executado automaticamente quando o programa in
main proc ;Define  o procedimento main como o ponto de entrada do programa

mov ax, @data ;Carrega os dados na memória
mov  ds, ax ;Coloca o segmento dos dados no registrador DS

mov ah, 9h ;Prepara o registrador  AH para enviar uma mensagem de saída

mov dx, offset message ;Pega o endereço da variável message e coloca em DX

int 21h ; Instrução de interrupção

main endp ; Marca o fim do procedimento
end main; Indica o fim