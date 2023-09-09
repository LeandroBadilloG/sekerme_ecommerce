class ClientesPersonas{
  final String cedula;
  final String nombre;
  final String apepaterno;
  final String fecharegistro;
  final String celular;
  final String email;
  final String contrasena;
  final String nombreUsuario;
  final String direccion;

  ClientesPersonas({
    required this.cedula,
    required this.nombre,
    required this.apepaterno,
    required this.fecharegistro,
    required this.celular,
    required this.email,
    required this.contrasena,
    required this.nombreUsuario,
    required this.direccion
}
      );
  static ClientesPersonas fromJson(Map<String,dynamic>json)=> ClientesPersonas(
    cedula: json['cedula'],
    nombre: json['nombre'],
    apepaterno: json['apepaterno'],
    fecharegistro: json['fecharegistro'],
    celular: json['celular'],
    email: json['email'],
    contrasena: json['contrasena'],
    nombreUsuario: json['nombreUsuario'],
    direccion: json['direccion'],
  );

  Map<String,dynamic> toJsom()=><String,dynamic>{
    'cedula':cedula,
    'nombre':nombre,
    'apepaterno':apepaterno,
    'fecharegistro':fecharegistro,
    'celular':celular,
    'email':email,
    'contrasena':contrasena,
    'direccion':direccion,
  };
}




