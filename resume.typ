#import "template.typ": resume, header, resume_heading, edu_item, exp_item, project_item, skill_item, achievement_item, course_item


#let yml_personal(d) = {
  header(
    name: d.name,
    email: d.email,
    site: d.site,
    tg: d.tg
  )
}

#let yml_education(d) = {
  resume_heading[Образование]
  for edu in d {
    edu_item(
      name: edu.name,
      degree: edu.degree,
      location: edu.location,
      date: edu.date,
    )
  }
}

#let yml_experience(d) = {
  resume_heading[Опыт работы]
  for exp in d {
    exp_item(
      role: exp.role,
      name: exp.name,
      location: exp.location,
      date: exp.date,
      .. exp.points
    )
  }
}

#let yml_projects(d) = {
  resume_heading[Проекты]
  for proj in d {
    project_item(
      name: proj.name,
      skills: proj.skills,
      l: proj.link,
      ..proj.points
    )
  }
}

#let yml_skills(d) = {
  resume_heading[Навыки]
  for skill in d {
    skill_item(
      category: skill.category,
      skills: skill.skills
    )
  }
}

#let yml_achievements(d) = {
  resume_heading[Достижения]
  for proj in d {
    achievement_item(
      name: proj.name,
      status: proj.status,
      date: proj.date
    )
  }
}

#let yml_courses(d) = {
  resume_heading[Курсы]
  for proj in d {
    course_item(
      name: proj.name,
      date: proj.date
    )
  }
}

#let yml_resume(data) = {
  show: resume

  yml_personal(data.personal)
  yml_education(data.education)
  yml_experience(data.experience)
  yml_projects(data.projects)
  yml_achievements(data.achievements)
  yml_courses(data.courses)
  yml_skills(data.skills)
}

#let resume_data = yaml("experience.yaml")
#yml_resume(resume_data)