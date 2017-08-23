class SubjectsController < ApplicationController
 layout false
  def index
    @subjects =Subject.sorted

  end

  def show
    @subject = Subject.find(params[:id])
  end

  def new
    @subject = Subject.new({:name => 'Default'})
  end

  def create
    @subject= Subject.new(subject_params)
    if @subject.save
      redirect_to(subjects_path)
    else
      render('new')
    end

  end


  def edit
  end
  def update
  end

  def delete
  end
  def destroy
  end
  private
  def subject_params
    params.required(:subject).permit(:name,:position,:visible)
  end




end
