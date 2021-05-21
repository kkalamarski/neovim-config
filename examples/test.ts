const lol = 'string'

export function test(): number {
  console.log(2 + 2)

  function nested(): number {
    console.log('hahah')

    return 1
  }

  return nested()
}

export function eee() {
  return 2 + 3
}

console.log(lol)
