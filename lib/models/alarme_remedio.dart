class AlarmeRemedio{
  int? id;
  final   DateTime horario;
  final String nome_remedio;
  int? quantidade;
  bool estaAtivo;

  AlarmeRemedio({required this.horario, required this.nome_remedio, this.id, this.quantidade, this.estaAtivo = false});

  factory AlarmeRemedio.fromMap(Map<String, dynamic>   map) =>
      AlarmeRemedio(
        horario: DateTime.parse(map['horario']) , 
        nome_remedio: map['nome'],
        quantidade: map ['quantidade'],
        estaAtivo: map ['estaAtivo'] == 0? false : true, 
         );

  Map<String, dynamic> toMap() {
    return {
      'horario': horario.toIso8601String(), 
      'nome': nome_remedio, 
      'quantidade': quantidade,
      'estaAtivo': estaAtivo ? 1 : 0,
      };
  }
}
