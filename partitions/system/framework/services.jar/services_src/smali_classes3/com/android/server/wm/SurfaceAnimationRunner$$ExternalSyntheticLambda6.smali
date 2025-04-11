.class public final synthetic Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 0
    check-cast p1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    check-cast p2, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    invoke-static {p1, p2}, Lcom/android/server/wm/SurfaceAnimationRunner;->$r8$lambda$WrR9kQ2ZBMR-L4dLZ-WXNTybk44(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)I

    move-result p0

    return p0
.end method
