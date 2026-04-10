import strutils
type
  Node = ref object
    nome: string
    next: Node

  Fila = ref object
    head: Node
    tail: Node

proc novaFila(): Fila =
  new(result)
  result.head = nil
  result.tail = nil

proc enfileirar(f: Fila, nome: string) =
  var novo = Node(nome: nome, next: nil)

  if f.head == nil:
    f.head = novo
    f.tail = novo
  else:
    f.tail.next = novo
    f.tail = novo

  echo nome, " entrou na fila."

proc atender(f: Fila) =
  if f.head == nil:
    echo "Fila vazia!"
  else:
    let atendido = f.head.nome
    f.head = f.head.next

    if f.head == nil:
      f.tail = nil

    echo atendido, " foi atendido."

proc exibir(f: Fila) =
  if f.head == nil:
    echo "Fila vazia!"
    return

  var atual = f.head
  echo "Fila atual:"
  while atual != nil:
    echo "- ", atual.nome
    atual = atual.next

proc buscar(f: Fila, nome: string) =
  var atual = f.head
  var pos = 1

  while atual != nil:
    if atual.nome == nome:
      echo nome, " encontrado na posição ", pos
      return
    atual = atual.next
    pos += 1

  echo nome, " não está na fila."

proc contar(f: Fila): int =
  var atual = f.head
  var total = 0

  while atual != nil:
    total += 1
    atual = atual.next

  return total

proc menu() =
  var fila = novaFila()
  var opcao: int

  while true:
    echo "\n1 - Inserir pessoa"
    echo "2 - Atender próxima"
    echo "3 - Exibir fila"
    echo "4 - Buscar pessoa"
    echo "5 - Contar pessoas"
    echo "0 - Sair"
    stdout.write("Escolha: ")
    opcao = readLine(stdin).parseInt

    case opcao:
    of 1:
      stdout.write("Nome: ")
      let nome = readLine(stdin)
      enfileirar(fila, nome)
    of 2:
      atender(fila)
    of 3:
      exibir(fila)
    of 4:
      stdout.write("Nome para buscar: ")
      let nome = readLine(stdin)
      buscar(fila, nome)
    of 5:
      echo "Total na fila: ", contar(fila)
    of 0:
      echo "Saindo..."
      break
    else:
      echo "Opção inválida!"

menu()