class Facturas{
  final String pedido;
  final String cliente;
  final String cantidad;
  final String iva;
  final String numerodefactura;
  final String fechadesalida;
  final String formadepago;


  Facturas({
    required this.pedido,
    required this.cliente,
    required this.cantidad,
    required this.iva,
    required this.numerodefactura,
    required this.fechadesalida,
    required this.formadepago,
  }
      );
  static Facturas fromJson(Map<String,dynamic>json)=> Facturas(
    pedido: json['pedido'],
    cliente: json['cliente'],
    cantidad: json['cantidad'],
    iva: json['iva'],
    numerodefactura: json['numerodefactura'],
    fechadesalida: json['fechadesalida'],
    formadepago: json['formadepago'],
  );

  Map<String,dynamic> toJsom()=><String,dynamic>{
    'pedido':pedido,
    'cliente':cliente,
    'cantidad':cantidad,
    'iva':iva,
    'numerodefactura':numerodefactura,
    'fechadesalida':fechadesalida,
  };
}