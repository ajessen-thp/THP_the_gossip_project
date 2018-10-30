class GossipController < ApplicationController
  def index
    @gossips = Gossip.order(created_at: :desc).all
  end

  def show
    @gossip = Gossip.find(params[:id])
  end

  def add
    if request.post?
      @errors = Hash.new
      gossip_author = params[:author]
      gossip_content = params[:content]
      if gossip_author != nil && gossip_author != "" && gossip_content != nil && gossip_content != ""
        gossip = Gossip.new(author: gossip_author, content: gossip_content)
        gossip.save
        redirect_to "/gossip/show/#{Gossip.last.id}"
      else
        if gossip_author == nil || gossip_author == ""
          @errors["author"] = "Veuillez saisir un auteur"
        end
        if gossip_content == nil || gossip_content == ""
          @errors["content"] = "Veuillez mettre du contenu dans le gossip"
        end
        redirect_to "/gossip/add", alert: @errors
      end
    end
  end

  def delete
    if defined?(params[:id])
      Gossip.find(params[:id]).destroy
    end
    redirect_to '/'
  end

  def update
    @gossip = Gossip.find(params[:id])
    if request.put?
      @errors = Hash.new
      gossip_author = params[:author]
      gossip_content = params[:content]
      if gossip_author != nil && gossip_author != "" && gossip_content != nil && gossip_content != ""
        gossip = Gossip.find(params[:id])
        gossip.author = gossip_author
        gossip.content = gossip_content
        gossip.save
        redirect_to "/gossip/show/#{params[:id]}"
      else
        if gossip_author == nil || gossip_author == ""
          @errors["author"] = "Veuillez saisir un auteur"
        end
        if gossip_content == nil || gossip_content == ""
          @errors["content"] = "Veuillez mettre du contenu dans le gossip"
        end
        redirect_to "/gossip/update/#{params[:id]}", alert: @errors
      end
    end
  end
end
