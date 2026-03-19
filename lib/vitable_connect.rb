# frozen_string_literal: true

# Standard libraries.
# rubocop:disable Lint/RedundantRequireStatement
require "English"
require "base64"
require "cgi"
require "date"
require "erb"
require "etc"
require "json"
require "net/http"
require "openssl"
require "pathname"
require "rbconfig"
require "securerandom"
require "set"
require "stringio"
require "time"
require "uri"
# rubocop:enable Lint/RedundantRequireStatement

# We already ship the preferred sorbet manifests in the package itself.
# `tapioca` currently does not offer us a way to opt out of unnecessary compilation.
if Object.const_defined?(:Tapioca) &&
   caller.chain([$PROGRAM_NAME]).chain(ARGV).any?(/tapioca/) &&
   ARGV.none?(/dsl/)
  return
end

# Gems.
require "connection_pool"

# Package files.
require_relative "vitable_connect/version"
require_relative "vitable_connect/internal/util"
require_relative "vitable_connect/internal/type/converter"
require_relative "vitable_connect/internal/type/unknown"
require_relative "vitable_connect/internal/type/boolean"
require_relative "vitable_connect/internal/type/file_input"
require_relative "vitable_connect/internal/type/enum"
require_relative "vitable_connect/internal/type/union"
require_relative "vitable_connect/internal/type/array_of"
require_relative "vitable_connect/internal/type/hash_of"
require_relative "vitable_connect/internal/type/base_model"
require_relative "vitable_connect/internal/type/base_page"
require_relative "vitable_connect/internal/type/request_parameters"
require_relative "vitable_connect/internal"
require_relative "vitable_connect/request_options"
require_relative "vitable_connect/file_part"
require_relative "vitable_connect/errors"
require_relative "vitable_connect/internal/transport/base_client"
require_relative "vitable_connect/internal/transport/pooled_net_requester"
require_relative "vitable_connect/client"
require_relative "vitable_connect/models/auth_issue_access_token_params"
require_relative "vitable_connect/models/auth_issue_access_token_response"
require_relative "vitable_connect/models/benefit_eligibility_policy"
require_relative "vitable_connect/models/benefit_eligibility_policy_retrieve_params"
require_relative "vitable_connect/models/employee"
require_relative "vitable_connect/models/employee_class"
require_relative "vitable_connect/models/employee_list_enrollments_params"
require_relative "vitable_connect/models/employee_list_enrollments_response"
require_relative "vitable_connect/models/employee_retrieve_params"
require_relative "vitable_connect/models/employee_retrieve_response"
require_relative "vitable_connect/models/employer"
require_relative "vitable_connect/models/employer_create_benefit_eligibility_policy_params"
require_relative "vitable_connect/models/employer_create_params"
require_relative "vitable_connect/models/employer_list_employees_params"
require_relative "vitable_connect/models/employer_list_employees_response"
require_relative "vitable_connect/models/employer_list_params"
require_relative "vitable_connect/models/employer_list_response"
require_relative "vitable_connect/models/employer_response"
require_relative "vitable_connect/models/employer_retrieve_params"
require_relative "vitable_connect/models/employer_submit_census_sync_params"
require_relative "vitable_connect/models/employer_submit_census_sync_response"
require_relative "vitable_connect/models/enrollment"
require_relative "vitable_connect/models/enrollment_retrieve_params"
require_relative "vitable_connect/models/enrollment_retrieve_response"
require_relative "vitable_connect/models/enrollment_status"
require_relative "vitable_connect/models/pagination"
require_relative "vitable_connect/models/type"
require_relative "vitable_connect/models"
require_relative "vitable_connect/resources/auth"
require_relative "vitable_connect/resources/benefit_eligibility_policies"
require_relative "vitable_connect/resources/employees"
require_relative "vitable_connect/resources/employers"
require_relative "vitable_connect/resources/enrollments"
