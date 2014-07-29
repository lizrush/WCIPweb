class App.PageController extends App.Controller
  @extend(Spine.Events)

  constructor: ->
    super
    $('body').addClass(@CONTAINER_STYLE_CLASS) if @CONTAINER_STYLE_CLASS?
    @footer = $('<div class="fixed-page-footer"/>')
    $('.main-container').append @footer

  render: ->
    super
    WCIP.document().title = if @pageTitle then "#{@pageTitle} | WCIP.in" else "WhereCanIPark.in | WCIP.in"

  release: ->
    super
    App.PageController.unbind()
    $('body').removeClass(@CONTAINER_STYLE_CLASS) if @CONTAINER_STYLE_CLASS?
    @footer.remove()

  scrollToCorrectLocation: ->
    App.scrollToTop()
