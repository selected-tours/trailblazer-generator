module Trailblazer
  # Trailblazer Generator
  class Generator
    # Generator commands registry
    module Commands
      # Generate Command
      module Generate
        # Generate Finder Command
        class Finder < Base
          desc "Generate a Trailblazer Finder"
          example [
            "trb generate finder Blog Create",
            "trb generate finder Blog Create --template=index",
            "trb generate finder Blog Create --layout=plural"
          ]

          # Required Arguments
          argument :concept, required: true, desc: ARGUMENT_CONCEPT
          argument :name, required: true, desc: ARGUMENT_NAME

          # Optional Arguments
          option :template, desc: OPTION_TEMPLATE
          option :layout, default: :singular, values: DEFAULT_LAYOUTS, desc: OPTION_LAYOUT
          option :json, desc: OPTION_JSON
          option :path, desc: OPTION_PATH
          option :stubs, desc: OPTION_STUBS

          def call(concept:, **options)
            run_generator concept, :finder, options
            close_generator
          end
        end
      end
    end
  end
end
