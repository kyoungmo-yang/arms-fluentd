class TailWithOrgMsg < Fluent::TailInput
        Fluent::Plugin.register_input('tail_with_org_msg', self)

        def parse_line(line)
                time, record = super(line)

                record['message'] = line

                return time, record
        end
end
