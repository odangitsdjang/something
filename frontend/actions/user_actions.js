export const RECEIVE_USER = "RECEIVE_USER";
export const RECEIVE_USER_ERRORS = "RECEIVE_USER_ERRORS";
export const START_LOADING = "START_LOADING";

const startLoading = () => ({
  type: START_LOADING
});

const receiveUser = (user) => ({
  type: RECEIVE_USER,
  user
});

const receiveUserErrors = (errors) => ({
  type: RECEIVE_USER_ERRORS,
  errors
});
