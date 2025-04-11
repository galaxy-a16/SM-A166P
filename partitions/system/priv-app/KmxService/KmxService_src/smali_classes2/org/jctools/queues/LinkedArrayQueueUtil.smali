.class abstract Lorg/jctools/queues/LinkedArrayQueueUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static length([Ljava/lang/Object;)I
    .locals 0

    array-length p0, p0

    return p0
.end method

.method public static nextArrayOffset([Ljava/lang/Object;)J
    .locals 4

    sget-wide v0, Lorg/jctools/util/UnsafeRefArrayAccess;->REF_ARRAY_BASE:J

    invoke-static {p0}, Lorg/jctools/queues/LinkedArrayQueueUtil;->length([Ljava/lang/Object;)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    int-to-long v2, p0

    sget p0, Lorg/jctools/util/UnsafeRefArrayAccess;->REF_ELEMENT_SHIFT:I

    shl-long/2addr v2, p0

    add-long/2addr v0, v2

    return-wide v0
.end method
