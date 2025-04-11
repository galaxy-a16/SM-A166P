.class public interface abstract Lio/netty/channel/ChannelProgressiveFutureListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/concurrent/GenericProgressiveFutureListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/util/concurrent/GenericProgressiveFutureListener<",
        "Lio/netty/channel/ChannelProgressiveFuture;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract synthetic operationComplete(Lio/netty/util/concurrent/Future;)V
.end method

.method public abstract synthetic operationProgressed(Lio/netty/util/concurrent/ProgressiveFuture;JJ)V
.end method
