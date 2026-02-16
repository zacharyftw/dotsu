



for f in ~/.config/zshrc/*
    if [ ! -d $f ]
        c=`echo $f | sed -e "s=.config/zshrc=.config/zshrc/custom="`
        [[ -f $c ]] && source $c || source $f
    fi
done


if [ -f ~/.zshrc_custom ]
    source ~/.zshrc_custom
fi
