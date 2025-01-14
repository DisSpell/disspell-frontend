{ pkgs, lib, config, inputs, ... }:

{
  # https://devenv.sh/basics/
  # env.GREET = "devenv";

  # https://devenv.sh/packages/
  packages = with pkgs; [ 
    git
    ruby_3_4
    yarn
    rufo
    libyaml
  ];

  languages = {
    ruby = {
      enable = true;
      #package = pkgs.ruby_3_4;
      bundler.enable = true;
      version = "3.4.1";
    };
  };

  # https://devenv.sh/languages/
  # languages.rust.enable = true;

  # https://devenv.sh/processes/
  # processes.cargo-watch.exec = "cargo-watch";

  # https://devenv.sh/services/
  services = {
    postgres = {
      enable = true;
      initialDatabases = [{
        user = "doom";
        pass = "123456";
        name = "video_search_frontend_development";
      }];
    };
    elasticsearch = {
      enable = true;
    };
  };

  # https://devenv.sh/scripts/
  scripts.hello.exec = ''
    echo hello from $GREET
  '';

  enterShell = ''
    git --version
    ruby --version
    bundle
  '';

  # https://devenv.sh/tasks/
  # tasks = {
  #   "myproj:setup".exec = "mytool build";
  #   "devenv:enterShell".after = [ "myproj:setup" ];
  # };

  # https://devenv.sh/tests/
  enterTest = ''
    echo "Running tests"
    git --version | grep --color=auto "${pkgs.git.version}"
  '';

  # https://devenv.sh/pre-commit-hooks/
  # pre-commit.hooks.shellcheck.enable = true;

  # See full reference at https://devenv.sh/reference/options/

  processes = {
    rails.exec = "bundle exec rails server";
    tailwind.exec = "tailwindcss --watch";
  };
}
