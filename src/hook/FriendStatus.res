// FriendStatus.res

module ChatAPI = {
  // Imaginary globally available ChatAPI for demo purposes
  type status = { isOnline: bool };
  @val external subscribeToFriendStatus: (string, status => unit) => unit = "subscribeToFriendStatus";
  @val external unsubscribeFromFriendStatus: (string, status => unit) => unit = "unsubscribeFromFriendStatus";
}

type state = Offline | Loading | Online;

@react.component
let make = (~friendId: string) => {
  let (state, setState) = React.useState(_ => Offline)

  React.useEffect(() => {
    let handleStatusChange = (status) => {
      setState(_ => {
        status.ChatAPI.isOnline ? Online : Offline
      })
    }

    ChatAPI.subscribeToFriendStatus(friendId, handleStatusChange);
    setState(_ => Loading);

    let cleanup = () => {
      ChatAPI.unsubscribeFromFriendStatus(friendId, handleStatusChange)
    }

    Some(cleanup)
  })

  // from a previous example above
React.useEffect1(() => {
  let handleStatusChange = (status) => {
    setState(_ => {
      status.ChatAPI.isOnline ? Online : Offline
    })
  }

  ChatAPI.subscribeToFriendStatus(friendId, handleStatusChange);
  setState(_ => Loading);

  let cleanup = () => {
    ChatAPI.unsubscribeFromFriendStatus(friendId, handleStatusChange)
  }

  Some(cleanup)
}, [friendId]) // Only re-subscribe if friendId changes

  let text = switch(state) {
    | Offline => friendId ++ " is offline"
    | Online => friendId ++ " is online"
    | Loading => "loading..."
  }

  <div>
    {React.string(text)}
  </div>
}
