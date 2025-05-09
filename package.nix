{
  lib,
  maven,
  jre,
  makeWrapper,
  libGL,
  glib,
  xorg,
  gtk3,
}: let
  pname = "StarParse";
in
  maven.buildMavenPackage {
    inherit pname;
    version = "1.1";

    src = ./.;

    nativeBuildInputs = [makeWrapper];
    mvnHash = "sha256-obGI8Bq9UEuG+uaqSu3wdOc+Tk4bUbm7t1eBaENhf5w=";

    installPhase = ''
      mkdir -p $out/bin $out/share/starparse $out/share/applications $out/share/pixmaps

      install -Dm644 starparse-client/build/starparse-client.jar $out/share/starparse
      cp starparse-client/build/StarParse.desktop $out/share/applications
      cp "starparse-client/build/StarParse.png" $out/share/pixmaps/${pname}.png

      substituteInPlace $out/share/applications/StarParse.desktop \
          --replace-fail "Exec=/path/to/StarParse/starparse-client/build/run_starparse.sh" "Exec=$out/bin/${pname}" \
          --replace-fail "Icon=StarParse.ico" "Icon=$out/share/pixmaps/${pname}.png"

      makeWrapper ${jre}/bin/java $out/bin/${pname} \
          --add-flags "-jar $out/share/starparse/starparse-client.jar" \
          --set LD_LIBRARY_PATH "${lib.makeLibraryPath [libGL gtk3 glib xorg.libXtst]}";
    '';

    meta = with lib; {
      description = "StarParse for Linux";
      homepage = "https://ixparse.com/";
      mainProgram = pname;
      maintainers = with maintainers; [nydragon];
    };
  }
