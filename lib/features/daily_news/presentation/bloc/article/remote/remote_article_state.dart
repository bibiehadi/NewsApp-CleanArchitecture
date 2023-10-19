part of 'remote_article_bloc.dart';

abstract class RemoteArticleState extends Equatable {
  final List<ArticleEntity>? articles;
  final DioException? error;

  const RemoteArticleState({this.articles, this.error});

  @override
  List<Object> get props => [articles!, error!];
}

final class RemoteArticleInitial extends RemoteArticleState {}

final class RemoteArticleLoading extends RemoteArticleState {
  const RemoteArticleLoading();
}

final class RemoteArticleSuccess extends RemoteArticleState {
  const RemoteArticleSuccess(List<ArticleEntity> article)
      : super(articles: article);
}

final class RemoteArticleFailed extends RemoteArticleState {
  const RemoteArticleFailed(DioException error) : super(error: error);
}
