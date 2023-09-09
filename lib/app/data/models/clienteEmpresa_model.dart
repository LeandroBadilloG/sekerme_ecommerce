class ClientesEmpresa{
  final String rut;
  final String nombrecompania;
  final String fecharegistro;
  final String email;
  final String celular;
  final String contrasena;
  final String nombreusuario;

  ClientesEmpresa({
    required this.rut,
    required this.nombrecompania,
    required this.fecharegistro,
    required this.email,
    required this.celular,
    required this.contrasena,
    required this.nombreusuario,
  }
      );
  static ClientesEmpresa fromJson(Map<String,dynamic>json)=> ClientesEmpresa(
    rut: json['rut'],
    nombrecompania: json['nombrecompania'],
    fecharegistro: json['fecharegistro'],
    email: json['email'],
    celular: json['celular'],
    contrasena: json['contrasena'],
    nombreusuario: json['nombreusuario'],
  );

  Map<String,dynamic> toJsom()=><String,dynamic>{
    'rut':rut,
    'nombrecompania':nombrecompania,
    'fecharegistro':fecharegistro,
    'email':email,
    'celular':celular,
    'contrasena':contrasena,
    'nombreusuario':nombreusuario
  };
}

