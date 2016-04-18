@Like = React.createClass
  getInitialState: ->
    likes: 0

  componentWillMount: ->
    $.get @props.source, ((results) ->
      count = results.length
      if @isMounted
        @setState
          likes: count
      ).bind(@)

  handleLike: (e) ->
    @setState
      likes: @state.likes + 1
    $.ajax
      method: 'POST'
      url: "/blurts/#{@props.id}/like_blurt"
      data_type: 'JSON'
      succeess: () =>
        @props.addLike

  render: ->
    if @state.likes > 0
      return <a className="like">
        <i className="like icon selected" onClick={@handleLike}></i> {@state.likes} Likes
      </a>
    else
      return <a className="like">
        <i className="like icon" onClick={@handleLike}></i>
      </a>
