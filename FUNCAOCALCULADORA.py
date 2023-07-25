def calculadora():
    while True:
        print("1: Soma")
        print("2: Subtração")
        print("3: Multiplicação")
        print("4: Divisão")
        print("0: Sair")
        print("Digite o número para a operação correspondente:")
        opcao = int(input())
        if opcao == 0:
            break
        elif opcao not in [1, 2, 3, 4]:
            print("Essa opção não existe")
            continue
        num1 = float(input("Digite o primeiro valor: "))
        num2 = float(input("Digite o segundo valor: "))
        if opcao == 1:
            resultado = num1 + num2
            print("O resultado da divisão é ", resultado)
        elif opcao == 2:
            resultado = num1 - num2
            print("O resultado da divisão é ", resultado)
        elif opcao == 3:
            resultado = num1 * num2
            print("O resultado da divisão é ", resultado)
        elif opcao == 4:
            if num2 == 0:
                print("Não é possível dividir por zero")
                continue
            resultado = num1 / num2
            print("O resultado da divisão é ", resultado)

calculadora()