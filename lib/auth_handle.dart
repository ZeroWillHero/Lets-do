class Authentication {
  final String? _token;
  final String? _userId;
  final String? _expiryDate;
  bool isAuth = false;

  Authentication(this._token, this._userId, this._expiryDate, this.isAuth);


}
// should be implemented 