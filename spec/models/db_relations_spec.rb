require 'rails_helper'

describe 'teacher' do

  let(:teacher1) { Teacher.create!(email: "test1@teacher.com",
              password: "password") }


  it 'should have a new teacher with email test1@teacher.com' do
      expect(teacher1.email).to eq("test1@teacher.com")
  end

  it 'should have a new teacher with password (password)' do
      expect(teacher1.password).to eq("password")
  end

end
