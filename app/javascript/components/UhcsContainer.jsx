import React from 'react'
import UserHashCats from './UserHashCats'

class UhcsContainer extends React.Component {
  constructor(props) {
    super(props)
    this.state = { user_hash_cats: [] }
  }

  render() {
    return(<UserHashCats/>)
  }
}

export default UhcsContainer;