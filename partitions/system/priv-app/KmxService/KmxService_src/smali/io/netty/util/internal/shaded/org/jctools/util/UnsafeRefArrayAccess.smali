.class public abstract Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final REF_ARRAY_BASE:J

.field public static final REF_ELEMENT_SHIFT:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    sget-object v0, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    const-class v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v3, v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    if-ne v3, v2, :cond_1

    const/4 v2, 0x3

    :goto_0
    sput v2, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->REF_ELEMENT_SHIFT:I

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->REF_ARRAY_BASE:J

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown pointer size: "

    invoke-static {v1, v2}, Landroidx/activity/b;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static allocateRefArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)[TE;"
        }
    .end annotation

    new-array p0, p0, [Ljava/lang/Object;

    return-object p0
.end method

.method public static calcCircularRefElementOffset(JJ)J
    .locals 2

    sget-wide v0, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->REF_ARRAY_BASE:J

    and-long/2addr p0, p2

    sget p2, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->REF_ELEMENT_SHIFT:I

    shl-long/2addr p0, p2

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static calcRefElementOffset(J)J
    .locals 3

    sget-wide v0, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->REF_ARRAY_BASE:J

    sget v2, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->REF_ELEMENT_SHIFT:I

    shl-long/2addr p0, v2

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static lvRefElement([Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;J)TE;"
        }
    .end annotation

    sget-object v0, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static soRefElement([Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;JTE;)V"
        }
    .end annotation

    sget-object v0, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method
