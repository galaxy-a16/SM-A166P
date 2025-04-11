.class public abstract Lcom/android/server/input/HidKeycodes;
.super Ljava/lang/Object;
.source "HidKeycodes.java"


# static fields
.field public static final ScancodeToHidKeycode:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xe3

    new-array v0, v0, [B

    .line 88
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/input/HidKeycodes;->ScancodeToHidKeycode:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x29t
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x2dt
        0x2et
        0x2at
        0x2bt
        0x14t
        0x1at
        0x8t
        0x15t
        0x17t
        0x1ct
        0x18t
        0xct
        0x12t
        0x13t
        0x2ft
        0x30t
        0x28t
        -0x20t
        0x4t
        0x16t
        0x7t
        0x9t
        0xat
        0xbt
        0xdt
        0xet
        0xft
        0x33t
        0x34t
        0x35t
        -0x1ft
        0x31t
        0x1dt
        0x1bt
        0x6t
        0x19t
        0x5t
        0x11t
        0x10t
        0x36t
        0x37t
        0x38t
        -0x1bt
        0x55t
        -0x1et
        0x2ct
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0x3et
        0x3ft
        0x40t
        0x41t
        0x42t
        0x43t
        0x53t
        0x47t
        0x5ft
        0x60t
        0x61t
        0x56t
        0x5ct
        0x5dt
        0x5et
        0x57t
        0x59t
        0x5at
        0x5bt
        0x62t
        0x63t
        0x0t
        -0x6ct
        0x64t
        0x44t
        0x45t
        -0x79t
        0x0t
        0x0t
        -0x76t
        -0x78t
        -0x75t
        -0x7bt
        0x58t
        -0x1ct
        0x54t
        0x46t
        -0x1at
        0x0t
        0x4at
        0x52t
        0x4bt
        0x50t
        0x4ft
        0x4dt
        0x51t
        0x4et
        0x49t
        0x4ct
        0x0t
        -0xct
        -0xat
        -0xbt
        0x66t
        0x67t
        0x0t
        0x48t
        0x0t
        -0x7bt
        -0x70t
        0x0t
        -0x77t
        -0x1dt
        -0x19t
        0x76t
        -0xet
        0x0t
        0x0t
        0x0t
        0x0t
        0x7ct
        0x0t
        0x7dt
        0x0t
        0x7bt
        0x0t
        0x76t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x66t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x17t
        -0x14t
        -0x14t
        -0xft
        -0xdt
        -0x10t
        -0xet
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x6bt
        0x0t
        0x0t
        0x0t
        0x0t
        0x4bt
        0x4et
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x6et
        0x6ft
        0x0t
    .end array-data
.end method

.method public static final convertScancodeToHidKeycode(I)B
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0xe2

    if-gt p0, v0, :cond_0

    .line 51
    sget-object v0, Lcom/android/server/input/HidKeycodes;->ScancodeToHidKeycode:[B

    aget-byte p0, v0, p0

    goto :goto_0

    :cond_0
    const/16 v0, 0xfe

    if-eq p0, v0, :cond_6

    const/16 v0, 0x2bd

    if-eq p0, v0, :cond_5

    const/16 v0, 0x2c1

    if-eq p0, v0, :cond_4

    const/16 v0, 0x2c2

    if-eq p0, v0, :cond_3

    const/16 v0, 0x2c5

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2c6

    if-eq p0, v0, :cond_1

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    :pswitch_0
    const/16 p0, 0x73

    goto :goto_0

    :pswitch_1
    const/16 p0, 0x72

    goto :goto_0

    :pswitch_2
    const/16 p0, 0x71

    goto :goto_0

    :cond_1
    const/16 p0, 0x6c

    goto :goto_0

    :cond_2
    const/16 p0, 0x70

    goto :goto_0

    :cond_3
    const/16 p0, 0x6a

    goto :goto_0

    :cond_4
    const/16 p0, 0x69

    goto :goto_0

    :cond_5
    const/16 p0, 0x6d

    goto :goto_0

    :cond_6
    const/16 p0, 0x68

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x2f5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
