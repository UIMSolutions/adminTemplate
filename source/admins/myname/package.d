module admins.myname;

mixin(ImportPhobos!());

// Dub
public import vibe.d;

// UIM
public {
  import uim.core;
  import uim.bootstrap;
  import uim.html;
  import uim.oop;
  import uim.models;
  import uim.apps;
  /* import uim.web; */
  import uim.admin;
}

public {
  import web.controls;
}

public {
  import langs.javascript;
}

public { // admin-myname libraries
  import admins.myname.controllers;
  import admins.myname.helpers;
  import admins.myname.routes;
  import admins.myname.tests;
  import admins.myname.views;
}

@safe:
static this() { // Create and init app
  auto myAdmin = new class DAdmin {
    override void initialize(Json configSettings = Json(null)) {
      super.initialize(configSettings);
    }
  }
}