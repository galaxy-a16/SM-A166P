.class public abstract Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlConversionUtils;
.super Ljava/lang/Object;
.source "AidlConversionUtils.java"


# direct methods
.method public static toAidlAcquiredInfo(I)B
    .locals 3

    .line 0
    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v1, 0x1

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x2

    if-ne p0, v1, :cond_2

    return v2

    :cond_2
    const/4 v1, 0x3

    if-ne p0, v2, :cond_3

    return v1

    :cond_3
    const/4 v2, 0x4

    if-ne p0, v1, :cond_4

    return v2

    :cond_4
    const/4 v1, 0x5

    if-ne p0, v2, :cond_5

    return v1

    :cond_5
    const/4 v2, 0x6

    if-ne p0, v1, :cond_6

    return v2

    :cond_6
    const/4 v1, 0x7

    if-ne p0, v2, :cond_7

    return v1

    :cond_7
    if-ne p0, v1, :cond_8

    return v0

    :cond_8
    const/16 v1, 0xa

    if-ne p0, v1, :cond_9

    return v1

    :cond_9
    const/16 v1, 0x9

    if-ne p0, v1, :cond_a

    const/16 p0, 0xb

    return p0

    :cond_a
    return v0
.end method

.method public static toAidlError(I)B
    .locals 3

    .line 0
    const/16 v0, 0x11

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    return v0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    return v0

    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    return v0

    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    return v0

    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    return v0

    :cond_6
    const/16 v0, 0x8

    if-ne p0, v0, :cond_7

    const/4 p0, 0x7

    return p0

    :cond_7
    const/16 v2, 0x12

    if-ne p0, v2, :cond_8

    return v0

    :cond_8
    return v1
.end method

.method public static toFrameworkAcquiredInfo(B)I
    .locals 3

    .line 0
    const/16 v0, 0x8

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 v2, 0x2

    if-ne p0, v2, :cond_2

    return v1

    :cond_2
    const/4 v1, 0x3

    if-ne p0, v1, :cond_3

    return v2

    :cond_3
    const/4 v2, 0x4

    if-ne p0, v2, :cond_4

    return v1

    :cond_4
    const/4 v1, 0x5

    if-ne p0, v1, :cond_5

    return v2

    :cond_5
    const/4 v2, 0x6

    if-ne p0, v2, :cond_6

    return v1

    :cond_6
    const/4 v1, 0x7

    if-ne p0, v1, :cond_7

    return v2

    :cond_7
    if-ne p0, v0, :cond_8

    return v1

    :cond_8
    const/16 v1, 0x9

    if-ne p0, v1, :cond_9

    return v0

    :cond_9
    const/16 v2, 0xa

    if-ne p0, v2, :cond_a

    return v2

    :cond_a
    const/16 v2, 0xb

    if-ne p0, v2, :cond_b

    return v1

    :cond_b
    const/16 v1, 0xc

    if-ne p0, v1, :cond_c

    return v0

    :cond_c
    const/16 v1, 0xe

    if-ne p0, v1, :cond_d

    return v2

    :cond_d
    return v0
.end method

.method public static toFrameworkError(B)I
    .locals 3

    .line 0
    const/16 v0, 0x11

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x2

    if-ne p0, v1, :cond_2

    return v1

    :cond_2
    const/4 v1, 0x3

    if-ne p0, v1, :cond_3

    return v1

    :cond_3
    const/4 v1, 0x4

    if-ne p0, v1, :cond_4

    return v1

    :cond_4
    const/4 v1, 0x5

    if-ne p0, v1, :cond_5

    return v1

    :cond_5
    const/4 v1, 0x6

    if-ne p0, v1, :cond_6

    return v1

    :cond_6
    const/4 v1, 0x7

    const/16 v2, 0x8

    if-ne p0, v1, :cond_7

    return v2

    :cond_7
    if-ne p0, v2, :cond_8

    const/16 p0, 0x12

    return p0

    :cond_8
    const/16 v1, 0x9

    if-ne p0, v1, :cond_9

    const/16 p0, 0x13

    return p0

    :cond_9
    return v0
.end method
