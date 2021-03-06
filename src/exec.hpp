#include "stdafx.h"
#include <string>
#include <iostream>
#include <stdio.h>

using namespace std;

namespace gui {
  std::string exec(const char* cmd) {
      FILE* pipe = _popen(cmd, "r");
      if (!pipe) return "ERROR";
      char buffer[128];
      std::string result = "";
      while (!feof(pipe)) {
          if (fgets(buffer, 128, pipe) != NULL)
              result += buffer;
      }
      _pclose(pipe);
      return result;
  }
} /* gui */
