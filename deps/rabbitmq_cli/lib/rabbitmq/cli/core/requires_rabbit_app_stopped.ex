## This Source Code Form is subject to the terms of the Mozilla Public
## License, v. 2.0. If a copy of the MPL was not distributed with this
## file, You can obtain one at https://mozilla.org/MPL/2.0/.
##
## Copyright (c) 2007-2022 VMware, Inc. or its affiliates.  All rights reserved.

# Should be used by commands that require rabbit app to be stopped
# but need no other execution environment validators.
defmodule RabbitMQ.CLI.Core.RequiresRabbitAppStopped do
  defmacro __using__(_) do
    quote do
      def validate_execution_environment(args, opts) do
        RabbitMQ.CLI.Core.Validators.rabbit_is_not_running(args, opts)
      end
    end
  end
end
