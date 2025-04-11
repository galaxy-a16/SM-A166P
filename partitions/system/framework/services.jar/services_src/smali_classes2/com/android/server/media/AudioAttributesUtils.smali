.class public abstract Lcom/android/server/media/AudioAttributesUtils;
.super Ljava/lang/Object;
.source "AudioAttributesUtils.java"


# static fields
.field public static final ATTRIBUTES_MEDIA:Landroid/media/AudioAttributes;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x1

    .line 29
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/media/AudioAttributesUtils;->ATTRIBUTES_MEDIA:Landroid/media/AudioAttributes;

    return-void
.end method

.method public static isBluetoothOutputAttributes(Landroid/media/AudioDeviceAttributes;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 104
    :cond_0
    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->getRole()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    return v0

    .line 108
    :cond_1
    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result p0

    const/16 v1, 0x8

    if-eq p0, v1, :cond_2

    const/16 v1, 0x17

    if-eq p0, v1, :cond_2

    const/16 v1, 0x1a

    if-eq p0, v1, :cond_2

    const/16 v1, 0x1b

    if-eq p0, v1, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static isDeviceOutputAttributes(Landroid/media/AudioDeviceAttributes;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 76
    :cond_0
    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->getRole()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    return v0

    .line 80
    :cond_1
    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    if-eq p0, v2, :cond_2

    const/4 v2, 0x3

    if-eq p0, v2, :cond_2

    const/4 v2, 0x4

    if-eq p0, v2, :cond_2

    const/16 v2, 0x9

    if-eq p0, v2, :cond_2

    const/16 v2, 0xb

    if-eq p0, v2, :cond_2

    const/16 v2, 0xd

    if-eq p0, v2, :cond_2

    const/16 v2, 0x16

    if-eq p0, v2, :cond_2

    const/16 v2, 0x1f

    if-eq p0, v2, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public static mapToMediaRouteType(Landroid/media/AudioDeviceAttributes;)I
    .locals 2

    .line 39
    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v0, :cond_3

    if-eq p0, v1, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/16 v0, 0x8

    if-eq p0, v0, :cond_2

    const/16 v0, 0x9

    if-eq p0, v0, :cond_2

    const/16 v0, 0xb

    if-eq p0, v0, :cond_2

    const/16 v0, 0xd

    if-eq p0, v0, :cond_2

    const/16 v1, 0x1a

    if-eq p0, v1, :cond_1

    const/16 v1, 0x1f

    if-eq p0, v1, :cond_2

    const/16 v0, 0x16

    if-eq p0, v0, :cond_0

    const/16 v0, 0x17

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0

    :cond_1
    return v1

    :cond_2
    return v0

    :cond_3
    return v1
.end method
