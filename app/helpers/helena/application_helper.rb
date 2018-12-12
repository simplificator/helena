module Helena
  module ApplicationHelper
    def requeired_note
      content_tag(:span, t('helena.shared.required_indicator'), aria: { hidden: true }) +
        content_tag(:span, t('helena.shared.sr_required_indicator'), class: 'sr-only')
    end

    def question_label(question, options = {})
      content_tag((options[:dummy] ? :span : :label), class: :label, for: "question_#{question.code}") do
        raw(question.question_text) + (requeired_note if question.required?)
      end
    end
  end
end
