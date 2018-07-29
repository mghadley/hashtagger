import React from "react"
import Category from "./Category"

class Categories extends React.Component {
  constructor(props) {
    super(props)
    this.renderCategories = this.renderCategories.bind(this)
  }

  renderCategories() {
    let elements = this.props.categories.map((category) => {
      return(<Category key={`category-${category.name}`} category={category} csrf_token={this.props.csrf_token}/>)
    });
    return elements
  }

  render() {
    return (
      <div>
        <h1>Categories</h1>
        { this.renderCategories() }
      </div>
    );  
  }
}

export default Categories;