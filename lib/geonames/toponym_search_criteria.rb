#=============================================================================
#
# Copyright 2007 Adam Wisniewski <adamw@tbcn.ca>
# Contributions by Chris Griego
#
# Licensed under the Apache License, Version 2.0 (the "License"); you may not
# use this file except in compliance with the License. You may obtain a copy of
# the License at
#
#  http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
# WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
# License for the specific language governing permissions and limitations under
# the License.
#
#=============================================================================

module Geonames
  class ToponymSearchCriteria
    attr_accessor :q, :country_code, :name, :name_equals,
                  :name_starts_with, :tag, :language, :style,
                  :feature_class, :feature_codes, :admin_code_1,
                  :max_rows, :start_row, :is_name_required,
                  :north, :west, :south, :east

    def initialize(params={})
      params.each do |attr, value|
        self.public_send("#{attr}=", value)
      end if params
    end

  end
end
