License: Freeware
Version: 0.2
Release: 7
Source: dir2.tar.gz
Name: dir2
Group: Development/Libraries/C and C++
Summary: Summary for dir2.
URL: http://www.cs.wustl.edu/~schmidt/ACE.html
BuildRoot: %{_tmppath}/%{name}-%{version}-root
Prefix: /usr
AutoReqProv: no




%description
For MPC Testing

   This is a multiline description. 

   This is additional description.

%files -f %{_tmppath}/dir2.flist
%defattr(-,root,root)
%doc
%config

%pre


%post


%preun


%postun


%prep
%setup -n dir2-0.2

%build

rm -rf $RPM_BUILD_ROOT

mwc.pl -type gnuace -base install -value_project libpaths+=/tmp/mpcrpm/inst/lib -value_project includes+=/tmp/mpcrpm/inst/include  dir2.mwc
make 

%install
if [ "$RPM_BUILD_ROOT" = "/" ]; then
  echo "Build root of / is a bad idea.  Bailing."
  exit 1
fi
rm -rf $RPM_BUILD_ROOT
export staging_dir=$RPM_BUILD_ROOT/install/usr
mkdir -p $staging_dir
export pkg_dir=$RPM_BUILD_ROOT/dir2_dir
mkdir -p $RPM_BUILD_ROOT/dir2_dir
make INSTALL_PREFIX=${staging_dir} install
if [ -d ${staging_dir}/share/man ]; then
  files=$(find ${staging_dir}/share/man -name '*.bz2')
  if [[ "${files}" ]]; then echo "${files}" | xargs bunzip2 -q; fi
  files=$(find ${staging_dir}/share/man -name '*.[0-9]')
  if [[ "${files}" ]]; then echo "${files}" | xargs gzip -9; fi
fi
cp -a $RPM_BUILD_ROOT/install/* ${pkg_dir}
find ${pkg_dir} ! -type d | sed s^${pkg_dir}^^ | sed /^\s*$/d > %{_tmppath}/dir2.flist
find ${pkg_dir} -type d | sed s^${pkg_dir}^^ | sed '\&^/usr$&d;\&^/usr/share/man&d;\&^/usr/games$&d;\&^/lib$&d;\&^/etc$&d;\&^/boot$&d;\&^/usr/bin$&d;\&^/usr/lib$&d;\&^/usr/share$&d;\&^/var$&d;\&^/var/lib$&d;\&^/var/spool$&d;\&^/var/cache$&d;\&^/var/lock$&d;\&^/tmp/apkg&d' | sed /^\s*$/d | sed 's&^&%dir &' >> %{_tmppath}/dir2.flist
cp -a $RPM_BUILD_ROOT/*_dir/* $RPM_BUILD_ROOT
rm -rf $RPM_BUILD_ROOT/*_dir
rm -rf $RPM_BUILD_ROOT/install

%clean
make realclean
find . -name 'GNUmakefile*' -o -name '.depend.*' | xargs rm -f

%changelog
* Thu Mar 31 2011 11:29:55 This file was generated by MPC.
  $Id$
  Any changes made directly to this file will
  be lost the next time it is generated.
  MPC Command:
  e:\progra~1\tao-1_5_6\ACE/bin/mwc.pl -include config -type rpmspec aggregated.mwc
