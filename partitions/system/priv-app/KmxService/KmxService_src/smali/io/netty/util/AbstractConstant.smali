.class public abstract Lio/netty/util/AbstractConstant;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/Constant;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lio/netty/util/AbstractConstant<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lio/netty/util/Constant<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final uniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final id:I

.field private final name:Ljava/lang/String;

.field private final uniquifier:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lio/netty/util/AbstractConstant;->uniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/netty/util/AbstractConstant;->id:I

    iput-object p2, p0, Lio/netty/util/AbstractConstant;->name:Ljava/lang/String;

    sget-object p1, Lio/netty/util/AbstractConstant;->uniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide p1

    iput-wide p1, p0, Lio/netty/util/AbstractConstant;->uniquifier:J

    return-void
.end method


# virtual methods
.method public final compareTo(Lio/netty/util/AbstractConstant;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lio/netty/util/AbstractConstant;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Lio/netty/util/AbstractConstant;->hashCode()I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_1

    return v0

    :cond_1
    iget-wide v0, p0, Lio/netty/util/AbstractConstant;->uniquifier:J

    iget-wide p0, p1, Lio/netty/util/AbstractConstant;->uniquifier:J

    cmp-long v2, v0, p0

    if-gez v2, :cond_2

    const/4 p0, -0x1

    return p0

    :cond_2
    cmp-long p0, v0, p0

    if-lez p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    new-instance p0, Ljava/lang/Error;

    const-string p1, "failed to compare two different constants"

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 2
    check-cast p1, Lio/netty/util/AbstractConstant;

    invoke-virtual {p0, p1}, Lio/netty/util/AbstractConstant;->compareTo(Lio/netty/util/AbstractConstant;)I

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final id()I
    .locals 0

    iget p0, p0, Lio/netty/util/AbstractConstant;->id:I

    return p0
.end method

.method public final name()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/netty/util/AbstractConstant;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lio/netty/util/AbstractConstant;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
