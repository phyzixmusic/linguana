var Store = require('flux/utils').Store,
    AppDispatcher = require('../dispatcher/dispatcher'),
    LanguageStore = require('./language_store'),
    CourseStore = require('./course_store'),
    UsersApiUtil = require('../util/users_api_util'),
    CoursesApiUtil = require('../util/courses_api_util'),
    CookieConstants = require('../constants/cookie_constants');


var _cookiesHaveBeenFetched = false;

var _cookies = {
  curLng: "English",
  curCourseId: ""
};

var CookieStore = new Store(AppDispatcher);

var _COOKIE_NAMES = {
  curLng: "curLng",
  curCourseId: "curCourseId"
};

var addCookie = function (cookie) {
  var key = Object.keys(cookie)[0];

  window.localStorage.setItem(key, cookie[key]);
  _cookies[key] = cookie[key];
  if (!CurrentUserStore.isLoggedIn()) { return; }
  if (key === "curCourseId") {
    UsersApiUtil.updateUser({ current_course_id: cookie[key] });
  } else if (key === "curLng") {
    var lang = LanguageStore.findByName(cookie[key]);
    UsersApiUtil.updateUser({ current_language_id: lang.id });
  }
};

var fetchCookiesFromBrowser = function () {
  Object.keys(localStorage).forEach(function (key) {
    if (Object.keys(_COOKIE_NAMES).includes(key)) {
      _cookies[key] = localStorage[key];
    }
  });
};


var receiveCookies = function (cookies) {
  var keys = Object.keys(cookie);
  keys.forEach(function (key, idx) {
    window.localStorage.setItem(key, cookie[key]);
    _cookies[key] = cookie[key];
    if (key === "curCourseId") {
      UsersApiUtil.updateUser({ current_course_id: cookie[key] });
    } else if (key === "curLng") {
      var lang = LanguageStore.findByName(cookie[key]);
      UsersApiUtil.updateUser({ current_language_id: lang.id });
    }
  }.bind(this));
};


var clearCookies = function () {
  _cookies = {curLng: "English", curCourseId: ""};
  localStorage.setItem("curLng", "English");
  localStorage.setItem("curCourseId", "");
};

CookieStore.all = function () {
  return Object.assign({}, _cookies);
};

CookieStore.getCurCourse = function () {
  var course = CourseStore.find(_cookies.curCourseId);
  if (course) {
    return course;
  } else if (_cookies.curCourseId) {
    CoursesApiUtil.fetchCourse(_cookies.curCourseId, function (fetchedCourse) {
      course = fetchedCourse;
    }.bind(this));
  }

  return course;
};

CookieStore.curLng = function () {
  return _cookies.curLng;
};

CookieStore.curCourse = function () {
  return _cookies.curCourseId;
};

CookieStore.cookiesHaveBeenFetched = function () {
  return _cookiesHaveBeenFetched;
};

CookieStore.__onDispatch = function (payload) {
  if (payload.actionType === CookieConstants.COOKIES_RECEIVED) {
    var cookies = payload.cookies;
    receiveCookies(cookies);
    CookieStore.__emitChange();
  } else if (payload.actionType === CookieConstants.COOKIE_RECEIVED) {
    var cookie = payload.cookie;
    addCookie(cookie);
    CookieStore.__emitChange();
  } else if (payload.actionType === CookieConstants.FETCH_COOKIES) {
    _cookiesHaveBeenFetched = true;
    fetchCookiesFromBrowser();
    CookieStore.__emitChange();
  } else if (payload.actionType === CookieConstants.CLEAR_COOKIES) {
    clearCookies();
    CookieStore.__emitChange();
  }
};

window.CookieStore = CookieStore;

module.exports = CookieStore;
