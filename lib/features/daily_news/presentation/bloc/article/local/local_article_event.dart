part of 'local_article_bloc.dart';

abstract class LocalArticleEvent extends Equatable {
  final ArticleEntity? article;
  const LocalArticleEvent({this.article});

  @override
  List<Object> get props => [article!];
}

class GetSavedArticles extends LocalArticleEvent {
  const GetSavedArticles();
}

class RemoveArticle extends LocalArticleEvent {
  const RemoveArticle(ArticleEntity articleEntity)
      : super(article: articleEntity);
}

class SaveArticle extends LocalArticleEvent {
  const SaveArticle(ArticleEntity articleEntity)
      : super(article: articleEntity);
}
