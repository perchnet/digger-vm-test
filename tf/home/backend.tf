terraform {
  backend "oci" {
    #bucket = "terraform-state"
    bucket    = "terraform-state"
    region    = "us-ashburn-1"
    namespace = "idlv6vmnu8ya"
    #config_file_profile = "ocicli"
    #private_key_path = "/var/home/bri/dev/digger-vm-test/oci.pem"
    #fingerprint = "f7:db:07:bf:4f:bc:4d:34:30:66:8e:b1:fd:7e:aa:fb"
    #tenancy_ocid = "ocid1.tenancy.oc1..aaaaaaaasnr24iv43zaw7j75we77r345vnh4vgk676aqoonfuzbrtckfwi6a"
    #user_ocid = "ocid1.user.oc1..aaaaaaaafenetijfj26fmjipuygy2o2bp2zqc5byt2kqsidf5yzlvhxbxgqa"
  }
}