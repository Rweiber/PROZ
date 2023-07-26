nome = (input("Qual seu nome?"))

while True:
    try:
        nascimento = int(input("Em que ano você nasceu? (idade permitida - de 1922 até 2021) "))
        if nascimento < 1922 or nascimento > 2021:
            print("Ano de nascimento inválido. Por favor, insira um valor entre 1922 e 2021.")
        else:
            break
    except ValueError:
        print("Entrada inválida. Por favor, insira um número inteiro.")

idadeAtual = 2022 - nascimento
print(nome, "sua idade atual é", idadeAtual, "anos")



