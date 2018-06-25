uv = require "uv"

import makeAdaptedSync from "novacbn/luvit-extras/utils"

-- ::chdir(string directory) -> void
-- Changes the current working directory of the process
-- export
export chdir = makeAdaptedSync(uv.chdir)