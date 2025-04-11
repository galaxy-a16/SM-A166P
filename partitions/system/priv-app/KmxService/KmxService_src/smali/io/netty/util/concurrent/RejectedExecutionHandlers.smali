.class public abstract Lio/netty/util/concurrent/RejectedExecutionHandlers;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final REJECT:Lio/netty/util/concurrent/RejectedExecutionHandler;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/netty/util/concurrent/RejectedExecutionHandlers$1;

    invoke-direct {v0}, Lio/netty/util/concurrent/RejectedExecutionHandlers$1;-><init>()V

    sput-object v0, Lio/netty/util/concurrent/RejectedExecutionHandlers;->REJECT:Lio/netty/util/concurrent/RejectedExecutionHandler;

    return-void
.end method

.method public static reject()Lio/netty/util/concurrent/RejectedExecutionHandler;
    .locals 1

    sget-object v0, Lio/netty/util/concurrent/RejectedExecutionHandlers;->REJECT:Lio/netty/util/concurrent/RejectedExecutionHandler;

    return-object v0
.end method
