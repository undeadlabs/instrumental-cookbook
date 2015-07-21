name             "instrumental"
maintainer       "Jamie Winsor"
maintainer_email "jamie@undeadlabs.com"
license          "MIT"
description      "Installs and configures components of instrumental (instrumentalapp.com)"
long_description "Installs and configures components of instrumental (instrumentalapp.com)"
version          "0.3.1"

supports "ubuntu"

depends "runit"
depends "validation", ">= 0.2.0"

grouping "instrumental",
  title: "Instrumental"
attribute "instrumental/enabled",
  required: "required",
  type: "boolean",
  recipes: [
    "instrumental::tools"
  ]

grouping "instrumental/tools",
  title: "Instrumental Tools"
attribute "instrumental/tools/user",
  required: "required",
  default: "instrumental",
  recipes: [
    "instrumental::tools"
  ]
attribute "instrumental/tools/group",
  required: "required",
  default: "instrumental",
  recipes: [
    "instrumental::tools"
  ]
attribute "instrumental/tools/hostname",
  calculated: true,
  recipes: [
    "instrumental::tools"
  ]
