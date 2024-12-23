{
  actioncable = {
    dependencies = ["actionpack" "activesupport" "nio4r" "websocket-driver" "zeitwerk"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "046k9cnw8vqlf4q4i2aywr5rf02k2081238z2rf3vada3ijshyvq";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "7.1.3.4";
  };
  actionmailbox = {
    dependencies = ["actionpack" "activejob" "activerecord" "activestorage" "activesupport" "mail" "net-imap" "net-pop" "net-smtp"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1l6ahdd20zimpq8crfw9ng8w288giv3daklbw6df95s5lhck1zd3";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "7.1.3.4";
  };
  actionmailer = {
    dependencies = ["actionpack" "actionview" "activejob" "activesupport" "mail" "net-imap" "net-pop" "net-smtp" "rails-dom-testing"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0l835a50h95wlzcy76c2vg54ix3i55kqmnrmz67b11q5fjb6068z";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "7.1.3.4";
  };
  actionpack = {
    dependencies = ["actionview" "activesupport" "nokogiri" "racc" "rack" "rack-session" "rack-test" "rails-dom-testing" "rails-html-sanitizer"];
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1lpd0lvn6abcq5k8g0qw8kmzx6igirlqxvd1hhwmr5vaxhdwgbyw";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "7.1.3.4";
  };
  actiontext = {
    dependencies = ["actionpack" "activerecord" "activestorage" "activesupport" "globalid" "nokogiri"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "115p772dc19qvywyz9pgzh1fb3g2457hhh96shcrijd3jnp4v5l4";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "7.1.3.4";
  };
  actionview = {
    dependencies = ["activesupport" "builder" "erubi" "rails-dom-testing" "rails-html-sanitizer"];
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0nv1ifjhm59abc52k2hwazl38r9cc4bkfgdsl00f24gc5ljgbz21";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "7.1.3.4";
  };
  activejob = {
    dependencies = ["activesupport" "globalid"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0qhg0izdckgyqmrsgigh1vkqg8ccrkdjhf36k9gxcbgvzpqfx2iz";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "7.1.3.4";
  };
  activemodel = {
    dependencies = ["activesupport"];
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0wmdw440l4h75zk6c4ynbnv21bj26dh8kb1kwikqkjnzfvm3ij7l";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "7.1.3.4";
  };
  activerecord = {
    dependencies = ["activemodel" "activesupport" "timeout"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1wihj9xhr7yj10hh8fqw6ralanbwlisncbam8pa92czjssjfqkkq";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "7.1.3.4";
  };
  activestorage = {
    dependencies = ["actionpack" "activejob" "activerecord" "activesupport" "marcel"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0bhardfnmyynd04si8989g5yw5fnj4f2a5cs1945w43ylyh0w0pj";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "7.1.3.4";
  };
  activesupport = {
    dependencies = ["base64" "bigdecimal" "concurrent-ruby" "connection_pool" "drb" "i18n" "minitest" "mutex_m" "tzinfo"];
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0283wk1zxb76lg79dk501kcf5xy9h25qiw15m86s4nrfv11vqns5";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "7.1.3.4";
  };
  addressable = {
    dependencies = ["public_suffix"];
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0irbdwkkjwzajq1ip6ba46q49sxnrl2cw7ddkdhsfhb6aprnm3vr";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.8.6";
  };
  ahoy_matey = {
    dependencies = ["activesupport" "device_detector" "safely_block"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "10bsmr6y01hlwnd08p7c1x6ggg5dxagzsg8j8ab2447pg9cdm89q";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "5.1.0";
  };
  base64 = {
    groups = ["default" "development" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "01qml0yilb9basf7is2614skjp8384h2pycfx86cr8023arfj98g";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.2.0";
  };
  bcrypt = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "16a0g2q40biv93i1hch3gw8rbmhp77qnnifj1k0a6m7dng3zh444";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.1.20";
  };
  bcrypt_pbkdf = {
    groups = ["default" "development" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "04rb3rp9bdxn1y3qiflfpj7ccwb8ghrfbydh5vfz1l9px3fpg41g";
      target = "ruby";
      type = "gem";
    };
    targets = [{
      remotes = ["https://rubygems.org"];
      sha256 = "1b9097j3anxz07jq8nklahvm6mqlkf1w3sc3n992bz4mizf4hmd8";
      target = "x86_64-darwin";
      targetCPU = "x86_64";
      targetOS = "darwin";
      type = "gem";
    } {
      remotes = ["https://rubygems.org"];
      sha256 = "1vy7wh7c74226yr4xw7vbsjnwbg6grphz0bd11iv70m1fa1lcnpk";
      target = "arm64-darwin";
      targetCPU = "arm64";
      targetOS = "darwin";
      type = "gem";
    }];
    version = "1.1.1";
  };
  bigdecimal = {
    groups = ["default" "development" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1gi7zqgmqwi5lizggs1jhc3zlwaqayy9rx2ah80sxy24bbnng558";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.1.8";
  };
  bindex = {
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0zmirr3m02p52bzq4xgksq4pn8j641rx5d4czk68pv9rqnfwq7kv";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.8.1";
  };
  bootsnap = {
    dependencies = ["msgpack"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1srlq3gqirzdkhv12ljpnp5cb0f8jfrl3n8xs9iivyz2c7khvdyp";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.18.3";
  };
  builder = {
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0pw3r2lyagsxkm71bf44v5b74f7l9r7di22brbyji9fwz791hya9";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.3.0";
  };
  capybara = {
    dependencies = ["addressable" "matrix" "mini_mime" "nokogiri" "rack" "rack-test" "regexp_parser" "xpath"];
    groups = ["test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1vxfah83j6zpw3v5hic0j70h519nvmix2hbszmjwm8cfawhagns2";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.40.0";
  };
  chartkick = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "14w8jcwwddvlrgfnx0anvrs5rz3zhadca9myv910rzsi9b9wylpy";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "5.0.7";
  };
  concurrent-ruby = {
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1kmhr3pz2nmhnq0nqlicqfwfmkzkcl835g7sw1gjjhjvhz8g2sf3";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.3.1";
  };
  connection_pool = {
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1x32mcpm2cl5492kd6lbjbaf17qsssmpx9kdyr7z1wcif2cwyh0g";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.4.1";
  };
  crack = {
    dependencies = ["bigdecimal" "rexml"];
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0jaa7is4fw1cxigm8vlyhg05bw4nqy4f91zjqxk7pp4c8bdyyfn8";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.0.0";
  };
  crass = {
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0pfl5c0pyqaparxaqxi6s4gfl21bdldwiawrc0aknyvflli60lfw";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.0.6";
  };
  date = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "149jknsq999gnhy865n33fkk22s0r447k76x9pmcnnwldfv2q7wp";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.3.4";
  };
  debug = {
    dependencies = ["irb" "reline"];
    groups = ["development" "test"];
    platforms = [{
      engine = "maglev";
    } {
      engine = "mingw";
    } {
      engine = "mswin";
    } {
      engine = "mswin64";
    } {
      engine = "ruby";
    }];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1z77qyzcmvz3ciny6cb24s79a243jqkybqk30b310yichp02dq28";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.9.2";
  };
  device_detector = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "174awyqb7lfh1n9l0vf71mjnd9924cb4ixwf46rnxmjpqnsrvx9p";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.1.2";
  };
  dotenv = {
    groups = ["default" "development" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1n0pi8x8ql5h1mijvm8lgn6bhq4xjb5a500p5r1krq4s6j9lg565";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.8.1";
  };
  drb = {
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0h5kbj9hvg5hb3c7l425zpds0vb42phvln2knab8nmazg2zp5m79";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.2.1";
  };
  ed25519 = {
    groups = ["default" "development" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0zb2dr2ihb1qiknn5iaj1ha1w9p7lj9yq5waasndlfadz225ajji";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.3.0";
  };
  elastic-transport = {
    dependencies = ["faraday" "multi_json"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1m4ym3q3x5dsbc8741lb6sspb56z8bbz4v9l8p8v99md3qdjk0fa";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "8.3.2";
  };
  elasticsearch = {
    dependencies = ["elastic-transport" "elasticsearch-api"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1g9viiplwywvh1nghy44ixy9i33p4336say0ac0wcrq18xgkhwy7";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "8.14.0";
  };
  elasticsearch-api = {
    dependencies = ["multi_json"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0wsqx9f67jinygifp4br7nxjp987k8i8izscpqpx3b5n9nd86jsm";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "8.14.0";
  };
  elasticsearch-model = {
    dependencies = ["activesupport" "elasticsearch" "hashie"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "04frz922xsjkwcx88niabbyrh9yqvfimxn1v2l7rwb6h5bzf1gsw";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "8.0.0";
  };
  elasticsearch-rails = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1ca27xcrmbx5vfqn051dyb9y1r2ypy7y1nm1z45a1fvpfxgnawj2";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "8.0.0";
  };
  erubi = {
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "08s75vs9cxlc4r1q2bjg4br8g9wc5lc5x5vl0vv4zq5ivxsdpgi7";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.12.0";
  };
  faraday = {
    dependencies = ["faraday-net_http"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "12hnbf4n8ckscs841l7hra1s4l4jwjljfzymxlqxq2c5lamciywg";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.9.1";
  };
  faraday-net_http = {
    dependencies = ["net-http"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "17w51yk4rrm9rpnbc3x509s619kba0jga3qrj4b17l30950vw9qn";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.1.0";
  };
  friendly_id = {
    dependencies = ["activerecord"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "01v2q0cyqn8za374ygfxzpa5qf4j8yk7ilz6zrv3457wkfwg4670";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "5.5.1";
  };
  globalid = {
    dependencies = ["activesupport"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1sbw6b66r7cwdx3jhs46s4lr991969hvigkjpbdl7y3i31qpdgvh";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.2.1";
  };
  groupdate = {
    dependencies = ["activesupport"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0m7cbahlhd7akkizrn2rjp4g6y6wkg8s3dqas6rgjj1apx2hd535";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "6.4.0";
  };
  hashdiff = {
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1jf9dxgjz6z7fvymyz2acyvn9iyvwkn6d9sk7y4fxwbmfc75yimm";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.1.0";
  };
  hashie = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1nh3arcrbz1rc1cr59qm53sdhqm137b258y8rcb4cvd3y98lwv4x";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "5.0.0";
  };
  i18n = {
    dependencies = ["concurrent-ruby"];
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1ffix518y7976qih9k1lgnc17i3v6yrlh0a3mckpxdb4wc2vrp16";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.14.5";
  };
  importmap-rails = {
    dependencies = ["actionpack" "activesupport" "railties"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "11jmhaqrgj3w7xdxac6cpv4yvhbyarwzm0v9iil9gxq91kkscfg7";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.0.1";
  };
  io-console = {
    groups = ["default" "development" "test"];
    platforms = [{
      engine = "maglev";
    } {
      engine = "mingw";
    } {
      engine = "mswin";
    } {
      engine = "mswin64";
    } {
      engine = "ruby";
    }];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "08d2lx42pa8jjav0lcjbzfzmw61b8imxr9041pva8xzqabrczp7h";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.7.2";
  };
  irb = {
    dependencies = ["rdoc" "reline"];
    groups = ["default" "development" "test"];
    platforms = [{
      engine = "maglev";
    } {
      engine = "mingw";
    } {
      engine = "mswin";
    } {
      engine = "mswin64";
    } {
      engine = "ruby";
    }];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "14pji5w708d6v63m3yvyfx1d9gg0mi5x1a2czxf6259zncq2ymda";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.13.1";
  };
  jbuilder = {
    dependencies = ["actionview" "activesupport"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1li6hwkcz1z7g6wvhvw160bb1jkzm2i928gspfmir45q80rbxsa7";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.12.0";
  };
  kamal = {
    dependencies = ["activesupport" "base64" "bcrypt_pbkdf" "concurrent-ruby" "dotenv" "ed25519" "net-ssh" "sshkit" "thor" "zeitwerk"];
    groups = ["development" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0s37i3rrmyv1f9qmb2wxalc4wwal7psdbbd4n8ymxz22fkbhwgxa";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.8.0";
  };
  kaminari = {
    dependencies = ["activesupport" "kaminari-actionview" "kaminari-activerecord" "kaminari-core"];
    groups = ["default"];
    platforms = [];
    source = {
      fetchSubmodules = false;
      rev = "90715e7251346895d2c66eb3043433a635519074";
      sha256 = "0f9zdwjapzhv9hb0bgrm77j48wb9pjnly5pigmdrq4vikxmj1j2q";
      type = "git";
      url = "https://github.com/kaminari/kaminari.git";
    };
    targets = [];
    version = "1.2.2";
  };
  kaminari-actionview = {
    dependencies = ["actionview" "kaminari-core"];
    groups = ["default"];
    platforms = [];
    source = {
      fetchSubmodules = false;
      rev = "90715e7251346895d2c66eb3043433a635519074";
      sha256 = "0f9zdwjapzhv9hb0bgrm77j48wb9pjnly5pigmdrq4vikxmj1j2q";
      type = "git";
      url = "https://github.com/kaminari/kaminari.git";
    };
    targets = [];
    version = "1.2.2";
  };
  kaminari-activerecord = {
    dependencies = ["activerecord" "kaminari-core"];
    groups = ["default"];
    platforms = [];
    source = {
      fetchSubmodules = false;
      rev = "90715e7251346895d2c66eb3043433a635519074";
      sha256 = "0f9zdwjapzhv9hb0bgrm77j48wb9pjnly5pigmdrq4vikxmj1j2q";
      type = "git";
      url = "https://github.com/kaminari/kaminari.git";
    };
    targets = [];
    version = "1.2.2";
  };
  kaminari-core = {
    groups = ["default"];
    platforms = [];
    source = {
      fetchSubmodules = false;
      rev = "90715e7251346895d2c66eb3043433a635519074";
      sha256 = "0f9zdwjapzhv9hb0bgrm77j48wb9pjnly5pigmdrq4vikxmj1j2q";
      type = "git";
      url = "https://github.com/kaminari/kaminari.git";
    };
    targets = [];
    version = "1.2.2";
  };
  language_server-protocol = {
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0gvb1j8xsqxms9mww01rmdl78zkd72zgxaap56bhv8j45z05hp1x";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.17.0.3";
  };
  loofah = {
    dependencies = ["crass" "nokogiri"];
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1zkjqf37v2d7s11176cb35cl83wls5gm3adnfkn2zcc61h3nxmqh";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.22.0";
  };
  mail = {
    dependencies = ["mini_mime" "net-imap" "net-pop" "net-smtp"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1bf9pysw1jfgynv692hhaycfxa8ckay1gjw5hz3madrbrynryfzc";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.8.1";
  };
  marcel = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "190n2mk8m1l708kr88fh6mip9sdsh339d2s6sgrik3sbnvz4jmhd";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.0.4";
  };
  matrix = {
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1h2cgkpzkh3dd0flnnwfq6f3nl2b1zff9lvqz8xs853ssv5kq23i";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.4.2";
  };
  meta-tags = {
    dependencies = ["actionpack"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1yqw2xc72sjsd275bn7h8xps158j353ydsn970shqw5j6b6jrang";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.21.0";
  };
  mini_mime = {
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1vycif7pjzkr29mfk4dlqv3disc5dn0va04lkwajlpr1wkibg0c6";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.1.5";
  };
  minitest = {
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1gkslxvkhh44s21rbjvka3zsvfxxrf5pcl6f75rv2vyrzzbgis7i";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "5.23.1";
  };
  msgpack = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1a5adcb7bwan09mqhj3wi9ib52hmdzmqg7q08pggn3adibyn5asr";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.7.2";
  };
  multi_json = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0pb1g1y3dsiahavspyzkdy39j4q377009f6ix0bh1ag4nqw43l0z";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.15.0";
  };
  mutex_m = {
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1ma093ayps1m92q845hmpk0dmadicvifkbf05rpq9pifhin0rvxn";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.2.0";
  };
  net-http = {
    dependencies = ["uri"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "10n2n9aq00ih8v881af88l1zyrqgs5cl3njdw8argjwbl5ggqvm9";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.4.1";
  };
  net-imap = {
    dependencies = ["date" "net-protocol"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "18yclv06n0cy8jqmi11sd1dl8nasc5n5r1mhan2v51j7jd3z58v3";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.4.12";
  };
  net-pop = {
    dependencies = ["net-protocol"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1wyz41jd4zpjn0v1xsf9j778qx1vfrl24yc20cpmph8k42c4x2w4";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.1.2";
  };
  net-protocol = {
    dependencies = ["timeout"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1a32l4x73hz200cm587bc29q8q9az278syw3x6fkc9d1lv5y0wxa";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.2.2";
  };
  net-scp = {
    dependencies = ["net-ssh"];
    groups = ["default" "development" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1si2nq9l6jy5n2zw1q59a5gaji7v9vhy8qx08h4fg368906ysbdk";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "4.0.0";
  };
  net-sftp = {
    dependencies = ["net-ssh"];
    groups = ["default" "development" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0r33aa2d61hv1psm0l0mm6ik3ycsnq8symv7h84kpyf2b7493fv5";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "4.0.0";
  };
  net-smtp = {
    dependencies = ["net-protocol"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0amlhz8fhnjfmsiqcjajip57ici2xhw089x7zqyhpk51drg43h2z";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.5.0";
  };
  net-ssh = {
    groups = ["default" "development" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0sqbq5aks9xxnldbd2hy20ypnd59zcra98ql0r7jjc26s5rgc18n";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "7.2.3";
  };
  nio4r = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "017nbw87dpr4wyk81cgj8kxkxqgsgblrkxnmmadc77cg9gflrfal";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.7.3";
  };
  nokogiri = {
    dependencies = ["racc"];
    groups = ["default" "development" "test"];
    platforms = [];
    source = null;
    targets = [{
      remotes = ["https://rubygems.org"];
      sha256 = "0532vzx4j3jvi4k66avylpfsfw5r7200ppimmmsrzd7d61sh63cm";
      target = "arm64-darwin";
      targetCPU = "arm64";
      targetOS = "darwin";
      type = "gem";
    } {
      remotes = ["https://rubygems.org"];
      sha256 = "0x5880zc9p43azrs62hzilg0qwkx8i8vbs0dl4mgnkb67vx483xg";
      target = "aarch64-linux";
      targetCPU = "aarch64";
      targetOS = "linux";
      type = "gem";
    } {
      remotes = ["https://rubygems.org"];
      sha256 = "0y9jlqb4431i3wcdh0i4lsfi45j7rhdbghv7vw9kshwc6x7gbdbi";
      target = "x86_64-darwin";
      targetCPU = "x86_64";
      targetOS = "darwin";
      type = "gem";
    } {
      remotes = ["https://rubygems.org"];
      sha256 = "15vaia0l9b3aqjcqjqy5qiv9pfwiazrzcyl3yz9bwrh0hzd3i8hc";
      target = "x86_64-linux";
      targetCPU = "x86_64";
      targetOS = "linux";
      type = "gem";
    } {
      remotes = ["https://rubygems.org"];
      sha256 = "1i5kmpy1zmh0qisd46vapnvgsinpdb8djsx15m4h8rpcn6d3ip5b";
      target = "x86-linux";
      targetCPU = "x86";
      targetOS = "linux";
      type = "gem";
    } {
      remotes = ["https://rubygems.org"];
      sha256 = "1v1g90dfmcrsl38ic3s20m9rksgh08lshcky7g1sa2b4n9bj7p13";
      target = "arm-linux";
      targetCPU = "arm";
      targetOS = "linux";
      type = "gem";
    }];
    version = "1.16.5";
  };
  pg = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "071b55bhsz7mivlnp2kv0a11msnl7xg5awvk8mlflpl270javhsb";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.5.6";
  };
  pg_search = {
    dependencies = ["activerecord" "activesupport"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "18q0prwc6iwqb86agh2fwmfi07kf0bqi9qk96130c6fqf892lbv8";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.3.6";
  };
  prism = {
    groups = ["development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0pgxgng905jbhp0pr54w4w2pr4nqcq80ijj48204bj4x4nigj8ji";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.24.0";
  };
  psych = {
    dependencies = ["stringio"];
    groups = ["default" "development" "test"];
    platforms = [{
      engine = "maglev";
    } {
      engine = "mingw";
    } {
      engine = "mswin";
    } {
      engine = "mswin64";
    } {
      engine = "ruby";
    }];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0s5383m6004q76xm3lb732bp4sjzb6mxb6rbgn129gy2izsj4wrk";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "5.1.2";
  };
  public_suffix = {
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "14y4vzjwf5gp0mqgs880kis0k7n2biq8i6ci6q2n315kichl1hvj";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "5.0.5";
  };
  puma = {
    dependencies = ["nio4r"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0i2vaww6qcazj0ywva1plmjnj6rk23b01szswc5jhcq7s2cikd1y";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "6.4.2";
  };
  racc = {
    groups = ["default" "development" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "021s7maw0c4d9a6s07vbmllrzqsj2sgmrwimlh8ffkvwqdjrld09";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.8.0";
  };
  rack = {
    groups = ["default" "development" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "137r9zqwh0dan6s0fw91wk6iip9alh44bqgbhn80sxk0h5kp7150";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.0.11";
  };
  rack-session = {
    dependencies = ["rack"];
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "10afdpmy9kh0qva96slcyc59j4gkk9av8ilh58cnj0qq7q3b416v";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.0.0";
  };
  rack-test = {
    dependencies = ["rack"];
    groups = ["default" "development" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1ysx29gk9k14a14zsp5a8czys140wacvp91fja8xcja0j1hzqq8c";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.1.0";
  };
  rackup = {
    dependencies = ["rack" "webrick"];
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0kbcka30g681cqasw47pq93fxjscq7yvs5zf8lp3740rb158ijvf";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.1.0";
  };
  rails = {
    dependencies = ["actioncable" "actionmailbox" "actionmailer" "actionpack" "actiontext" "actionview" "activejob" "activemodel" "activerecord" "activestorage" "activesupport" "railties"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1bd6b970kwz9l23ffwg77n424gyhqqm31f493vf43rjfyyfwlzrs";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "7.1.3.4";
  };
  rails-dom-testing = {
    dependencies = ["activesupport" "minitest" "nokogiri"];
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0fx9dx1ag0s1lr6lfr34lbx5i1bvn3bhyf3w3mx6h7yz90p725g5";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.2.0";
  };
  rails-html-sanitizer = {
    dependencies = ["loofah" "nokogiri"];
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1pm4z853nyz1bhhqr7fzl44alnx4bjachcr6rh6qjj375sfz3sc6";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.6.0";
  };
  railties = {
    dependencies = ["actionpack" "activesupport" "irb" "rackup" "rake" "thor" "zeitwerk"];
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1z0slb2dlwrwgqijbk37hl4r9bh4h8vzcyswz6a9srl8lzrljq3c";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "7.1.3.4";
  };
  rake = {
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "17850wcwkgi30p7yqh60960ypn7yibacjjha0av78zaxwvd3ijs6";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "13.2.1";
  };
  rdoc = {
    dependencies = ["psych"];
    groups = ["default" "development" "test"];
    platforms = [{
      engine = "maglev";
    } {
      engine = "mingw";
    } {
      engine = "mswin";
    } {
      engine = "mswin64";
    } {
      engine = "ruby";
    }];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0ygk2zk0ky3d88v3ll7qh6xqvbvw5jin0hqdi1xkv1dhaw7myzdi";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "6.7.0";
  };
  redis = {
    dependencies = ["redis-client"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1d1ng78dwbzgfg1sljf9bnx2km5y3p3jc42a9npwcrmiard9fsrk";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "5.2.0";
  };
  redis-client = {
    dependencies = ["connection_pool"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1h5cgdv40zk0ph1nl64ayhn6anzwy6mbxyi7fci9n404ryvy9zii";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.22.2";
  };
  regexp_parser = {
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0ik40vcv7mqigsfpqpca36hpmnx0536xa825ai5qlkv3mmkyf9ss";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.9.2";
  };
  reline = {
    dependencies = ["io-console"];
    groups = ["default" "development" "test"];
    platforms = [{
      engine = "maglev";
    } {
      engine = "mingw";
    } {
      engine = "mswin";
    } {
      engine = "mswin64";
    } {
      engine = "ruby";
    }];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "00paka9wvnl1va70vha28pk8n17sdhp7v7c1hrbh6xv6c5vslzs6";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.5.8";
  };
  rexml = {
    dependencies = ["strscan"];
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0d8ivcirrrxpkpjc1c835wknc9s2fl54xpw08s177yfrh5ish209";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.2.8";
  };
  ruby-lsp = {
    dependencies = ["language_server-protocol" "prism" "sorbet-runtime"];
    groups = ["development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1k4makdihhr9srd2jy2xwwv7liz1zmhj3f56z36balgzlry37zgf";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.16.6";
  };
  rubyzip = {
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0grps9197qyxakbpw02pda59v45lfgbgiyw48i0mq9f2bn9y6mrz";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.3.2";
  };
  safely_block = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1as1sjb07frp434yxap8227m2gpac6hf151fqkq1vi5paql2qf4q";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.4.0";
  };
  selenium-webdriver = {
    dependencies = ["base64" "rexml" "rubyzip" "websocket"];
    groups = ["test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0qrjr30qs01b27km6ipzc2zasdlzhdgri5q7qrb53z1j8l0n82y3";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "4.21.1";
  };
  sitemap_generator = {
    dependencies = ["builder"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1wwlp755g72d56nyvazk4i7fqgsjsdik77jvl2z3ciy40fzkr00x";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "6.3.0";
  };
  sorbet-runtime = {
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1ifa65fw5ixh0rambydbrdjy9dmpl3k2xjmrxil4zqyqv3bqrw97";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.5.11415";
  };
  sprockets = {
    dependencies = ["concurrent-ruby" "rack"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "15rzfzd9dca4v0mr0bbhsbwhygl0k9l24iqqlx0fijig5zfi66wm";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "4.2.1";
  };
  sprockets-rails = {
    dependencies = ["actionpack" "activesupport" "sprockets"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "00r01zcv6d6bsj6hxyf412f9apqd25ch0g61mbylf3qdx67ha9lx";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.5.0";
  };
  sshkit = {
    dependencies = ["base64" "net-scp" "net-sftp" "net-ssh"];
    groups = ["default" "development" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0m5vb25gkw30nyd5pkbzalsmp3d29wyxy6wmqny01bq2ss2yzqha";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.23.0";
  };
  stimulus-rails = {
    dependencies = ["railties"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0b2nbj25cqhhklj04bfk0q3532skm4qcak6xki65yq2fssqrl7sd";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.3.3";
  };
  stringio = {
    groups = ["default" "development" "test"];
    platforms = [{
      engine = "maglev";
    } {
      engine = "mingw";
    } {
      engine = "mswin";
    } {
      engine = "mswin64";
    } {
      engine = "ruby";
    }];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "063psvsn1aq6digpznxfranhcpmi0sdv2jhra5g0459sw0x2dxn1";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.1.0";
  };
  strscan = {
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0mamrl7pxacbc79ny5hzmakc9grbjysm3yy6119ppgsg44fsif01";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.1.0";
  };
  tailwindcss-rails = {
    dependencies = ["railties"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1b04rsqd0vc8v4dk4zlqlpzbc23cvmcjy4rlx2f2yh316wj6xrk0";
      target = "ruby";
      type = "gem";
    };
    targets = [{
      remotes = ["https://rubygems.org"];
      sha256 = "141z7l22yzvkmxc5mi0dz4liinavhmrjh7wfkcphhk9jaklxajsn";
      target = "x86_64-darwin";
      targetCPU = "x86_64";
      targetOS = "darwin";
      type = "gem";
    } {
      remotes = ["https://rubygems.org"];
      sha256 = "15vam0z9y5sni84q1q3miicnfl6zwcry1m6frn6386897s63f45a";
      target = "x86_64-linux";
      targetCPU = "x86_64";
      targetOS = "linux";
      type = "gem";
    } {
      remotes = ["https://rubygems.org"];
      sha256 = "1bg8jzpihp2h7042z5chvv34dkrhzqrbb5vmxnjixif1jgxc91in";
      target = "aarch64-linux";
      targetCPU = "aarch64";
      targetOS = "linux";
      type = "gem";
    } {
      remotes = ["https://rubygems.org"];
      sha256 = "1c6z66fqxjx4prf24vfkicyhimy5k5lfq199wkmsqanpkgad5ymv";
      target = "arm64-darwin";
      targetCPU = "arm64";
      targetOS = "darwin";
      type = "gem";
    } {
      remotes = ["https://rubygems.org"];
      sha256 = "1s1a3amildjv56irk4ff16il84zliqaj53dr3bwwlshxx5543s9h";
      target = "arm-linux";
      targetCPU = "arm";
      targetOS = "linux";
      type = "gem";
    }];
    version = "2.6.1";
  };
  thor = {
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1vq1fjp45az9hfp6fxljhdrkv75cvbab1jfrwcw738pnsiqk8zps";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.3.1";
  };
  timeout = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "16mvvsmx90023wrhf8dxc1lpqh0m8alk65shb7xcya6a9gflw7vg";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.4.1";
  };
  turbo-rails = {
    dependencies = ["actionpack" "activejob" "railties"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0ab2fr50fdzhpjlp78c17xmrd59ab32c55vrjd94wwr4khs7bxyf";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.0.5";
  };
  tzinfo = {
    dependencies = ["concurrent-ruby"];
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "16w2g84dzaf3z13gxyzlzbf748kylk5bdgg3n1ipvkvvqy685bwd";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.0.6";
  };
  uri = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "094gk72ckazf495qc76gk09b5i318d5l9m7bicg2wxlrjcm3qm96";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.13.0";
  };
  web-console = {
    dependencies = ["actionview" "activemodel" "bindex" "railties"];
    groups = ["development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "087y4byl2s3fg0nfhix4s0r25cv1wk7d2j8n5324waza21xg7g77";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "4.2.1";
  };
  webmock = {
    dependencies = ["addressable" "crack" "hashdiff"];
    groups = ["test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "158d2ikjfzw43kgm095klp43ihphk0cv5xjprk44w73xfv03i9qg";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.23.1";
  };
  webrick = {
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "13qm7s0gr2pmfcl7dxrmq38asaza4w0i2n9my4yzs499j731wh8r";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.8.1";
  };
  websocket = {
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1a4zc8d0d91c3xqwapda3j3zgpfwdbj76hkb69xn6qvfkfks9h9c";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.2.10";
  };
  websocket-driver = {
    dependencies = ["websocket-extensions"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1nyh873w4lvahcl8kzbjfca26656d5c6z3md4sbqg5y1gfz0157n";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.7.6";
  };
  websocket-extensions = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0hc2g9qps8lmhibl5baa91b4qx8wqw872rgwagml78ydj8qacsqw";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.1.5";
  };
  xpath = {
    dependencies = ["nokogiri"];
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0bh8lk9hvlpn7vmi6h4hkcwjzvs2y0cmkk3yjjdr8fxvj6fsgzbd";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.2.0";
  };
  zeitwerk = {
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1kr2731z8f6cj23jxh67cdnpkrnnfwbrxj1hfhshls4mp8i8drmj";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.6.15";
  };
}