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
    @subject = Subject.find(params[:id])
  end
  def update
    @subject = Subject.find(params[:id])

    if @subject.update_attributes(subject_params)
      redirect_to(subject_path(@subject))
    else
      render('edit')
    end
  end

  def delete

    @subject = Subject.find(params[:id])
  end
  def destroy
    @subject = Subject.find(params[:id])
    @subject.destroy
    redirect_to(subjects_path)
  end
  private
  def subject_params
    params.required(:subject).permit(:name,:position,:visible)
  end




end
