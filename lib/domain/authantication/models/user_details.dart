class UserDetails {
  UserDetails(
      {required this.phoneNumber,
      this.name,
      this.email,
      this.dob,
      this.id,
      this.imageUrl});
  final String? id;
  final String? imageUrl;
  final String? name;
  final String? email;
  final String? dob;
  final String phoneNumber;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'imageUrl': imageUrl,
      'name': name,
      'email': email,
      'dob': dob,
      'phoneNumber': phoneNumber,
    };
  }

  factory UserDetails.fromMap(Map<String, dynamic> map) {
    return UserDetails(
      id: map['id'] != null ? map['id'] as String : null,
      imageUrl: map['imageUrl'] != null ? map['imageUrl'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      email: map['email'] != null ? map['email'] as String : null,
      dob: map['dob'] != null ? map['dob'] as String : null,
      phoneNumber: map['phoneNumber'] as String,
    );
  }

  static UserDetails initial() {
    return UserDetails(
      phoneNumber: '',
    );
  }

  UserDetails copyWith({
    String? id,
    String? imageUrl,
    String? name,
    String? email,
    String? dob,
    String? phoneNumber,
  }) {
    return UserDetails(
      id: id ?? this.id,
      imageUrl: imageUrl ?? this.imageUrl,
      name: name ?? this.name,
      email: email ?? this.email,
      dob: dob ?? this.dob,
      phoneNumber: phoneNumber ?? this.phoneNumber,
    );
  }
}
