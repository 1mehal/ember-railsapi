App.UsersEditController = Ember.ObjectController.extend
  destroy: ->
    @content.deleteRecord()
    @store.commit()
    @transitionTo('users.index')

  update: ->
    @store.commit()
    @transitionTo('user', @content)

  cancel: ->
    if @content.isDirty
      @content.rollback()
    @transitionTo('user', @content)

  buttonTitle: 'Edit'
  headerTitle: 'Editing'
