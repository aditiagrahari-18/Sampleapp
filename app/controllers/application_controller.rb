class ApplicationController < ActionController::Base
    def sampleapp
        render html: "hello, world!Today I am developing sample app."
    end
end
