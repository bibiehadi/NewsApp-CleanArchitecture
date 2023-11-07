part of 'local_article_bloc.dart';

abstract class LocalArticleState extends Equatable {
  final List<ArticleEntity>? articles;
  const LocalArticleState({this.articles});

  @override
  List<Object> get props => [articles!];
}

final class LocalArticleInitial extends LocalArticleState {
  const LocalArticleInitial();
}

final class LocalArticleLoading extends LocalArticleState {
  const LocalArticleLoading();
}

final class LocalArticleSuccess extends LocalArticleState {
  const LocalArticleSuccess(List<ArticleEntity> articles)
      : super(articles: articles);
}

final class LocalArticleFailed extends LocalArticleState {
  const LocalArticleFailed();
}
