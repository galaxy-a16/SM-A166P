.class final Lio/netty/handler/codec/CodecOutputList$2;
.super Lio/netty/util/concurrent/FastThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/CodecOutputList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/util/concurrent/FastThreadLocal<",
        "Lio/netty/handler/codec/CodecOutputList$CodecOutputLists;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/netty/util/concurrent/FastThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public initialValue()Lio/netty/handler/codec/CodecOutputList$CodecOutputLists;
    .locals 1

    .line 1
    new-instance p0, Lio/netty/handler/codec/CodecOutputList$CodecOutputLists;

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lio/netty/handler/codec/CodecOutputList$CodecOutputLists;-><init>(I)V

    return-object p0
.end method

.method public bridge synthetic initialValue()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lio/netty/handler/codec/CodecOutputList$2;->initialValue()Lio/netty/handler/codec/CodecOutputList$CodecOutputLists;

    move-result-object p0

    return-object p0
.end method
