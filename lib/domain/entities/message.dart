enum FromWho { me, hers }

class Message {
  final String text;
  final String? ImageUrl;
  final FromWho fromWho;

  Message({
    required this.text,
    this.ImageUrl,
    required this.fromWho,
  });
}
