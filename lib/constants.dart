class phoneno {
  String name, phonenumber;

  phoneno(this.name, this.phonenumber);

  static List<phoneno> generatephone() {
    return [
      phoneno('Arham', '03206522050'),
      phoneno('Tariz', '03126011711'),
      phoneno('laiba', '090078601'),
      phoneno('Ali booka', '03216913792'),
      phoneno('Rao ahsan', '03009691792'),
    ];
  }
}

class messages {
  String name, message;

  messages(this.name, this.message);

  static List<messages> generatemessage() {
    return [
      messages('Arham', '03206522050'),
    ];
  }
}
