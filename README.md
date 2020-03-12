# dhcpcd5 FlightAware rebuild

This is a rebuild of the upstream Raspbian dhcpcd5 package,
with a patch to fix a bug that can cause dhcpcd to crash
in response to apparent IP conflicts, disabling the network
in the process.

The bug in question is fixed in dhcpcd 8.1.6; this is a selective backport
of only that bugfix, from https://roy.marples.name/cgit/dhcpcd.git/commit/?h=dhcpcd-8&id=40fcdef71dc07985049c7d6edda9198e760a8bcf

The package is otherwise the same as the Raspbian buster 8.1.2-1+rpt1
package.
