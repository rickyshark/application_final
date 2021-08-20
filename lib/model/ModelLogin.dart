class LoginResponseModel {
  late bool success;
  late bool forceLogin;
  late String mensaje;
  late Data data;
  late String anuncionGeneral;
  late int fecha;

  LoginResponseModel(
      {required this.success,
      required this.forceLogin,
      required this.mensaje,
      required this.data,
      required this.anuncionGeneral,
      required this.fecha});

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    forceLogin = json['forceLogin'];
    mensaje = json['mensaje'];
    data = json['data'] = new Data.fromJson(json['data']);
    anuncionGeneral = json['anuncion_general'];
    fecha = json['fecha'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['forceLogin'] = this.forceLogin;
    data['mensaje'] = this.mensaje;

    data['data'] = this.data.toJson();

    data['anuncion_general'] = this.anuncionGeneral;
    data['fecha'] = this.fecha;
    return data;
  }
}

class Data {
  late String id;
  late String usuario;
  late String recinto;
  late String nombre;
  late String apellido;
  late String carrera;
  late String correo;
  late String token;

  Data(
      {required this.id,
      required this.usuario,
      required this.recinto,
      required this.nombre,
      required this.apellido,
      required this.carrera,
      required this.correo,
      required this.token});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    usuario = json['usuario'];
    recinto = json['recinto'];
    nombre = json['nombre'];
    apellido = json['apellido'];
    carrera = json['carrera'];
    correo = json['correo'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['usuario'] = this.usuario;
    data['recinto'] = this.recinto;
    data['nombre'] = this.nombre;
    data['apellido'] = this.apellido;
    data['carrera'] = this.carrera;
    data['correo'] = this.correo;
    data['token'] = this.token;
    return data;
  }
}

class LoginRequestModel {
  String recinto;
  String usuario;
  String clave;

  String appId;

  LoginRequestModel(
      {required this.recinto,
      required this.usuario,
      required this.clave,
      required this.appId});

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      "recinto": recinto.trim(),
      "usuario": usuario.trim(),
      "clave": clave.trim(),
      "app_id": appId.trim()
    };
    return map;
  }
}
