def path_to(page_name)
  case page_name
    when /the homepage/
      '/'
    when /the project page for "([^"]*)"/
      project_path(Project.find_by_name!($1))
  end
end