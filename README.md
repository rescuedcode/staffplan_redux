[ ![Codeship Status for rescuedcode/StaffPlan](https://codeship.io/projects/f2256780-fbb7-0131-9c0c-6695216aa8a8/status)](https://codeship.io/projects/29230)

      _________ __          _____  _______________.__
     /   _____//  |______ _/ ____\/ ____\______   \  | _____    ____  
     \_____  \\   __\__  \\   __\\   __\ |     ___/  | \__  \  /    \
     /        \|  |  / __ \|  |   |  |   |    |   |  |__/ __ \|   |  \
    /_______  /|__| (____  /__|   |__|   |____|   |____(____  /___|  /
            \/           \/                                 \/     \/

## Setup Instructions

### dependencies
  1. Install homebrew: https://github.com/mxcl/homebrew/wiki/installation
  1. `brew install postgresql git rbenv ruby-build`
  
### postgres
  1. TODO: customizations still needed?

### ruby
  1. rbenv install 2.1.2
    
### app
  1. Clone the repo from github, `git clone git@github.com:rescuedcode/staffplan_redux.git`
  1. cd to the app and `bundle`
  1. `heroku pg:transfer --to postgres://localhost/staffplan_redux_development --from HEROKU_POSTGRESQL_TEAL_URL --app staffplan-redux --confirm staffplan-redux`
  1. `bundle exec rake db:migrate db:seed`
  1. run the app!: `foreman start`
