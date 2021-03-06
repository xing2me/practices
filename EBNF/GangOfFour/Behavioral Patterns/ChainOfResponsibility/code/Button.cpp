class Button : public Widget {
    public:
        Button(Widget* d, Topic t = NO_HELP_TOPIC);
        
        virtual void HandleHelp();
        // widget operations that Button overrides...
        
        Button::Button (Widget* h, Topic t) : Widget(h, t) {}
        
        void Button::HandleHelp () {
            if (HasHelp()) {
                // offer help pon the button
            } else {
                HelpHandler::HandleHelp();
            }
        }
};
