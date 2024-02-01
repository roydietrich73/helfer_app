class User {
  final String firstName;
  final String secondName;
  final String street;
  final int streetNumber;
  final int postCode;
  final String homeTown;
  final int telNumber;
  final String eMail;

  User({
    required this.firstName,
    required this.secondName,
    required this.street,
    required this.streetNumber,
    required this.postCode,
    required this.homeTown,
    required this.telNumber,
    required this.eMail
    });

    Map<String, dynamic> toJson (){
      return{
        'firstName':firstName,
        'secondName':secondName,
        'street':street,
        'streetNumber':streetNumber,
        'postCode': postCode,
        'homeTown': homeTown,
        'telNumber': telNumber,
        'eMail': eMail,
      };
    }
    factory User.fromJson(Map<String, dynamic> json) {
    return User(
      firstName: json["firstName"],
      secondName: json["secondName"],
      street: json['street'],
      streetNumber: json['streetNumber'],
      postCode: json['postCode'],
      homeTown: json['homeTown'],
      telNumber: json['telNumber'],
      eMail: json['eMail'],
    );
  }
}

