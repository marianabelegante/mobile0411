import 'dart:math';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  
  @override
  State<HomePage> createState() => _HomePageState();
  
}

class _HomePageState extends State<HomePage> {

  int imagemMaquina = 4;
  int escolhaUm = 1;
  int escolhaDois = 2;
  int escolhaTres = 3;

  int sortearOpcaoMaquina(){
    Random random = Random();
    int opcao_sorteada = random.nextInt(3)+1;
    return opcao_sorteada;
  }

  void atualizarImagemMaquina(int opcao_maquina){
    setState(() {
      imagemMaquina = opcao_maquina;
    });

  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
        title: Text('Pedra, Papel e Tesoura'),
        centerTitle: true,
      ),
      body: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              children: [
                Text('Escolha da Máquina: '),
                SizedBox(height: 16,),

                CircleAvatar(
                  backgroundColor: Colors.deepOrange,
                  radius: 75,
                  child: Image.asset('assets/images/$imagemMaquina.png'),
                ),

                SizedBox(
                  height: 16,
                ),
                Divider(
                  thickness: 5,
                ),

                SizedBox(
                  height: 16,
                ),

                Text('A minha escolha é: '),
                SizedBox(
                  height: 16,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: (){

                        int opcao_maquina = sortearOpcaoMaquina();
                        atualizarImagemMaquina(opcao_maquina);

                        if (opcao_maquina == escolhaUm){
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Empate')));

                        }if (opcao_maquina == escolhaDois) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Você perdeu! :(')));

                        }if (opcao_maquina == escolhaTres) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Você ganhou! ;) ')));
                        }


                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.deepOrange,
                        radius: 75,
                        child: Image.asset('assets/images/$escolhaUm.png'),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){

                        int opcao_maquina = sortearOpcaoMaquina();
                        atualizarImagemMaquina(opcao_maquina);

                        if (opcao_maquina == escolhaUm){
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Você ganhou! ;)')));

                        }if (opcao_maquina == escolhaDois) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Empate')));

                        }if (opcao_maquina == escolhaTres) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Você perdeu! :(')));
                        }


                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.deepOrange,
                        radius: 75,
                        child: Image.asset('assets/images/$escolhaDois.png'),),
                    ),


                    GestureDetector(

                      onTap: (){
                        int opcao_maquina = sortearOpcaoMaquina();
                        atualizarImagemMaquina(opcao_maquina);

                        if (opcao_maquina == escolhaUm){
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Você perdeu! ;(')));

                        }if (opcao_maquina == escolhaDois) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Você ganhou" ;)')));

                        }if (opcao_maquina == escolhaTres) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Empate'
                              '')));
                        }


                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.deepOrange,
                        radius: 75,
                        child: Image.asset('assets/images/$escolhaTres.png'),
                      ),
                    ),

                  ],
                ),
              ],
            ),
          ),
      ),
    );
  }
  

}
