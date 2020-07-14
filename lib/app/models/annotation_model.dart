class AnnotationModel {

  final String authorId;
  final String authorName;
  final String title;
  final String description;
  final String publicationDate;
  final bool isPublic;
  final List<String> subjectsTags;

  AnnotationModel({
    this.authorId, 
    this.authorName, 
    this.title, 
    this.description, 
    this.publicationDate, 
    this.isPublic, 
    this.subjectsTags
  });



}