# This is a sample Python script.

# Press Shift+F10 to execute it or replace it with your code.
# Press Double Shift to search everywhere for classes, files, tool windows, actions, and settings.


def print_hi(Weiber):
    # Use a breakpoint in the code line below to debug your script.
    print(f'Hi, {Weiber}')  # Press Ctrl+F8 to toggle the breakpoint.


# Press the green button in the gutter to run the script.
if __name__ == '__main__':
    print_hi('Weiber')
print("Quantas rodas tem no veiculo: ")
quantidadeDeRodas = int(input())
print("Qual peso do veiculo:")
pesoBruto = int(input())
print("Quantas pessoas estão no veiculo:")
quantidadeDePessoas = int(input())
if quantidadeDeRodas == 2 or quantidadeDeRodas == 3:
    print("Categoria A")
elif quantidadeDeRodas == 4 and quantidadeDePessoas <= 8 and pesoBruto <= 3500:
    print("Categoria B")
elif quantidadeDeRodas >= 4 and pesoBruto > 3500 and pesoBruto < 6000:
    print("Categoria C")
elif quantidadeDeRodas >= 4 and quantidadeDePessoas >= 8:
    print("Categoria D")
else:
    print("Categoria E")


