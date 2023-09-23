class Conta {
  double _saque =0;
  double _saldo =0;
  // get
  // setter
  double get saque{
    return this._saque;
  }

  double get saldo {
    return (this._saldo - this.saque);
  }

  set saque(double valor) {
    if(valor > 0 && valor <500) {
      this._saque = valor;
    }
  }
}

void main(){
  Conta contaRocky = Conta();
  contaRocky.saque = 100;
  print("Valor do saque R\$ ${contaRocky.saque}");
  print("Valor do saldo R\$ ${contaRocky.saldo}");
}