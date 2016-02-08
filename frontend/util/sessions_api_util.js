var CurrentUserActions = require("./../actions/current_user_actions");
var CookieActions = require("./../actions/cookie_actions");
var SessionsApiUtil = {
  logIn: function (credentials, success) {
    var username = credentials.elements[0].value,
        password = credentials.elements[1].value,
        sessionParams = {session: {username: username, password: password}};

    $.ajax({
      url: '/api/session',
      type: 'POST',
      dataType: 'json',
      data: sessionParams,
      success: function (currentUser) {

        CookieActions.receiveCookie({
            curCourseId: currentUser.current_course_id
          });
        CurrentUserActions.receiveCurrentUser(currentUser);
        success && success(currentUser.current_course_id);
      }
    });
  },

  logOut: function (callback) {
    $.ajax({
      url: '/api/session',
      type: 'DELETE',
      dataType: 'json',
      success: function () {
        CurrentUserActions.receiveCurrentUser({});
        callback && callback()
      }
    });
  },

  fetchCurrentUser: function (callback) {
    $.ajax({
      url: '/api/session',
      type: 'GET',
      dataType: 'json',
      success: function (currentUser) {
        if (currentUser.current_course_id) {
          CookieActions.receiveCookie({
            curCourseId: currentUser.current_course_id
          });
        }
        CurrentUserActions.receiveCurrentUser(currentUser);
        callback && callback(currentUser);
      }
    });
  }


};

module.exports = SessionsApiUtil;
