##
# @cocoa NSTokenField
#
# @example
#   @field = token_field(text: 'your text here', layout: {start: false}, frame: [0, 0, 300, 300])
#   @field.text = 'New text'
#
# @adc http://developer.apple.com/documentation/Cocoa/Reference/ApplicationKit/Classes/NSTokenField_Class/Reference/Reference.html
#
HotCocoa::Mappings.map token_field: NSTokenField do

  constant :text_align, {
    right:  NSRightTextAlignment,
    left:   NSLeftTextAlignment,
    center: NSCenterTextAlignment
  }

  defaults selectable: true, editable: true, layout: {}, frame: CGRectZero

  def init_with_options token_field, options
    token_field.initWithFrame options.delete :frame
  end

  custom_methods do
    def text_align= value
      setAlignment value
    end
  end
     
  # Text Field Delegats
  delegating 'control:textShouldBeginEditing:', to: :should_begin_editing?, parameters: [:textShouldBeginEditing]
  delegating 'control:textShouldEndEditing:',   to: :should_end_editing?,   parameters: [:textShouldEndEditing]
  delegating 'controlTextDidBeginEditing:',     to: :did_begin_editing,     parameters: ["controlTextDidBeginEditing.userInfo['NSFieldEditor']"]
  delegating 'controlTextDidEndEditing:',       to: :did_end_editing,       parameters: ["controlTextDidEndEditing.userInfo['NSFieldEditor']"]
  delegating 'controlTextDidChange:',           to: :did_change,            parameters: ["controlTextDidChange.userInfo['NSFieldEditor']"]   
end
