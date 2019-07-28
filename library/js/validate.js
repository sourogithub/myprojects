function validateLibraryId(field)
{
  return (field == "") ? "No library id  was entered.\n" : ""
}

function validateName(field)
{
  return (field == "") ? "No name was entered.\n" : ""
}

function validateBranch(field)
{
  return (field == "") ? "No branch was entered.\n" : ""
  
}
function validateSemester(field)
{
  return (field == "") ? "No semester was entered.\n" : ""
}
function validateYoa(field)
{
  return (field == "") ? "No year of admission was entered.\n" : ""
}
function validateEmail(field)
{
  return (field == "") ? "No Email was entered.\n":""
     if (!((field.indexOf(".") > 0) &&
               (field.indexOf("@") > 0)) ||
              /[^a-zA-Z0-9.@_-]/.test(field))
      return "The Email address is invalid.\n"
  return ""
}

function validateUserid(field)
{
  return (field == "") ? "No Userid was entered.\n":""
  if (field.length < 5)
    return "Userid must be at least 5 characters.\n"
  else if (/[^a-zA-Z0-9_-]/.test(field))
    return "Only a-z, A-Z, 0-9, - and _ allowed in Userid.\n"
  return ""
}

function validatePassword(field)
{
  return (field == "") ? "No Password was entered.\n":""
  if (field.length < 6)
    return "Passwords must be at least 6 characters.\n"
  else if (!/[a-z]/.test(field) || ! /[A-Z]/.test(field) ||
           !/[0-9]/.test(field))
    return "Passwords require one each of a-z, A-Z and 0-9.\n"
  return ""
}

function validateAge(field)
{
  if (field == "" || isNaN(field)) return "No Age was entered.\n"
  else if (field < 18 || field > 110)
    return "Age must be between 18 and 110.\n"
  return ""
}


