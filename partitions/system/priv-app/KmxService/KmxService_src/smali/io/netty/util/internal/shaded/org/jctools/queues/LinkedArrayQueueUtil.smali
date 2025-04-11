.class abstract Lio/netty/util/internal/shaded/org/jctools/queues/LinkedArrayQueueUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static length([Ljava/lang/Object;)I
    .locals 0

    array-length p0, p0

    return p0
.end method

.method public static modifiedCalcCircularRefElementOffset(JJ)J
    .locals 2

    sget-wide v0, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->REF_ARRAY_BASE:J

    and-long/2addr p0, p2

    sget p2, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->REF_ELEMENT_SHIFT:I

    add-int/lit8 p2, p2, -0x1

    shl-long/2addr p0, p2

    add-long/2addr v0, p0

    return-wide v0
.end method
