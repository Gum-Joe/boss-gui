// Web-OS-gui.cpp : main project file.

#include "stdafx.h"
#include <string>
#include "exec.hpp"

using namespace std;
using namespace gui;


int main(int argc, char* argv[])
{
  string strMytestString("Starting Web-OS...");
    cout << strMytestString;
    // Start gui
    const char *run = "electron .";
    gui::exec(run);
    return 0;
}
