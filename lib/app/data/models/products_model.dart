class Productos{
  final String nombremarca;
  final String modelo;
  final String talla;
  final String referencia;
  final String fechaderegistro;
  final String cantidad;
  final String precio;
  final String descripcion;
  final String preciooferta;

  Productos({
    required this.nombremarca,
    required this.modelo,
    required this.talla,
    required this.referencia,
    required this.fechaderegistro,
    required this.cantidad,
    required this.precio,
    required this.descripcion,
    required this.preciooferta
  }
      );
  static Productos fromJson(Map<String,dynamic>json)=> Productos(
    nombremarca: json['nombremarca'],
    modelo: json['modelo'],
    talla: json['talla'],
    referencia: json['referencia'],
    fechaderegistro: json['fechaderegistro'],
    cantidad: json['cantidad'],
    precio: json['precio'],
    descripcion: json['descripcion'],
    preciooferta: json['preciooferta'],
  );

  Map<String,dynamic> toJsom()=><String,dynamic>{
    'nombremarca':nombremarca,
    'modelo':modelo,
    'referencia':referencia,
    'fecharegistro':fechaderegistro,
    'cantidad':cantidad,
    'precio':precio,
    'descripcion':descripcion,
    'preciooferta':preciooferta,
  };
}
