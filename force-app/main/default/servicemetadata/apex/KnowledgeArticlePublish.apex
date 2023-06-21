List<knowledge__kav> knowledgeList = [select KnowledgeArticleId,publishstatus from knowledge__kav where publishstatus = 'Draft' and title = 'Return order creation'];
for(knowledge__kav knowledge : knowledgeList){
    KbManagement.PublishingService.publishArticle(knowledge.KnowledgeArticleId, true);
}