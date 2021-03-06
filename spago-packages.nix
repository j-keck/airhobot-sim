# This file was generated by Spago2Nix

{ pkgs ? import <nixpkgs> {} }:

let
  inputs = {

    "aff" = pkgs.stdenv.mkDerivation {
        name = "aff";
        version = "v5.1.2";
        src = pkgs.fetchgit {
          url = "https://github.com/slamdata/purescript-aff.git";
          rev = "78916a9c7e6d203f1d9f441c8eaa257d6475e978";
          sha256 = "1ygjxbm2bqw82sm17szhzz4jihvbg9mszx1ii0n3sj72bnz02avz";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "arraybuffer-types" = pkgs.stdenv.mkDerivation {
        name = "arraybuffer-types";
        version = "v2.0.0";
        src = pkgs.fetchgit {
          url = "https://github.com/purescript-contrib/purescript-arraybuffer-types.git";
          rev = "505aa3de50a1400e5f2fce4a8e7b1a39abaa8fd9";
          sha256 = "059a8n49yhl46l1b1j2qj4ichzq6dzj29ajkfvw88npzj5w2rshy";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "arrays" = pkgs.stdenv.mkDerivation {
        name = "arrays";
        version = "v5.3.1";
        src = pkgs.fetchgit {
          url = "https://github.com/purescript/purescript-arrays.git";
          rev = "463dcacb99455de5e28ac4a3312bb795f293d2d9";
          sha256 = "1z8i4mr30mjsvmw743g0m1yxfgqa9rhbgq7jq3955mg7j80j5r7w";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "bifunctors" = pkgs.stdenv.mkDerivation {
        name = "bifunctors";
        version = "v4.0.0";
        src = pkgs.fetchgit {
          url = "https://github.com/purescript/purescript-bifunctors.git";
          rev = "1062425892b4a1c734ec653dded22546e3063b27";
          sha256 = "1bdra5fbkraglqrrm484vw8h0wwk48kzkn586v4y7fg106q1q386";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "canvas" = pkgs.stdenv.mkDerivation {
        name = "canvas";
        version = "v4.0.0";
        src = pkgs.fetchgit {
          url = "https://github.com/purescript-web/purescript-canvas.git";
          rev = "bbdc02388f2cc612324aa8c1eef7877666bf1bd2";
          sha256 = "0m7a523hr6jn8wg3d1jck1s3bar81gq4ar8bq658sbsysh73n1py";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "console" = pkgs.stdenv.mkDerivation {
        name = "console";
        version = "v4.4.0";
        src = pkgs.fetchgit {
          url = "https://github.com/purescript/purescript-console.git";
          rev = "9b48f83997168b94418d64d9e7b5c1763b30bdab";
          sha256 = "1w9k2g242lvyv4npb5rqfbdq1ngh7s7v12zarxn8yxgq15palh3m";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "const" = pkgs.stdenv.mkDerivation {
        name = "const";
        version = "v4.1.0";
        src = pkgs.fetchgit {
          url = "https://github.com/purescript/purescript-const.git";
          rev = "bc5db27b0ed3947fa5e2074ccbab01236eec3fa4";
          sha256 = "0qbd2aisax52yw6sybdhs7na943cbsd6mylhhgsamrf7hzh6v51p";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "contravariant" = pkgs.stdenv.mkDerivation {
        name = "contravariant";
        version = "v4.0.1";
        src = pkgs.fetchgit {
          url = "https://github.com/purescript/purescript-contravariant.git";
          rev = "cb69db0253c2e2ed3fef784dad58f3418a8ee834";
          sha256 = "0dd17lwlybpz4i54cxnqdgy38rjlbw9p7bw1r43is6z3kdc8983a";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "control" = pkgs.stdenv.mkDerivation {
        name = "control";
        version = "v4.2.0";
        src = pkgs.fetchgit {
          url = "https://github.com/purescript/purescript-control.git";
          rev = "05d40c5855a0eda3bc396a3d815eaf213a0534e6";
          sha256 = "1nm45khn2dvlyv059nzpz1w7d3nfsvq45hnb2qllrbzyv7rlxmi8";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "datetime" = pkgs.stdenv.mkDerivation {
        name = "datetime";
        version = "v4.1.1";
        src = pkgs.fetchgit {
          url = "https://github.com/purescript/purescript-datetime.git";
          rev = "9e76abe96f45a68eb0bb23d0afd56031a8070bee";
          sha256 = "06ghfvbvd5sd0q014qi8j8glk2g2j9f8z8cwq2318kllp92gz07q";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "debug" = pkgs.stdenv.mkDerivation {
        name = "debug";
        version = "v4.0.0";
        src = pkgs.fetchgit {
          url = "https://github.com/garyb/purescript-debug.git";
          rev = "b1484b8aac685dc83c1d938d71407495ae2a2259";
          sha256 = "0gwjj80akys0h111i74n429fmny992gx0r4rk1n98gqlqm5cmi21";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "distributive" = pkgs.stdenv.mkDerivation {
        name = "distributive";
        version = "v4.0.0";
        src = pkgs.fetchgit {
          url = "https://github.com/purescript/purescript-distributive.git";
          rev = "3a43c0690883816e9ebeac510698423cfff5c174";
          sha256 = "0zbn0yq1vv7fbbf1lncg80irz0vg7wnw9b9wrzxhdzpbkw4jinsl";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "effect" = pkgs.stdenv.mkDerivation {
        name = "effect";
        version = "v2.0.1";
        src = pkgs.fetchgit {
          url = "https://github.com/purescript/purescript-effect.git";
          rev = "6caa8e1e162a21eed025613c2c19194b996ef779";
          sha256 = "1vqw5wrdxzh1ww6z7271xr4kg4mx0r3k3mwg18dmgmzj11wbn2wh";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "either" = pkgs.stdenv.mkDerivation {
        name = "either";
        version = "v4.1.1";
        src = pkgs.fetchgit {
          url = "https://github.com/purescript/purescript-either.git";
          rev = "8b4b38a729f8e88750b03e5c7baf2b3863ce4742";
          sha256 = "12j7vvjly0bgxidxmb2pflx0zy7x425dnvxk2y1pm66n0hbsq7ns";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "enums" = pkgs.stdenv.mkDerivation {
        name = "enums";
        version = "v4.0.1";
        src = pkgs.fetchgit {
          url = "https://github.com/purescript/purescript-enums.git";
          rev = "19800105b556798ea5650f8a01bfe5ea17cfc6eb";
          sha256 = "0qq0pgmq497nfml0y8xb2qdpga5xqp9sqq4ilv1rpyhg1v7nzb6v";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "exceptions" = pkgs.stdenv.mkDerivation {
        name = "exceptions";
        version = "v4.0.0";
        src = pkgs.fetchgit {
          url = "https://github.com/purescript/purescript-exceptions.git";
          rev = "9012eb08749e9ccd5da45bdece5d576e5fc0b0db";
          sha256 = "17s0rg9k4phivhx9j3l2vqqfdhk61gpj1xfqy8w6zj3rnxj0b2cv";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "foldable-traversable" = pkgs.stdenv.mkDerivation {
        name = "foldable-traversable";
        version = "v4.1.1";
        src = pkgs.fetchgit {
          url = "https://github.com/purescript/purescript-foldable-traversable.git";
          rev = "29d5b873cc86f17e0082d777629819a96bdbc7a1";
          sha256 = "03x89xcmphckzjlp4chc7swrpw347ll5bvr2yp7x9v2jqw2jlyi1";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "foreign" = pkgs.stdenv.mkDerivation {
        name = "foreign";
        version = "v5.0.0";
        src = pkgs.fetchgit {
          url = "https://github.com/purescript/purescript-foreign.git";
          rev = "3b8f3ae608db339ed5cff35d2017a07efb905b4d";
          sha256 = "15mz2s4f8crkd721z4df2aag4s0wil6fs07cpcmi7dpnkn7a4nab";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "foreign-object" = pkgs.stdenv.mkDerivation {
        name = "foreign-object";
        version = "v2.0.3";
        src = pkgs.fetchgit {
          url = "https://github.com/purescript/purescript-foreign-object.git";
          rev = "8a7dc21c48e3e6d31e253b0e58dd95a3bbd7f6e7";
          sha256 = "07wiql59zfj901nk9526b6rykn9m24jjcs8v5dgxbr1c3hiab9n3";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "functions" = pkgs.stdenv.mkDerivation {
        name = "functions";
        version = "v4.0.0";
        src = pkgs.fetchgit {
          url = "https://github.com/purescript/purescript-functions.git";
          rev = "c63451ae74f6fba7a4eede5f87208a73c537af77";
          sha256 = "0675k5kxxwdvsjs6a3is8pwm3hmv0vbcza1b8ls10gymmfz3k3hj";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "functors" = pkgs.stdenv.mkDerivation {
        name = "functors";
        version = "v3.1.1";
        src = pkgs.fetchgit {
          url = "https://github.com/purescript/purescript-functors.git";
          rev = "96bcf8a970a40115a76a20d19e50aa3b524adcf3";
          sha256 = "1cnn3zhk6qcyiwbbpvrdqgsbch4qihx2y9d6sv45bvd8kzrbd306";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "gen" = pkgs.stdenv.mkDerivation {
        name = "gen";
        version = "v2.1.1";
        src = pkgs.fetchgit {
          url = "https://github.com/purescript/purescript-gen.git";
          rev = "36f36f03f082b57e402c27f1513f8935caa54101";
          sha256 = "0pk68cn1s89hql30ydks9gh34gbxg391smi2albx3qvxnfkrpxca";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "globals" = pkgs.stdenv.mkDerivation {
        name = "globals";
        version = "v4.1.0";
        src = pkgs.fetchgit {
          url = "https://github.com/purescript/purescript-globals.git";
          rev = "8e6d69c36b6fd8c988a3664fc033ad11dbdd5860";
          sha256 = "03h4npdbsjr1mkjasdi071l0cl7zdf3l76a8f0x4ghx47yvpgadn";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "identity" = pkgs.stdenv.mkDerivation {
        name = "identity";
        version = "v4.1.0";
        src = pkgs.fetchgit {
          url = "https://github.com/purescript/purescript-identity.git";
          rev = "1b7938abdc8cb28c0ac5f80f63405d53e3173a8e";
          sha256 = "1scdgbfkphfmapw7p9rnsiynpmqzyvnal2glzj450q51f8g1dhld";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "integers" = pkgs.stdenv.mkDerivation {
        name = "integers";
        version = "v4.0.0";
        src = pkgs.fetchgit {
          url = "https://github.com/purescript/purescript-integers.git";
          rev = "3850da9cd96b37c71685b6bc3bf0cb489baefc93";
          sha256 = "17d4bfpnrmbxlc7hhhrvnli70ydaqyr26zgvc9q52a76zgdcb4cf";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "invariant" = pkgs.stdenv.mkDerivation {
        name = "invariant";
        version = "v4.1.0";
        src = pkgs.fetchgit {
          url = "https://github.com/purescript/purescript-invariant.git";
          rev = "b704c5bda262719ca5cc88a3f8554edff8f03256";
          sha256 = "1fimpbh3yb7clvqxcdf4yf9im64z0v2s9pbspfacgq5b4vshjas9";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "js-date" = pkgs.stdenv.mkDerivation {
        name = "js-date";
        version = "v6.0.0";
        src = pkgs.fetchgit {
          url = "https://github.com/purescript-contrib/purescript-js-date.git";
          rev = "f332c15f14322434ddd1945ca2db8040294447bf";
          sha256 = "19qyzbr4a1ca8znbd8gcbz0a801f5p1v238ky3408gdx4ba32zjd";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "lazy" = pkgs.stdenv.mkDerivation {
        name = "lazy";
        version = "v4.0.0";
        src = pkgs.fetchgit {
          url = "https://github.com/purescript/purescript-lazy.git";
          rev = "5bbd04f507a704f39aa756b5e12ed6665205fe2e";
          sha256 = "156q89l4nvvn14imbhp6xvvm82q7kqh1pyndmldmnkhiqyr84vqv";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "lists" = pkgs.stdenv.mkDerivation {
        name = "lists";
        version = "v5.4.1";
        src = pkgs.fetchgit {
          url = "https://github.com/purescript/purescript-lists.git";
          rev = "62900a56f6864638c952575dfd211a1cc55be7da";
          sha256 = "0l0jiqhcjzkg4nv2a6h2vdf4izr9mf7cxc86cq1hf3j4dh6spym1";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "math" = pkgs.stdenv.mkDerivation {
        name = "math";
        version = "v2.1.1";
        src = pkgs.fetchgit {
          url = "https://github.com/purescript/purescript-math.git";
          rev = "8be36d24f9d2d8795adf04791446bbc458297b9b";
          sha256 = "1msmy9w7y6fij62sdc55w68gpwkhm6lhgc8qjisjk4sxx1wdg1rr";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "maybe" = pkgs.stdenv.mkDerivation {
        name = "maybe";
        version = "v4.0.1";
        src = pkgs.fetchgit {
          url = "https://github.com/purescript/purescript-maybe.git";
          rev = "81f0397636bcbca28642f62421aebfd9e1afa7fb";
          sha256 = "073wa0d51daxdwacfcxg5pf6ch63n4ii55xm1ih87bxrg8mp52mx";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "media-types" = pkgs.stdenv.mkDerivation {
        name = "media-types";
        version = "v4.0.1";
        src = pkgs.fetchgit {
          url = "https://github.com/purescript-contrib/purescript-media-types.git";
          rev = "e304498356539547b4ed9a7f79513a847c907962";
          sha256 = "0ykwmxrhmwfy6c5mxjxa43xdf5xqakrqyvr5fn986yad50gjqj75";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "newtype" = pkgs.stdenv.mkDerivation {
        name = "newtype";
        version = "v3.0.0";
        src = pkgs.fetchgit {
          url = "https://github.com/purescript/purescript-newtype.git";
          rev = "7d85fa6a040208c010b05f7c23af6a943ba08763";
          sha256 = "0qvk9p41miy806b05b4ikbr3if0fcyc35gfrwd2mflcxxp46011c";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "nonempty" = pkgs.stdenv.mkDerivation {
        name = "nonempty";
        version = "v5.0.0";
        src = pkgs.fetchgit {
          url = "https://github.com/purescript/purescript-nonempty.git";
          rev = "36ca3b2fa6d98b1c9d2ee05643341e496fbeab57";
          sha256 = "1vz174sg32cqrp52nwb2vz9frrzmdwzzlgl4vc2cm5wlf2anirxj";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "now" = pkgs.stdenv.mkDerivation {
        name = "now";
        version = "v4.0.0";
        src = pkgs.fetchgit {
          url = "https://github.com/purescript-contrib/purescript-now.git";
          rev = "090feddf7c7dec2a812eca090cd211e87ccad606";
          sha256 = "18h5pif2dy4r7w1xg2zw4mvdqlar9xqp3rawkiavmsc946ncf3zs";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "nullable" = pkgs.stdenv.mkDerivation {
        name = "nullable";
        version = "v4.1.1";
        src = pkgs.fetchgit {
          url = "https://github.com/purescript-contrib/purescript-nullable.git";
          rev = "8d413f02224b8281bfa8037e45fbbf9fe2e254fd";
          sha256 = "14qaxxga8gqlr4pijyvqycdyhjr6qpz3h4aarficw5j75b7x8nyv";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "ordered-collections" = pkgs.stdenv.mkDerivation {
        name = "ordered-collections";
        version = "v1.6.1";
        src = pkgs.fetchgit {
          url = "https://github.com/purescript/purescript-ordered-collections.git";
          rev = "54af8b281bf01acfc14e147debec76974901e93c";
          sha256 = "0r48p94d3cyzni2z7ikzcap472k23dx8zq37c1prmjb01v03mfvc";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "orders" = pkgs.stdenv.mkDerivation {
        name = "orders";
        version = "v4.0.0";
        src = pkgs.fetchgit {
          url = "https://github.com/purescript/purescript-orders.git";
          rev = "80e22c22c72c846e09ef9dfcdb40b3eee39118d6";
          sha256 = "13p1sm4dxkmxhld9x5qqg62iiajjb3qpzs66c1r24y5fs4zsfry4";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "parallel" = pkgs.stdenv.mkDerivation {
        name = "parallel";
        version = "v4.0.0";
        src = pkgs.fetchgit {
          url = "https://github.com/purescript/purescript-parallel.git";
          rev = "4d6c8b05041a36c300dfca2ba8f1f3443ca26bc6";
          sha256 = "1d5bnagabw2k8yxywkygwrpblb2ggqh2fhpqfrx2sj1y53x332hg";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "partial" = pkgs.stdenv.mkDerivation {
        name = "partial";
        version = "v2.0.1";
        src = pkgs.fetchgit {
          url = "https://github.com/purescript/purescript-partial.git";
          rev = "76b63a324f7eafbb859256771b5bb7404082af96";
          sha256 = "11qr80989g7xmvw1brnrclsbg2wdkbr5k3cqpngfip3nnirrypcn";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "prelude" = pkgs.stdenv.mkDerivation {
        name = "prelude";
        version = "v4.1.1";
        src = pkgs.fetchgit {
          url = "https://github.com/purescript/purescript-prelude.git";
          rev = "a96663b34364fdd0885a200955e35b99f4e58c43";
          sha256 = "1frvjrv0mr508r6683l1mp5rzm1y2dz76fz40zf4k2c64sy6y1xm";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "proxy" = pkgs.stdenv.mkDerivation {
        name = "proxy";
        version = "v3.0.0";
        src = pkgs.fetchgit {
          url = "https://github.com/purescript/purescript-proxy.git";
          rev = "4a529b1f874fa2f32fc4c575cafaf46e0ab69fb6";
          sha256 = "0rqf25b1n9p5sgx7gdsxwrfv9rb3sqxgqmqpp5kdm30lfk7snz24";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "psci-support" = pkgs.stdenv.mkDerivation {
        name = "psci-support";
        version = "v4.0.0";
        src = pkgs.fetchgit {
          url = "https://github.com/purescript/purescript-psci-support.git";
          rev = "a66a0fa8661eb8b5fe75cc862f4e2df2835c058d";
          sha256 = "0jd773zcklr6hjddqingzmk20a0afpm2r9pczfjbj0d93pbxb4xh";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "react-basic" = pkgs.stdenv.mkDerivation {
        name = "react-basic";
        version = "v13.0.0";
        src = pkgs.fetchgit {
          url = "https://github.com/lumihq/purescript-react-basic.git";
          rev = "feee3a51a531f65ff0c0802bffa77e9cd0bd0164";
          sha256 = "0ar40a54l1zzmpwxlapmmf3h5yk3i7par6003rwwd6kma32v9gbg";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "record" = pkgs.stdenv.mkDerivation {
        name = "record";
        version = "v2.0.1";
        src = pkgs.fetchgit {
          url = "https://github.com/purescript/purescript-record.git";
          rev = "42a15ba34d860f4d8f899836956bf09659a0256b";
          sha256 = "1l7ixb0gc2man36181g3hdf46sjp7xh0kv8bgrvalxfisjmd12v0";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "refs" = pkgs.stdenv.mkDerivation {
        name = "refs";
        version = "v4.1.0";
        src = pkgs.fetchgit {
          url = "https://github.com/purescript/purescript-refs.git";
          rev = "e8b175477661e433175e76548168290c40e0ce4b";
          sha256 = "08161iy1xbafzblv033v84156azpcqkiw9v9d6gliphrq5fm17gm";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "st" = pkgs.stdenv.mkDerivation {
        name = "st";
        version = "v4.0.2";
        src = pkgs.fetchgit {
          url = "https://github.com/purescript/purescript-st.git";
          rev = "3fcc99181225c1a7693d63024d912ead1a62c495";
          sha256 = "04qbin35xkir2zbv3prnxz2h0p7nbw4j38a04s6km2qgd5d2gzzh";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "strings" = pkgs.stdenv.mkDerivation {
        name = "strings";
        version = "v4.0.1";
        src = pkgs.fetchgit {
          url = "https://github.com/purescript/purescript-strings.git";
          rev = "94c843b93142d0edf1c31ec075c40b6984c3dc7b";
          sha256 = "147l3l3fzn7liparhm2y3p8j4ck1lblra5j493p2hy5yy5ndznc8";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "tailrec" = pkgs.stdenv.mkDerivation {
        name = "tailrec";
        version = "v4.1.0";
        src = pkgs.fetchgit {
          url = "https://github.com/purescript/purescript-tailrec.git";
          rev = "8946bf9d9f68a8469198b4d512593d4a2a97cada";
          sha256 = "1qgxjim8wmw9m2iy1cq0kx5n6lh3bs52w5mdxc7k4wb880d9h32w";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "transformers" = pkgs.stdenv.mkDerivation {
        name = "transformers";
        version = "v4.2.0";
        src = pkgs.fetchgit {
          url = "https://github.com/purescript/purescript-transformers.git";
          rev = "0e473e5ef0e294615ca0d9aab0bcffee47b2870d";
          sha256 = "03qmvl9s7lbvm73dy9ps6qp39pdcm91hb8yakgj7aq8hgpj7b6bg";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "tuples" = pkgs.stdenv.mkDerivation {
        name = "tuples";
        version = "v5.1.0";
        src = pkgs.fetchgit {
          url = "https://github.com/purescript/purescript-tuples.git";
          rev = "0036bf9d99b721fd0f2e539d24e18e484b016927";
          sha256 = "045nsy0r2g51gih0wjhcvhl6gfr8947mlrqwg644ygz72rjm8wq4";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "type-equality" = pkgs.stdenv.mkDerivation {
        name = "type-equality";
        version = "v3.0.0";
        src = pkgs.fetchgit {
          url = "https://github.com/purescript/purescript-type-equality.git";
          rev = "2cdae51c394401cd5fc04b03c341273b41532b7d";
          sha256 = "1b7szyca5s96gaawvgwrw7fa8r7gqsdff7xhz3vvngnylv2scl3w";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "typelevel-prelude" = pkgs.stdenv.mkDerivation {
        name = "typelevel-prelude";
        version = "v5.0.2";
        src = pkgs.fetchgit {
          url = "https://github.com/purescript/purescript-typelevel-prelude.git";
          rev = "9f8788ba16ddda8f70e54e5228422348c13c817c";
          sha256 = "1kp1b35y8wzin9m5lfyp239nclq703xz2b4373x3075xfp6qdcwf";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "unfoldable" = pkgs.stdenv.mkDerivation {
        name = "unfoldable";
        version = "v4.1.0";
        src = pkgs.fetchgit {
          url = "https://github.com/purescript/purescript-unfoldable.git";
          rev = "077e787108e02bd16a1b27e57847d5baede7dd61";
          sha256 = "03g2zz26ai8a44z07jhdj0yvv8q6nq6ifcrzc7qjmdkjywg2cj9v";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "unsafe-coerce" = pkgs.stdenv.mkDerivation {
        name = "unsafe-coerce";
        version = "v4.0.0";
        src = pkgs.fetchgit {
          url = "https://github.com/purescript/purescript-unsafe-coerce.git";
          rev = "fa6a5ca9b4581c00ee0b8539306a49badb7bee60";
          sha256 = "0k9255mk2mz6xjb11pwkgfcblmmyvr86ig5kr92jwy95xim09zip";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "web-dom" = pkgs.stdenv.mkDerivation {
        name = "web-dom";
        version = "v4.0.0";
        src = pkgs.fetchgit {
          url = "https://github.com/purescript-web/purescript-web-dom.git";
          rev = "65d1b79f86c01f967fe822e2d8f7dabf711b66df";
          sha256 = "04rf7i2aik7is3ga6khfmkz9vzv331jryv72awfn2dpc1gaqp74k";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "web-events" = pkgs.stdenv.mkDerivation {
        name = "web-events";
        version = "v2.0.1";
        src = pkgs.fetchgit {
          url = "https://github.com/purescript-web/purescript-web-events.git";
          rev = "7f19f24d7b61066bef0813734964f2dc6b085e3d";
          sha256 = "1vd1gfh6zv50bq4v1ppl2wvc5mskcw9n1bfj29qjg0dx0ffxzv2f";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "web-file" = pkgs.stdenv.mkDerivation {
        name = "web-file";
        version = "v2.3.0";
        src = pkgs.fetchgit {
          url = "https://github.com/purescript-web/purescript-web-file.git";
          rev = "32fa296ff8103a72d52fc900b195f2ee05dc5627";
          sha256 = "1pn3cp8kkvxlg0vx3m53i83n8c92agpxd7dj96ma3bnyskd17fxv";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "web-html" = pkgs.stdenv.mkDerivation {
        name = "web-html";
        version = "v2.3.0";
        src = pkgs.fetchgit {
          url = "https://github.com/purescript-web/purescript-web-html.git";
          rev = "0aa27db6d393fc53454f549566f9058147cc008a";
          sha256 = "1gz2wkph49rkwd7cm6j0mx9sv6a3nzxcidv50mrxydhl3h8153gy";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

    "web-storage" = pkgs.stdenv.mkDerivation {
        name = "web-storage";
        version = "v3.0.0";
        src = pkgs.fetchgit {
          url = "https://github.com/purescript-web/purescript-web-storage.git";
          rev = "c2dedea1ee10ca7e94af5547c90274fb63ab3bc6";
          sha256 = "1ycb2s29aw9w6lqik6hfmp9nf9i2yhn0q26hc4p3450jam5mj8bx";
        };
        phases = "installPhase";
        installPhase = "ln -s $src $out";
      };

  };

  cpPackage = pkg:
    let
      target = ".spago/${pkg.name}/${pkg.version}";
    in ''
      if [ ! -e ${target} ]; then
        echo "Installing ${target}."
        mkdir -p ${target}
        cp --no-preserve=mode,ownership,timestamp -r ${toString pkg.outPath}/* ${target}
      else
        echo "${target} already exists. Skipping."
      fi
    '';

  getGlob = pkg: ''\".spago/${pkg.name}/${pkg.version}/src/**/*.purs\"'';

  getStoreGlob = pkg: ''\"${pkg.outPath}/src/**/*.purs\"'';

in {
  inherit inputs;

  installSpagoStyle = pkgs.runCommand "install-spago-style" {} ''
      >>$out echo "#!/usr/bin/env bash"
      >>$out echo
      >>$out echo "echo installing dependencies..."
      >>$out echo "${builtins.toString (
        builtins.map cpPackage (builtins.attrValues inputs))}"
      >>$out echo "echo done."
      chmod +x $out
  '';

  buildSpagoStyle = pkgs.runCommand "build-spago-style" {} ''
      >>$out echo "#!/usr/bin/env bash"
      >>$out echo
      >>$out echo "echo building project..."
      >>$out echo "purs compile ${builtins.toString (
        builtins.map getGlob (builtins.attrValues inputs))}" \"\$@\"
      >>$out echo "echo done."
      chmod +x $out
  '';

  buildFromNixStore = pkgs.runCommand "build-from-store" {} ''
      >>$out echo "#!/usr/bin/env bash"
      >>$out echo
      >>$out echo "echo building project using sources from nix store..."
      >>$out echo "purs compile ${builtins.toString (
        builtins.map getStoreGlob (builtins.attrValues inputs))}" \"\$@\"
      >>$out echo "echo done."
      chmod +x $out
  '';

  mkBuildProjectOutput =
    { src, purs }:

    pkgs.stdenv.mkDerivation {
      name = "build-project-output";
      src = src;

      buildInputs = [ purs ];

      installPhase = ''
        mkdir -p $out
        purs compile "$src/**/*.purs" ${builtins.toString
          (builtins.map
            (x: ''"${x.outPath}/src/**/*.purs"'')
            (builtins.attrValues inputs))}
        mv output $out
      '';
    };
}
