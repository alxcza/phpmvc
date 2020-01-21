<?php

namespace Application\Models;

class Article extends Post
{

  function __construct($values)
  {
    $this->title = isset($values['post_title']) ? $values['post_title'] : null;
    $this->content = isset($values['post_content']) ? $values['post_content'] : null;
    $this->author = isset($values['post_author']) ? $values['post_author'] : null;
    $this->date = isset($values['post_date']) ? $values['post_date'] : null;
  }

  //Getter & Setters différent?

}
