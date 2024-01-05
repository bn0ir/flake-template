{
  description = "A collection of flake templates";

  outputs = { self }: {

    templates = {

      phoenix = {
        path = ./phoenix;
        description = "Basic elixir+phoenix flake template";
      };

      rust-ebpf = {
        path = ./rust-ebpf;
        description = "Basic rust ebpf flake template";
      };

    };

    defaultTemplate = self.templates.phoenix;

  };
}
