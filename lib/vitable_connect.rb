# frozen_string_literal: true

# Compatibility shim: the pre-1.0 gem (Stainless-generated) was loaded with
# `require "vitable_connect"`. The Fern-generated entrypoint is
# "VitableConnect"; keep the old require path working across the migration.
require_relative "VitableConnect"
