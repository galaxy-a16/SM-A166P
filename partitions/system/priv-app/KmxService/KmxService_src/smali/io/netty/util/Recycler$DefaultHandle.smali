.class final Lio/netty/util/Recycler$DefaultHandle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/Recycler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultHandle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/netty/util/a;"
    }
.end annotation


# instance fields
.field hasBeenRecycled:Z

.field lastRecycledId:I

.field recycleId:I

.field stack:Lio/netty/util/Recycler$Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/Recycler$Stack<",
            "*>;"
        }
    .end annotation
.end field

.field value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lio/netty/util/Recycler$Stack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler$Stack<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/netty/util/Recycler$DefaultHandle;->stack:Lio/netty/util/Recycler$Stack;

    return-void
.end method


# virtual methods
.method public recycle(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lio/netty/util/Recycler$DefaultHandle;->value:Ljava/lang/Object;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lio/netty/util/Recycler$DefaultHandle;->stack:Lio/netty/util/Recycler$Stack;

    iget v0, p0, Lio/netty/util/Recycler$DefaultHandle;->lastRecycledId:I

    iget v1, p0, Lio/netty/util/Recycler$DefaultHandle;->recycleId:I

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lio/netty/util/Recycler$Stack;->push(Lio/netty/util/Recycler$DefaultHandle;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "recycled already"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "object does not belong to handle"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
