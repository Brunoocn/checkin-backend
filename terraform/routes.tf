locals {
  routes = {
    # Auth
    "auth_login" = "POST /auth/login"

    # Companies
    "companies_create"  = "POST /companies"
    "companies_list"    = "GET /companies"
    "companies_get"     = "GET /companies/{id}"
    "companies_update"  = "PATCH /companies/{id}"
    "companies_delete"  = "DELETE /companies/{id}"

    # Users
    "users_create" = "POST /users"
    "users_list"   = "GET /users"
    "users_get"    = "GET /users/{id}"
    "users_update" = "PATCH /users/{id}"
    "users_delete" = "DELETE /users/{id}"

    # Time Records
    "time_records_punch"       = "POST /time-records/punch"
    "time_records_me"          = "GET /time-records/me"
    "time_records_me_date"     = "GET /time-records/me/{date}"
    "time_records_list"        = "GET /time-records"
    "time_records_create"      = "POST /time-records"
    "time_records_get"         = "GET /time-records/{id}"
    "time_records_clock_out"   = "PATCH /time-records/{id}/clock-out"
    "time_records_add_break"   = "POST /time-records/{id}/breaks"
    "time_records_edit_break"  = "PATCH /time-records/{id}/breaks/{breakId}"

    # Work Schedules
    "work_schedules_list"   = "GET /work-schedules"
    "work_schedules_upsert" = "PUT /work-schedules"
  }
}

resource "aws_apigatewayv2_route" "routes" {
  for_each = local.routes

  api_id    = aws_apigatewayv2_api.api.id
  route_key = each.value
  target    = "integrations/${aws_apigatewayv2_integration.backend.id}"
}
