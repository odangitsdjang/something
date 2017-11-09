import { combineReducers } from 'redux';

// import session from './session_reducer';
// import errors from './errors_reducer';
import UserReducer from './user_reducer';
// import loading from './loading_reducer';

const EntitiesReducer = combineReducers({
  user: UserReducer
});

// const UIReducer = combineReducers({
//   loading
// });

const RootReducer = combineReducers({
  entities: EntitiesReducer
  // ui: UIReducer
});

export default RootReducer;