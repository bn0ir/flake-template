{
  description = "A collection of flake templates";

  outputs = { self }: {

    templates = {

      phoenix = {
        path = ./phoenix;
        description = "Basic elixir+phoenix flake template";
      };

    };

    defaultTemplate = self.templates.phoenix;

  };
}
