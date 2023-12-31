part of 'view_post_bloc.dart';

abstract class ViewPostEvent extends Equatable {}

class SyncPostDataEvent extends ViewPostEvent {
  final PostEntity? post;
  final String? postID;

  SyncPostDataEvent({this.post, this.postID});

  @override
  List<Object?> get props => [post, postID];
}

class SendPostDataEvent extends ViewPostEvent {
  final PostEntity? post;

  SendPostDataEvent(this.post);

  @override
  List<Object?> get props => [post];
}

class GetListCommentEvent extends ViewPostEvent {
  final List<String> listComment;
  final bool isLoading;

  GetListCommentEvent({required this.listComment, this.isLoading = false});

  @override
  List<Object?> get props => [listComment];
}

class GetReplyCommentEvent extends ViewPostEvent {
  final String commentID;

  GetReplyCommentEvent(this.commentID);

  @override
  List<Object?> get props => [commentID];
}

class SendCommentEvent extends ViewPostEvent {
  @override
  List<Object?> get props => [identityHashCode(this)];
}

class FavouritePostEvent extends ViewPostEvent {
  final List<String> listFavourist;

  FavouritePostEvent(this.listFavourist);

  @override
  List<Object?> get props => [listFavourist];
}

class FavouriteCommentEvent extends ViewPostEvent {
  final String commentID;
  final String ownerComment;
  final List<String> listFavourite;

  FavouriteCommentEvent({
    required this.commentID,
    required this.ownerComment,
    required this.listFavourite,
  });

  @override
  List<Object?> get props => [commentID, ownerComment, listFavourite];
}

class ChangeTextCommentEvent extends ViewPostEvent {
  @override
  List<Object?> get props => [identityHashCode(this)];
}

class RequestCommentEvent extends ViewPostEvent {
  final bool isComment;

  RequestCommentEvent(this.isComment);

  @override
  List<Object?> get props => [isComment];
}

class ReplyCommentClickEvent extends ViewPostEvent {
  final CommentEntity? comment;

  ReplyCommentClickEvent([this.comment]);

  @override
  List<Object?> get props => [comment];
}

class ReplyCommentEvent extends ViewPostEvent {
  final String uidComment;

  ReplyCommentEvent({required this.uidComment});

  @override
  List<Object?> get props => [uidComment];
}

class ViewReplyCommentEvent extends ViewPostEvent {
  final String commentID;
  final bool isLoading;

  ViewReplyCommentEvent({required this.commentID, this.isLoading = true});

  @override
  List<Object?> get props => [commentID];
}

class DeleteCommentEvent extends ViewPostEvent {
  final DeleteCommentEntity entity;

  DeleteCommentEvent(this.entity);

  @override
  List<Object?> get props => [entity];
}

class SharePostEvent extends ViewPostEvent {
  final SharePostBase entity;

  SharePostEvent(this.entity);

  @override
  List<Object?> get props => [entity];
}

class DeletePostEvent extends ViewPostEvent {
  final PostEntity post;

  DeletePostEvent(this.post);

  @override
  List<Object?> get props => [post];
}
