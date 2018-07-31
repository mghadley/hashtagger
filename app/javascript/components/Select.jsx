import React from 'react';

class Select extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      unselectedCategories: [],
      selectedCategories: [],
      hashtags: []
    }
    this.displayUnselectedCategories = this.displayUnselectedCategories.bind(this);
    this.displaySelectedCategories = this.displaySelectedCategories.bind(this);
    this.selectCategory = this.selectCategory.bind(this);
    this.unselectCategory = this.unselectCategory.bind(this);
    this.getHashtags = this.getHashtags.bind(this);
  }

  componentDidMount() {
    $.ajax({
      url: '/categories',
      type: 'GET',
      dataType: 'JSON'
    }).done((categories) => {
      this.setState({ unselectedCategories: categories })
    }).fail((response) => {
      console.log(response);
    })
  }

  selectCategory(e) {
    e.preventDefault();
    let index = this.state.unselectedCategories.findIndex(i => i.id === parseInt(e.target.dataset.categoryId))
    let selectedCategories = [
      ...this.state.selectedCategories,
      this.state.unselectedCategories[index]
    ]
    let unselectedCategories = [
      ...this.state.unselectedCategories.slice(0, index),
      ...this.state.unselectedCategories.slice(index + 1)
    ]
    this.setState({ unselectedCategories, selectedCategories }, this.getHashtags)
  }

  unselectCategory(e) {
    e.preventDefault();
    let index = this.state.selectedCategories.findIndex(i => i.id === parseInt(e.target.dataset.categoryId))
    let unselectedCategories = [
      ...this.state.unselectedCategories,
      this.state.selectedCategories[index]
    ]
    let selectedCategories = [
      ...this.state.selectedCategories.slice(0, index),
      ...this.state.selectedCategories.slice(index + 1)
    ]
    this.setState({ unselectedCategories, selectedCategories }, this.getHashtags)
  }

  displayUnselectedCategories() {
    return this.state.unselectedCategories.map((category) => {
      return(
        <button key={`uc-${category.id}`} className="btn btn-select btn-category" data-category-id={category.id} onClick={this.selectCategory}>
          + {category.name}
        </button>
      )
    })
  }

  displaySelectedCategories() {
    if(this.state.selectedCategories.length > 0) {
      return this.state.selectedCategories.map((category) => {
        return(
          <button key={`sc-${category.id}`} className="btn btn-deselect btn-category" data-category-id={category.id} onClick={this.unselectCategory}>
            - {category.name}
          </button>  
        )
      })
    }
  }

  getHashtags() {
    if(this.state.selectedCategories.length > 0) {
      let ids = this.state.selectedCategories.map((c) => {
        return c.id
      })
      $.ajax({
        url: '/show_block',
        type: 'GET',
        dataType: 'JSON',
        data: {
          categories: ids
        }
      }).done((hashtags) => {
        this.setState({hashtags});
      }).fail((response) => {
        console.log(response);
      })
    } else {
      this.setState({ hashtags: [] })
    }
  }

  renderHashtagBlock() {
    if(this.state.hashtags.length > 0) {
      let str = ".\n.\n.\n.\n"
      for (let hashtag of this.state.hashtags) {
        str += `${hashtag} `
      }
      str += "#hashemandtagem"
      return(
        <div className='block'>
          <pre className="hashtag-block">{str}</pre>
        </div>
      )
    } else {
      return(
        <i>Select some categories to generate block</i>
      )
    }
  }

  render() {
    return(
      <div>
        <div className='row'>
          <div className='col-12'>
            {this.displayUnselectedCategories()}
          </div>
        </div>
        <div className='row'>
          <div className='col-12'>
            {this.displaySelectedCategories()}
          </div>
        </div>
        {this.renderHashtagBlock()}
      </div>
    )
  }
}

export default Select