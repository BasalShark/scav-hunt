// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import ChallengeSortingController from "./challenge_sorting_controller"
application.register("challenge-sorting", ChallengeSortingController)

import ChallengeUpdatesController from "./challenge_updates_controller"
application.register("challenge-updates", ChallengeUpdatesController)

import GroupPermissionsController from "./group_permissions_controller"
application.register("group-permissions", GroupPermissionsController)

import GroupUpdatesController from "./group_updates_controller"
application.register("group-updates", GroupUpdatesController)

import ScoreboardController from "./scoreboard_controller"
application.register("scoreboard", ScoreboardController)

import ScoringController from "./scoring_controller"
application.register("scoring", ScoringController)
