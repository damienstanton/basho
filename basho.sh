# ╔-------------------------------------------------------------functions begin
#                                      ╔-------╗
#                                      | bashō |
#                                      ╚-------╝
#         Attempts at poetic shell automations, named in honor of Matsuo Bashō.
#
#         Copyright © 2017 Damien Stanton
#         Released under the Apache-2.0 license. See LICENSE for details.

# cmakebuild automates Cmake build step.
# Usage: cmakebuild <in the presence of a CmakeLists.txt file>
cmakebuild() {
    [ ! -d $(PWD)/build ] && mkdir build
    cd build \
	    && cmake -G "Unix Makefiles" .. \
	    && make
}

# commit automates git add all, then msg, then push.
# Usage: commit <wait for prompt>
commit() {
    echo "Please type your commit message:"
    echo
    read INPUT
    git add -A \
	    && git commit -m "$INPUT" \
	    && git push
}

# copyright automatically generates a full Apache-2.0 License using the 
# author's name and current year. Also generates a boilerplate README file.
# NOTE: be sure to edit or remove the donation button, unless you really want
# to pay me 🤗
# Usage: copyright <your name or org name>
copyright() {
cat <<LIC>> LICENSE
Copyright $(date +%Y) $@

                                 Apache License
                           Version 2.0, January 2004
                        http://www.apache.org/licenses/

   TERMS AND CONDITIONS FOR USE, REPRODUCTION, AND DISTRIBUTION

   1. Definitions.

      "License" shall mean the terms and conditions for use, reproduction,
      and distribution as defined by Sections 1 through 9 of this document.

      "Licensor" shall mean the copyright owner or entity authorized by
      the copyright owner that is granting the License.

      "Legal Entity" shall mean the union of the acting entity and all
      other entities that control, are controlled by, or are under common
      control with that entity. For the purposes of this definition,
      "control" means (i) the power, direct or indirect, to cause the
      direction or management of such entity, whether by contract or
      otherwise, or (ii) ownership of fifty percent (50%) or more of the
      outstanding shares, or (iii) beneficial ownership of such entity.

      "You" (or "Your") shall mean an individual or Legal Entity
      exercising permissions granted by this License.

      "Source" form shall mean the preferred form for making modifications,
      including but not limited to software source code, documentation
      source, and configuration files.

      "Object" form shall mean any form resulting from mechanical
      transformation or translation of a Source form, including but
      not limited to compiled object code, generated documentation,
      and conversions to other media types.

      "Work" shall mean the work of authorship, whether in Source or
      Object form, made available under the License, as indicated by a
      copyright notice that is included in or attached to the work
      (an example is provided in the Appendix below).

      "Derivative Works" shall mean any work, whether in Source or Object
      form, that is based on (or derived from) the Work and for which the
      editorial revisions, annotations, elaborations, or other modifications
      represent, as a whole, an original work of authorship. For the purposes
      of this License, Derivative Works shall not include works that remain
      separable from, or merely link (or bind by name) to the interfaces of,
      the Work and Derivative Works thereof.

      "Contribution" shall mean any work of authorship, including
      the original version of the Work and any modifications or additions
      to that Work or Derivative Works thereof, that is intentionally
      submitted to Licensor for inclusion in the Work by the copyright owner
      or by an individual or Legal Entity authorized to submit on behalf of
      the copyright owner. For the purposes of this definition, "submitted"
      means any form of electronic, verbal, or written communication sent
      to the Licensor or its representatives, including but not limited to
      communication on electronic mailing lists, source code control systems,
      and issue tracking systems that are managed by, or on behalf of, the
      Licensor for the purpose of discussing and improving the Work, but
      excluding communication that is conspicuously marked or otherwise
      designated in writing by the copyright owner as "Not a Contribution."

      "Contributor" shall mean Licensor and any individual or Legal Entity
      on behalf of whom a Contribution has been received by Licensor and
      subsequently incorporated within the Work.

   2. Grant of Copyright License. Subject to the terms and conditions of
      this License, each Contributor hereby grants to You a perpetual,
      worldwide, non-exclusive, no-charge, royalty-free, irrevocable
      copyright license to reproduce, prepare Derivative Works of,
      publicly display, publicly perform, sublicense, and distribute the
      Work and such Derivative Works in Source or Object form.

   3. Grant of Patent License. Subject to the terms and conditions of
      this License, each Contributor hereby grants to You a perpetual,
      worldwide, non-exclusive, no-charge, royalty-free, irrevocable
      (except as stated in this section) patent license to make, have made,
      use, offer to sell, sell, import, and otherwise transfer the Work,
      where such license applies only to those patent claims licensable
      by such Contributor that are necessarily infringed by their
      Contribution(s) alone or by combination of their Contribution(s)
      with the Work to which such Contribution(s) was submitted. If You
      institute patent litigation against any entity (including a
      cross-claim or counterclaim in a lawsuit) alleging that the Work
      or a Contribution incorporated within the Work constitutes direct
      or contributory patent infringement, then any patent licenses
      granted to You under this License for that Work shall terminate
      as of the date such litigation is filed.

   4. Redistribution. You may reproduce and distribute copies of the
      Work or Derivative Works thereof in any medium, with or without
      modifications, and in Source or Object form, provided that You
      meet the following conditions:

      (a) You must give any other recipients of the Work or
          Derivative Works a copy of this License; and

      (b) You must cause any modified files to carry prominent notices
          stating that You changed the files; and

      (c) You must retain, in the Source form of any Derivative Works
          that You distribute, all copyright, patent, trademark, and
          attribution notices from the Source form of the Work,
          excluding those notices that do not pertain to any part of
          the Derivative Works; and

      (d) If the Work includes a "NOTICE" text file as part of its
          distribution, then any Derivative Works that You distribute must
          include a readable copy of the attribution notices contained
          within such NOTICE file, excluding those notices that do not
          pertain to any part of the Derivative Works, in at least one
          of the following places: within a NOTICE text file distributed
          as part of the Derivative Works; within the Source form or
          documentation, if provided along with the Derivative Works; or,
          within a display generated by the Derivative Works, if and
          wherever such third-party notices normally appear. The contents
          of the NOTICE file are for informational purposes only and
          do not modify the License. You may add Your own attribution
          notices within Derivative Works that You distribute, alongside
          or as an addendum to the NOTICE text from the Work, provided
          that such additional attribution notices cannot be construed
          as modifying the License.

      You may add Your own copyright statement to Your modifications and
      may provide additional or different license terms and conditions
      for use, reproduction, or distribution of Your modifications, or
      for any such Derivative Works as a whole, provided Your use,
      reproduction, and distribution of the Work otherwise complies with
      the conditions stated in this License.

   5. Submission of Contributions. Unless You explicitly state otherwise,
      any Contribution intentionally submitted for inclusion in the Work
      by You to the Licensor shall be under the terms and conditions of
      this License, without any additional terms or conditions.
      Notwithstanding the above, nothing herein shall supersede or modify
      the terms of any separate license agreement you may have executed
      with Licensor regarding such Contributions.

   6. Trademarks. This License does not grant permission to use the trade
      names, trademarks, service marks, or product names of the Licensor,
      except as required for reasonable and customary use in describing the
      origin of the Work and reproducing the content of the NOTICE file.

   7. Disclaimer of Warranty. Unless required by applicable law or
      agreed to in writing, Licensor provides the Work (and each
      Contributor provides its Contributions) on an "AS IS" BASIS,
      WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
      implied, including, without limitation, any warranties or conditions
      of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A
      PARTICULAR PURPOSE. You are solely responsible for determining the
      appropriateness of using or redistributing the Work and assume any
      risks associated with Your exercise of permissions under this License.

   8. Limitation of Liability. In no event and under no legal theory,
      whether in tort (including negligence), contract, or otherwise,
      unless required by applicable law (such as deliberate and grossly
      negligent acts) or agreed to in writing, shall any Contributor be
      liable to You for damages, including any direct, indirect, special,
      incidental, or consequential damages of any character arising as a
      result of this License or out of the use or inability to use the
      Work (including but not limited to damages for loss of goodwill,
      work stoppage, computer failure or malfunction, or any and all
      other commercial damages or losses), even if such Contributor
      has been advised of the possibility of such damages.

   9. Accepting Warranty or Additional Liability. While redistributing
      the Work or Derivative Works thereof, You may choose to offer,
      and charge a fee for, acceptance of support, warranty, indemnity,
      or other liability obligations and/or rights consistent with this
      License. However, in accepting such obligations, You may act only
      on Your own behalf and on Your sole responsibility, not on behalf
      of any other Contributor, and only if You agree to indemnify,
      defend, and hold each Contributor harmless for any liability
      incurred by, or claims asserted against, such Contributor by reason
      of your accepting any such warranty or additional liability.

   END OF TERMS AND CONDITIONS

   APPENDIX: How to apply the Apache License to your work.

      To apply the Apache License to your work, attach the following
      boilerplate notice, with the fields enclosed by brackets "[]"
      replaced with your own identifying information. (Don't include
      the brackets!)  The text should be enclosed in the appropriate
      comment syntax for the file format. We also recommend that a
      file or class name and description of purpose be included on the
      same "printed page" as the copyright notice for easier
      identification within third-party archives.

   Copyright $(date +%Y) $@

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
LIC

cat <<CPR>> README.md

© $(date +%Y) $@

See LICENSE for details.

[![donation](https://img.shields.io/badge/☕️_-Buy_me_coffee-green.svg)](https://paypal.me/damienstanton)
CPR
}

# firstpush automates git add and then msg and then upstream origin master
# for new repos.
# Usage: firstpush <commit message>
firstpush() {
    git add -A && git commit -m $@ && git push --set-upstream origin master
}

# getme automates retrieving your own repos from GitHub/GitLab etc..
# NOTE: be sure to replace with your account info.
# Usage: getme <myname/myCoolRepo>
getme() {
    git clone https://github.com/damienstanton/$1
}

# here loads the python3 http static server in the current directory on the
# given port
# Usage: here <port>
here() {
    python3 -m http.server $1
}

# ignore writes a .gitignore file with some common exclusions for C/C++,
# Python, Go, JavaScript/TypeScript, VSCode, IntelliJ, Rust and Java.
# Usage: ignore
ignore() {
cat <<I>> .gitignore
*.DS_Store
*.swp
*.o
*.so
env/
bin/
node_modules/
.vscode/
.idea/
vendor/*/*
target/
Cargo.lock
**/*.rs.bak
build/
.gradle/
I
}

# new-remote generates a new repo on GitHub, and inits the current directory
# to point to the new repo.
# NOTE: be sure to set your own credentials, and note that you will need a
# personal access token to use this function.
# Usage: new-remote <myCoolRepo>
new-remote() {
    w=$1
    u="damienstanton"
    if [ -z "$1" ]; then
        echo -n "Need the name of the new repo:"
        read w
    fi
    curl -u $u https://api.github.com/user/repos -d "{\"name\":\"$w\"}"
    git init && git remote add origin https://github.com/$u/$w
}

# newmvn generates a very minimalist Maven3 project.
# NOTE: the space between org and artifact name!
# Usage: newmvn <org.myplace> <myArtifact>
newmvn() {
    mvn -B archetype:generate \
        -DarchetypeGroupId=org.apache.maven.archetypes \
	    -DgroupId=$1 \
	    -DartifactId=$2
}

# newsbt generates a pretty standard Scala SBT project.
# Usage: newsbt <myCoolProject>
newsbt() {
WORKDIR=$1

mkdir $WORKDIR && cd $WORKDIR

echo "Creating new Scala project: $WORKDIR"

cat <<SBTFILE>> build.sbt
name := "$WORKDIR"
scalaVersion in ThisBuild := "2.12.3"
ensimeIgnoreMissingDirectories in ThisBuild := true
logBuffered in Test := false
cancelable in Global := true
libraryDependencies ++= Seq(
	"org.scalactic" %% "scalactic" % "3.0.1",
	"org.scalatest" %% "scalatest" % "3.0.1" % "test",
	"org.scalacheck" %% "scalacheck" % "1.13.4" % "test"
)
SBTFILE
cat <<IGNORE>> .gitignore
target/
project/
.ensime
.ensime_cache/
.cache/
*.log
IGNORE
mkdir -p src/main/scala
mkdir -p src/test/scala
cat <<SCALAFILE>> src/main/scala/App.scala
package $WORKDIR
object App {
  def main(args: Array[String]) = {
    println("$WORKDIR OK")
  }
}
SCALAFILE
sbt ensimeConfig
}

# remote git-initializes and points the current directory to the given remote.
# Usage: remote <myName/MyCoolRepo>
remote() {
    git init && git remote add origin https://github.com/$1
}

# show uses awk to show the 10 lines before and after a given line in a file.
# Good for spelunking logs when debugging something.
# Usage: show <line number> in <file>
show() {
    line_number=$1
    start=$(($line_number - 10))
    stop=$(($line_number + 10))

    case "$2" in
        "in")
            file_path=$3
            ;;
        *)
            echo "Usage: show <line_number> in <path_to_file>"
            ;;
    esac

    awk "NR >= $start && NR <= $stop + 10" $file_path
}

# syncwith automates fetching of an upstream 'master' to which you want to
# sync your current fork. Great for keeping a fork in sync with a bigger
# project.
# Usage: syncwith <upstreamOrg/upstreamRepo>
syncwith() {
    git remote add up https://github.com/$1
    git fetch up master \
        && git merge up/master \
        && git push \
        && echo "👌"
}

# updatebranch works similarly to syncwith, but for a local master instead
# of a remote master.
# Usage: updatebranch <myWorkingBranch>
updatebranch() {
    git checkout $1 && git pull
    git checkout master \
        && git pull \
        && git checkout $1 \
        && git merge master \
        && git push
}

# nb is a shortcut for running local-only node binaries.
# Usage: nb myLocalBinary <args>
nb() {
	node_modules/.bin/$@
}

# newstack is a helper for launching a haskell based docker container using
# the servant framework. Note that you will need to change the stack template
# parameters to match your own name, email etc.
newstack() {
    stack new $1 servant-docker -p "author-email:damien.stanton@gmail.com" -p "author-name:Damien Stanton" -p "github-username:damienstanton"
}

# ╚---------------------------------------------------------------functions end
