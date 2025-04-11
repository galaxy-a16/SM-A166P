.class final Lio/netty/util/concurrent/SingleThreadEventExecutor$DefaultThreadProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/concurrent/ThreadProperties;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/concurrent/SingleThreadEventExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultThreadProperties"
.end annotation


# instance fields
.field private final t:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/Thread;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$DefaultThreadProperties;->t:Ljava/lang/Thread;

    return-void
.end method
