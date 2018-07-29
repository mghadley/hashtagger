import React from 'react'
import UserHashCat from './UserHashCat'

class UserHashCats extends React.Component {
  constructor(props) {
    super(props)
    this.state = { user_hash_cats: [] }
    this.displayUhcs = this.displayUhcs.bind(this);
    this.removeHashtag = this.removeHashtag.bind(this);
    this.updateName = this.updateName.bind(this);
  }

  componentDidMount() {
    $.ajax({
      url: '/user_hashtag_categories',
      type: 'GET',
      dataType: 'JSON',
      data: {
        category_id: this.props.category.id
      }
    }).done((data) => {
      this.setState({ user_hash_cats: data })
    })
  }

  updateName(id, name) {
    $.ajax({
      url: `/user_hashtag_categories/${id}`,
      type: 'PUT',
      dataType: 'JSON',
      data: {
        authenticity_token: this.props.csrf_token,
        hashtag: {
          name: name
        }
      }
    }).done((response) => {
      let index = this.state.user_hash_cats.findIndex(u => u.id === id)
      let new_uhcs = [
        ...this.state.user_hash_cats.slice(0, index),
        response,
        ...this.state.user_hash_cats.slice(index + 1)
      ]
      this.setState({ user_hash_cats: new_uhcs })
    }).fail((response) => {
      console.log(response)
    })
  }

  removeHashtag(id) {
    $.ajax({
      url: `/user_hashtag_categories/${id}`,
      type: 'DELETE',
      dataType: 'JSON',
      data: { authenticity_token: this.props.csrf_token }
    }).done((response) => {
      if(response) {
        let index = this.state.user_hash_cats.findIndex(u => u.id === id)
        let new_uhcs = [
          ...this.state.user_hash_cats.slice(0, index),
          ...this.state.user_hash_cats.slice(index + 1)
        ]
        this.setState({ user_hash_cats: new_uhcs })
      }
    })
  }

  displayUhcs() {
    let hashtags = this.state.user_hash_cats.map((uhc) => {
      return(
        <UserHashCat 
          key={`${uhc.id}-uhc`}
          userHashCat={uhc}
          removeHashtag={this.removeHashtag}
          updateName={this.updateName}/>
      )
    })
    return hashtags
  }

  render() {
    if(this.state.user_hash_cats && this.state.user_hash_cats.length > 0) {
      return(
        <div className='row'>
          {this.displayUhcs()}
        </div>
      )
    } else {
      return(<div/>)
    }
  }
}

export default UserHashCats;