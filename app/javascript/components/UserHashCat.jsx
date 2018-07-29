import React from 'react';

class UserHashCat extends React.Component {
  constructor(props) {
    super(props);
    this.state = { editing : false, name: '' };
    this.toggleEdit = this.toggleEdit.bind(this);
    this.inputChange = this.inputChange.bind(this);
    this.update = this.update.bind(this);
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

  render() {
    if(this.state.editing) {
      return(
        <div className='col-4'>
          <form>
            <input type='text' name='name' value={this.state.name} onChange={this.inputChange}/>
            <i className='fa fa-paper-plane' onClick={this.update} />
            <i className='fa fa-ban' onClick={this.toggleEdit} />
          </form>
        </div>
      )
    } else {
      return(
        <div className='col-4'>
          {this.props.userHashCat.hashtag.name}
          <div className='pull-right'>
            <i className='fa fa-trash' onClick={() => this.props.removeHashtag(this.props.userHashCat.id)} />
            <i className='fa fa-edit' onClick={this.toggleEdit} />
          </div>
        </div>
      )
    }
  }
}

export default UserHashCat