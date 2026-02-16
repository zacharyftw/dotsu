



for f in ~/.config/bashrc/*
    if [ ! -d $f ]
        c=`echo $f | sed -e "s=.config/bashrc=.config/bashrc/custom="`
        [[ -f $c ]] && source $c || source $f
    fi
done


if [ -f ~/.bashrc_custom ]
    source ~/.bashrc_custom
fi
. "$HOME/.cargo/env"
