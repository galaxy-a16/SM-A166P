.class public final Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;
.super Ljava/lang/Object;
.source "MediaFocusControl.java"


# instance fields
.field public final mUid:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmUid(Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;->mUid:I

    return p0
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1745
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1746
    iput p1, p0, Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;->mUid:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1754
    const-class v2, Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 1757
    :cond_1
    check-cast p1, Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;

    .line 1758
    iget p1, p1, Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;->mUid:I

    iget p0, p0, Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;->mUid:I

    if-eq p1, p0, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 0

    .line 1766
    iget p0, p0, Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;->mUid:I

    return p0
.end method
