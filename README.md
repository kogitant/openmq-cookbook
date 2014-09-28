# openmq-cookbook

Chef cookbook for installing OpenMQ 5.1


## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['openmq']['user']</tt></td>
    <td>String</td>
    <td>Username</td>
    <td><tt>openmq</tt></td>
  </tr>
  <tr>
    <td><tt>['openmq']['group']</tt></td>
    <td>String</td>
    <td>Group</td>
    <td><tt>openmq</tt></td>
  </tr>
  <tr>
    <td><tt>['openmq']['version']</tt></td>
    <td>String</td>
    <td>Version</td>
    <td><tt>5.1</tt></td>
  </tr>
  <tr>
    <td><tt>['openmq']['archive_file']</tt></td>
    <td>String</td>
    <td>Zip filename, check options from http://download.java.net/mq/open-mq/5.1/latest/</td>
    <td><tt>openmq5_1-binary-linux.zip</tt></td>
  </tr>
  <tr>
    <td><tt>['openmq'][':url']</tt></td>
    <td>String</td>
    <td>Url to download from, check options from http://download.java.net/mq/open-mq/</td>
    <td><tt>http://download.java.net/mq/open-mq/#{default[:openmq][:version]}/latest/#{default[:openmq][:archive_file]}</tt></td>
  </tr>
  <tr>
    <td><tt>['openmq']['install_dir']</tt></td>
    <td>String</td>
    <td>Installation dir</td>
    <td><tt>/usr/local</tt></td>
  </tr>
</table>

## Usage

### openmq::default

Include `openmq` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[openmq::default]"
  ]
}
```

## License and Authors

Author:: Antti Koivisto
