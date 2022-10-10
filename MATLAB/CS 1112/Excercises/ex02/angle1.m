angle=input("Input Angle: ");
angle=rem(angle,360);
if angle<90 && angle>=0
    Q=1
end
if angle<180 && angle>=90
    Q=2
end
if angle<270 && angle>=180
    Q=3
end
if angle<360 && angle>=270
    Q=4
end