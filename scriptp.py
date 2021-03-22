'''
Importando os métodos para capturar o ID do processo atual (getpid)
e para o programa demorar X segundos no loop (sleep)
'''
from os import getpid
from time import sleep

# getpid() captura o ID e salva em gpid, em seguência printa na tela
gpid = getpid()
print(f"PID: {gpid}")

# Abre o arquivo para escrita, em seguida ela grava no arquivo o valor salvo no gpid
# Usando o with, ele abre e fecha o arquivo ao sair de dentro do with
with open("src/pid.txt", "w", encoding='UTF-8') as pid:
    pid.write(f"{gpid}")

# Será printado na tela "I am alive" durante 3 vezes com um intervalo de X segundos
for i in range(3):
    print("I am alive")
    sleep(5)

# Print na tela avisando que está fechando todo o ciclo
print("\nI gonna die now, bye.")
