#! /bin/bash

while :
do
	# cat lê o conteudo do arquivo pid e salva na variavel fpid
	# ps aux -> lista todos os processos do sistema.
	# grep -> compara e seleciona os processos python3 em seguida o que ta rodando o script python cromai.py
	# awk -> manipula o texto retornado pelo ps aux e grep e pega o segundo valor (o PID) salvando na variavel pid
	fpid=`cat 'src/pid.txt'`
	pid=`ps aux | grep 'python3' | grep 'scriptp.py' | awk '{print $2}' | head -1`

	# Verifica se o pid salvo no arquivo é o mesmo que está rodando nos processos do sistemas
	if [[ $fpid -ne $pid ]]; then
		echo "->It is dead"
		python3 scriptp.py & # Executa o script python
	else
		echo "->It is alive"
	fi

	# Pausa de 1 segundo
	sleep 1
done
