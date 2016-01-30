var React = require('react'),
    LessonStore = require('../../stores/lesson_store'),
    LessonIndex = require('./lesson_index'),
    LessonsApiUtil = require('../../util/lessons_api_util'),
    ExercisesApiUtil = require('../../util/exercises_api_util'),
    TipsAndNotesModal = require("../modals/tips_and_notes_modal"),
    ModalActions = require("../../actions/modal_actions"),
    Exercise = require("../exercises/exercise"),
    ProgressBar = require("./progress_bar"),
    LessonBottomBar = require("./lesson_bottom_bar");

var Lesson = React.createClass({
  getInitialState: function () {
    return({ lesson: LessonStore.find(this.props.params.lessonId),
      showModal: false, showExercise: false, currentExerciseIdx: 0 });
  },

  componentDidMount: function () {
    var lessonId = this.props.params.lessonId;
    this.lessonListener = LessonStore.addListener(this._lessonsChanged);
    LessonsApiUtil.fetchLesson(lessonId, function () {
      this.setState({ lesson: LessonStore.find(this.props.params.lessonId), showModal: true});
      ExercisesApiUtil.fetchExercises(this.state.lesson.id, function () {
        this.setState({ showExercise: true });
      }.bind(this));
    }.bind(this));
  },

  componentWillUnmount: function () {
    this.lessonListener.remove();
  },

  _lessonsChanged: function () {
    this.setState({ lesson: LessonStore.find(this.props.params.lessonId),
    showModal: this.state.showModal });

  },

  _handleTipsAndNotesClick: function () {
    ModalActions.toggleModalDisplay("tipsAndNotesModal");
  },

  _handleCheckClick: function () {
    var nextExerciseIdx = this.state.currentExerciseIdx + 1;
    this.setState( { currentExerciseIdx: nextExerciseIdx });

  },

  render: function () {
    if(typeof this.state.lesson === "undefined") { return <div></div>; }

      var modal;
      if (this.state.showModal) {
        modal =
          <TipsAndNotesModal
            tipsAndNotes={this.state.lesson.tips_and_notes}/>;
      }
      var exercise,
          progress_bar
      if (this.state.showExercise) {
        exercise =
          <Exercise lessonId ={this.state.lesson.id}
                    exerciseIdx={this.state.currentExerciseIdx} />;
        progress_bar =
          <ProgressBar currentIdx={this.state.currentExerciseIdx} />
      }

    return(
      <div className="lesson-page">
        <div className="lesson-page-content box-shadowed">
          <div className="tips-and-notes-wrapper group">
            <h3 onClick={this._handleTipsAndNotesClick}
                className="tips-and-notes-modal-button">
              Tips & notes
            </h3>
            {modal}
            <a className="tips-and-notes-quit"
              href={"#/skills/" + this.state.lesson.skill_id }>
              Quit
            </a>
          </div>
          {progress_bar}
          {exercise}
          <LessonBottomBar
            onClickCheck={this._handleCheckClick}
            onClickSkip={this.onClickSkip} />
        </div>
      </div>
    );
  }
});

module.exports = Lesson;
