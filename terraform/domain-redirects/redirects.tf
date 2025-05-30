// Definition of the domain redirects we have.

module "crates_io" {
  source = "./impl"
  providers = {
    aws       = aws
    aws.east1 = aws.east1
  }

  to_host = "crates.io"
  from = [
    "cratesio.com",
    "www.crates.io",
    "www.cratesio.com",
  ]
  permanent = true
}

module "docs_rs" {
  source = "./impl"
  providers = {
    aws       = aws
    aws.east1 = aws.east1
  }

  to_host = "docs.rs"
  from = [
    "docsrs.com",
    "www.docs.rs",
    "www.docsrs.com",
  ]
  permanent = true
}

module "cfp_rustconf_com" {
  source = "./impl"
  providers = {
    aws       = aws
    aws.east1 = aws.east1
  }

  to_host = "sessionize.com"
  to_path = "rustconf-2023"
  from = [
    "cfp.rustconf.com"
  ]
  permanent = false
}

module "arewewebyet_org" {
  source = "./impl"
  providers = {
    aws       = aws
    aws.east1 = aws.east1
  }

  to_host = "www.arewewebyet.org"
  from = [
    "arewewebyet.org"
  ]
  permanent = true
}

// https://github.com/rust-lang/docs.rs/issues/1210
module "docs_rs_metadata" {
  source = "./impl"
  providers = {
    aws       = aws
    aws.east1 = aws.east1
  }

  to_host = "docs.rs"
  to_path = "about/metadata"
  from = [
    "package.metadata.docs.rs",
  ]
  permanent = true
}

module "rustlings" {
  source = "./impl"
  providers = {
    aws       = aws
    aws.east1 = aws.east1
  }

  to_host   = "rustlings.rust-lang.org"
  from      = ["rustlings.cool"]
  permanent = true
}
