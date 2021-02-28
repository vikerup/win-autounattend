# win-autounattend

## Getting started
win-autounattend helps build custom Windows ISO's to deploy and install windows with zero user input.
Modify `Autounattend.xml` to your needs.
Put Windows ISO in the same directory as the script.

### Modifications
The following values need to be configured in `Autounattend.xml`:
* <Key>xxxxx-xxxxx-xxxxx-xxxxx</Key> (grab key from `cat /sys/firmware/acpi/tables/MSDM` ?)
* <Value>ExamplePassword1</Value> (Both for `User` account and `Autologon`)
* SynchronousCommand 2 shows an example of first login script execution.
* SynchronousCommand 3 - if you prefer static ip. (Remove SynchronousCommand 3 and 4 if you want DHCP)

### Requirements
`sudo apt install genisoimage p7zip-full`

### Limitations
Currently only supports non-UEFI systems.
