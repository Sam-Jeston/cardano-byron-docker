const axios = require('axios')
const fs = require('fs')

const faucetTx = fs.readFileSync('faucet-txt.b64').toString()

// There are 100 mnemonics with funds we could use, but 10 will do 
const mnemonics = fs.readFileSync('mnemonics.txt')
  .toString()
  .split('\n')
  .slice(0, 10)

const walletNames = [
  'Bob',
  'Alice',
  'Jane',
  'Charles',
  'Jason',
  'Roboman',
  'Kate',
  'Lewis',
  'Syd',
  'Cat'
]

const API_PORT = process.env.API_PORT || 8088

async function main() {
  try {

    if (!process.env.IGNORE_FAUCET) {
      await axios.post('http://localhost:8090/local/txs/signed', {
        signedTx: faucetTx
      })

      // Wait for tx to propogate
      console.log('Waiting for tx to propogate...')
      await new Promise(res => setTimeout(res, 15000))
    }


    await Promise.all(mnemonics.map((mnemonic, index) => {
      const name = walletNames[index]
      const payload = generateImportPayload(mnemonic, name)
      return axios.post(`http://localhost:${API_PORT}/v2/wallets`, payload)
    }))
  } catch (e) {
    console.log(e)
  }
}

function generateImportPayload(mnemonic, name) {
  return {
    name,
    mnemonic_sentence: mnemonic.split(' '),
    passphrase: 'Secure Passphrase',
    address_pool_gap: 20
  }
}

main()