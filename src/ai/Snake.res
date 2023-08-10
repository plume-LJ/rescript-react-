// Snake.res
type direction =
  | Up
  | Down
  | Left
  | Right;

type position = {
  x: int,
  y: int,
};

type segment = {
  pos: position,
  direction: direction,
};

type snake = {
  segments: list<segment>,
};

type food = {
  pos: position,
};

type game_state =
  | Playing(snake, food)
  | GameOver;

type action =
  | Move(direction)
  | ChangeDirection(direction)
  | Eat
  | Tick;

type state = {
  gameState: game_state,
  score: int,
  direction: direction,
  tickInterval: int,
  tickTimer: option<int>,
};

let initialState = {
  gameState: Playing({
    segments: [
      {pos: {x: 5, y: 2}, direction: Right},
      {pos: {x: 4, y: 2}, direction: Right},
      {pos: {x: 3, y: 2}, direction: Right},
    ],
  }, {
    pos: {x: 10, y: 10},
  }),
  score: 0,
  direction: Right,
  tickInterval: 150,
  tickTimer: None,
};

let reducer = (state, action) => {
  let snake = switch (state.gameState) {
  | Playing(snake, _) => snake
  | GameOver => failwith("Should not happen")
  };

  switch (action) {
  | Move(dir) =>
      let newPos = {
        x: List.hd(snake.segments).pos.x + (dir == Up ? -1 : dir == Down ? 1 : 0),
        y: List.hd(snake.segments).pos.y + (dir == Left ? -1 : dir == Right ? 1 : 0),
      };

      let newSegment = {
        pos: newPos,
        direction: dir,
      };

      let newSnake = {
        segments: List.concat([{pos: newSegment, direction: dir}], List.dropLast(1, snake.segments)),
      };

      let newState = state.gameState;
      switch (state.gameState) {
      | Playing(_, _) => newState = Playing(newSnake, List.hd(snake.segments).pos == state.gameState[1].pos ? {pos: Random.int(20),} : state.gameState[1])
      | GameOver => failwith("Should not happen")
      };

      (newState, None)
  | ChangeDirection(dir) =>
      (state, Some(Move(dir)))
  | Eat =>
      let newFoodPos = {
        x: Random.int(20),
        y: Random.int(20),
      };

      let newFood = {
        pos: newFoodPos,
      };

      let newState = state.gameState;
      switch (state.gameState) {
      | Playing(snake, _) => {
        newState = Playing(snake, newFood)
        }
      | GameOver => failwith("Should not happen")
      };

      let newScore = state.score + 1;

      (state{gameState: newState, score: newScore}, None)
  | Tick =>
      let (newState, newAction) = state;
      let snake = switch (state.gameState) {
      | Playing(snake, _) => snake
      | GameOver => failwith("Should not happen")
      };
      let newPos = {
        x: List.hd(snake.segments).pos.x + (state.direction == Up ? -1 : state.direction == Down ? 1 : 0),
        y: List.hd(snake.segments).pos.y + (state.direction == Left ? -1 : state.direction == Right ? 1 : 0)
        }
        let newGameState = switch (state.gameState) {
  | Playing(_, _) when newPos.x < 0 || newPos.x >= 20 || newPos.y < 0 || newPos.y >= 20 =>
      GameOver
  | Playing(snake, food) =>
      let newSnake = {
        segments: List.concat([{pos: {x: newPos.x, y: newPos.y}, direction: state.direction}], snake.segments |> List.dropLast(1)),
      };

      let checkPos(pos) => pos.x == newPos.x && pos.y == newPos.y;
      let newFood = if List.exists(checkPos, snake.segments)
        {pos: Random.int(20),}
      else if checkPos(food.pos) 
        {pos: Random.int(20),}
      else
        food;

      Playing(newSnake, newFood)
  | GameOver => failwith("Should not happen")
  };

  let newTickTimer = if newGameState == GameOver
    None
  else
    state.tickTimer;

  (state{gameState: newGameState, tickTimer: newTickTimer}, newGameState == GameOver ? None : Some(Tick))

