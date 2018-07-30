import React from 'react';

class UserHashCat extends React.Component {
  constructor(props) {
    super(props);
    this.state = { editing : false, name: '' };
    this.toggleEdit = this.toggleEdit.bind(this);
    this.inputChange = this.inputChange.bind(this);
    this.update = this.update.bind(this);
    this.renderHashtag = this.renderHashtag.bind(this);
  }

  componentDidMount() {
    this.setState({ name: this.props.userHashCat.hashtag.name });
  }

  toggleEdit() {
    this.setState({ editing: !this.state.editing });
  }

  inputChange(e) {
    this.setState({ [e.target.name]: e.target.value });
  }

  update() {
    this.toggleEdit();
    this.props.updateName(this.props.userHashCat.id, this.state.name);
  }

  renderHashtag() {
    if(this.state.editing) {
      return(
        <form>
          <div className="form-group">
            <div className="row">
              <div className="col-6">
                <input className="form-control" type='text' name='name' value={this.state.name} onChange={this.inputChange}/>
              </div>
              <div className="col-6">
                <div className='pull-right'>
                  <i className='fa fa-paper-plane' onClick={this.update} />
                  <i className='fa fa-ban' onClick={this.toggleEdit} />
                </div>
              </div>
            </div>
          </div>
        </form>
      )
    } else {
      return(
        <div>
          {this.props.userHashCat.hashtag.name}
          <div className='pull-right'>
            <i className='fa fa-trash' onClick={() => this.props.removeHashtag(this.props.userHashCat.id)} />
            <i className='fa fa-edit' onClick={this.toggleEdit} />
          </div>
        </div>
      )
    }
  }

  render() {
    return(
      <div className="col-lg-4 col-md-6">
        <div className="hashtag-card">
          {this.renderHashtag()}
        </div>
      </div>
    )
  }
}

export default UserHashCat