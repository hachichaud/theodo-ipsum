angular.module "%module%.generator"
.controller "generatorCtrl",
($scope) ->
  words = ["Devops", "Scrum", "agile", "internet", "webapp", "js", "json", "php", "symphony", "cérémonie", "sprint", "célérité", "équipe", "challenge", "satisfaction", "amélioration", "continue", "startup", "support", "production", "product", "owner", "client", "steakholder", "lean", "methodo", "pragmatique", "esprit déquipe", "dynamique", "croissance", "chiffre", "si", "Informatique", "ingénieur", "jeune", "Paris", "academy", "autonomie", "business", "métier", "application", "intranet", "utilisateur", "test", "retour", "standard", "Comex", "asap", "ça fait sens", "stratégie", "itération", "jour", "hommes", "workshop", "step", "atelier", "brainstorming", "openspace", "out of the box", "cordialement", "keynote", "go", "mail", "brief", "force de proposition", "process", "kickoff", "starter", "review", "retro", "people", "milestone", "board", "burndown", "chart", "sprint", "goal", "sprint", "planning", "scrum", "dojo", "kaizen", "Kanban", "iOS", "trello", "postIt", "ticket", "points"]

  $scope.words = _.shuffle words
  $scope.ipsum = [
    " ipsum dolor sit ",
    " amet, consectetur ",
    " adipiscing elit, ",
    " sed do eiusmod ",
    " tempor ",
    " incididunt ut labore et ",
    " dolore magna ",
    ". Ut enim ad ",
    " minim veniam, ",
    " quis nostrud exercitation ",
    " ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
  ]
