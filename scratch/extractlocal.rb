module ExtractLocal

  # In case you are calling directly from the command line
  emailSource = ARGV.first

  def ExtractLocal.extractLocalPart(source)
    # Regular Expression used to extract the local part of the addressed email
    regexLocalPart = /Delivered-To: ([\w.!#$%&'*+-\/=?^`{|}~]+)@/

    # Store the local part of the addressed email
    localPart = source.match regexLocalPart

    # Nil test for local part. Set result to empty string if nil, otherwise set result to first match.
    if localPart.nil?
      result = ""
    else
      result = localPart[1]
    end

    return result
  end

end
