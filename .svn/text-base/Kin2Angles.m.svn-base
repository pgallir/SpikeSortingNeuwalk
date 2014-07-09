
function MA = Kin2Angles(MK)


    for t = 1:size(MK,1)

        leg = 0; % prima zampa left
        xc = MK(t,leg+1);
        yc = MK(t,leg+2);
        zc = MK(t,leg+3);

        xh = MK(t,leg+4);
        yh = MK(t,leg+5);
        zh = MK(t,leg+6);

        xk = MK(t,leg+7);
        yk = MK(t,leg+8);
        zk = MK(t,leg+9);

        xa = MK(t,leg+10);
        ya = MK(t,leg+11);
        za = MK(t,leg+12);

        xm = MK(t,leg+13);
        ym = MK(t,leg+14);
        zm = MK(t,leg+15);

        xt = MK(t,leg+16);
        yt = MK(t,leg+17);
        zt = MK(t,leg+18);


        MA{1}(t,1) = acosd(dot([xc-xh; yc-yh; zc-zh],[xk-xh; yk-yh; zk-zh])/(sqrt(dot([xc-xh; yc-yh; zc-zh],[xc-xh; yc-yh; zc-zh]))*sqrt(dot([xk-xh; yk-yh; zk-zh],[xk-xh; yk-yh; zk-zh]))));
        MA{1}(t,2) = acosd(dot([xh-xk; yh-yk; zh-zk],[xa-xk; ya-yk; za-zk])/(sqrt(dot([xh-xk; yh-yk; zh-zk],[xh-xk; yh-yk; zh-zk]))*sqrt(dot([xa-xk; ya-yk; za-zk],[xa-xk; ya-yk; za-zk]))));
        MA{1}(t,3) = acosd(dot([xk-xa; yk-ya; zk-za],[xm-xa; ym-ya; zm-za])/(sqrt(dot([xk-xa; yk-ya; zk-za],[xk-xa; yk-ya; zk-za]))*sqrt(dot([xm-xa; ym-ya; zm-za],[xm-xa; ym-ya; zm-za]))));
        MA{1}(t,4) = acosd(dot([xa-xm; ya-ym; za-zm],[xt-xm; yt-ym; zt-zm])/(sqrt(dot([xa-xm; ya-ym; za-zm],[xa-xm; ya-ym; za-zm]))*sqrt(dot([xt-xm; yt-ym; zt-zm],[xt-xm; yt-ym; zt-zm]))));





        leg = 18; % prima zampa right
        xc = MK(t,leg+1);
        yc = MK(t,leg+2);
        zc = MK(t,leg+3);

        xh = MK(t,leg+4);
        yh = MK(t,leg+5);
        zh = MK(t,leg+6);

        xk = MK(t,leg+7);
        yk = MK(t,leg+8);
        zk = MK(t,leg+9);

        xa = MK(t,leg+10);
        ya = MK(t,leg+11);
        za = MK(t,leg+12);

        xm = MK(t,leg+13);
        ym = MK(t,leg+14);
        zm = MK(t,leg+15);

        xt = MK(t,leg+16);
        yt = MK(t,leg+17);
        zt = MK(t,leg+18);


        MA{2}(t,1) = acosd(dot([xc-xh; yc-yh; zc-zh],[xk-xh; yk-yh; zk-zh])/(sqrt(dot([xc-xh; yc-yh; zc-zh],[xc-xh; yc-yh; zc-zh]))*sqrt(dot([xk-xh; yk-yh; zk-zh],[xk-xh; yk-yh; zk-zh]))));
        MA{2}(t,2) = acosd(dot([xh-xk; yh-yk; zh-zk],[xa-xk; ya-yk; za-zk])/(sqrt(dot([xh-xk; yh-yk; zh-zk],[xh-xk; yh-yk; zh-zk]))*sqrt(dot([xa-xk; ya-yk; za-zk],[xa-xk; ya-yk; za-zk]))));
        MA{2}(t,3) = acosd(dot([xk-xa; yk-ya; zk-za],[xm-xa; ym-ya; zm-za])/(sqrt(dot([xk-xa; yk-ya; zk-za],[xk-xa; yk-ya; zk-za]))*sqrt(dot([xm-xa; ym-ya; zm-za],[xm-xa; ym-ya; zm-za]))));
        MA{2}(t,4) = acosd(dot([xa-xm; ya-ym; za-zm],[xt-xm; yt-ym; zt-zm])/(sqrt(dot([xa-xm; ya-ym; za-zm],[xa-xm; ya-ym; za-zm]))*sqrt(dot([xt-xm; yt-ym; zt-zm],[xt-xm; yt-ym; zt-zm]))));

    end

end