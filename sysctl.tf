module "sysctl" {
  source         = "modules/repository"
  name           = "sysctl"
  cookbook_team  = "${github_team.sysctl_team.id}"
  chef_de_partie = "${github_team.Chef_de_partie.id}"
}

resource "github_team" "sysctl_team" {
  name        = "sysctl"
  description = "sysctl Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "sysctl-maintainer-1" {
  team_id  = "${github_team.sysctl_team.id}"
  username = "svanzoest"
  role     = "maintainer"
}

resource "github_team_membership" "sysctl-maintainer-2" {
  team_id  = "${github_team.apache2.id}"
  username = "tas50"
  role     = "maintainer"
}
