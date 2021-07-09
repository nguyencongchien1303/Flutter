class ConversationDataModel {
  final String name;
  final String avatar;
  final bool isOnline;
  final bool isActive;
  final String lastMessage;
  final String lastMessageTime;

  ConversationDataModel(
    this.name,
    this.avatar,
    this.isOnline,
    this.isActive,
    this.lastMessage,
    this.lastMessageTime,
  );
}
