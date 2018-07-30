import React from "react"
import UserHashCats from "./UserHashCats"

class Category extends React.Component {
  render() {
    return(
      <div className='category-block'>
        <h3>{this.props.category.name}</h3>
        <UserHashCats category={this.props.category} csrf_token={this.props.csrf_token} />
      </div>
    )
  }
}

export default Category;