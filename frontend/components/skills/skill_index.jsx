var React = require('react'),
    SkillStore = require('./../../stores/skill_store'),
    SkillIndexItem = require('./skill_index_item'),
    CookieStore = require('./../../stores/cookie_store'),
    SkillsApiUtil = require('./../../util/skills_api_util');

var SkillIndex = React.createClass({
  getInitialState: function () {
    return { skills: SkillStore.findByCourse(this.props.courseId) };
  },

  _onChange: function () {
    this.setState({ skills: SkillStore.all() });
  },

  componentWillReceiveProps: function () {
    SkillsApiUtil.fetchSkills(this.props.courseId);
  },

  componentDidMount: function () {
    this.skillListener = SkillStore.addListener(this._onChange);
    SkillsApiUtil.fetchSkills(this.props.courseId);
  },

  componentWillUnmount: function () {
    this.skillListener.remove();
  },

  renderTrophy: function () {
    var courseId = this.props.courseId;
    if (CurrentUserStore.findCompletion(this.props.courseId, "course") ||
        CookieStore.findCompletionByTypeAndID("course", parseInt(courseId))) {
      return(
        <div className="trophy-container">
          <i className="fa completion-trophy fa-trophy fa-5x">
            <h2 className="trophy-text">
              100
              <i className="fa fa-percent"></i>
            </h2>
          </i>
        </div>
      );

    } else {
      return <div />;
    }
  },

  render: function () {
    if (this.state.skills === {}) { return <div />; }

    var skills = this.state.skills;
    var skillKeys = Object.keys(this.state.skills);
    skills = skillKeys.map(function (key, idx) {
      var prevSkill;
      var skill = skills[key];
      if (idx > 0) {
        prevSkill = skills[Object.keys(this.state.skills)[idx - 1]];
      }

      return <SkillIndexItem key={idx} skill={skill} prevSkill={prevSkill}/>;
    }.bind(this));

    return(
      <div className="skill-index">
        <ul className="skill-list group">
          {skills}
        </ul>
        {this.renderTrophy()}
      </div>
    );
  }
});

module.exports = SkillIndex;
