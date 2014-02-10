(function() {

  Siqidemy.TopicSummaryView.prototype.on("appendSummaryInformation", function(childViews) {
    // Add the poll information
    if (this.get('topic.archetype') === 'task') {
      childViews.pushObject(Siqidemy.View.create({
        tagName: 'section',
        classNames: ['information'],
        templateName: 'siqidemy_task/templates/about_task'
      }));
    }
  });

}).call(this);
