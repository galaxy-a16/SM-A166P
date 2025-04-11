.class Lio/netty/util/Recycler$2;
.super Lio/netty/util/concurrent/FastThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/Recycler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/util/concurrent/FastThreadLocal<",
        "Lio/netty/util/Recycler$Stack<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/util/Recycler;


# direct methods
.method public constructor <init>(Lio/netty/util/Recycler;)V
    .locals 0

    iput-object p1, p0, Lio/netty/util/Recycler$2;->this$0:Lio/netty/util/Recycler;

    invoke-direct {p0}, Lio/netty/util/concurrent/FastThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public initialValue()Lio/netty/util/Recycler$Stack;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/Recycler$Stack<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v7, Lio/netty/util/Recycler$Stack;

    iget-object v1, p0, Lio/netty/util/Recycler$2;->this$0:Lio/netty/util/Recycler;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v0, p0, Lio/netty/util/Recycler$2;->this$0:Lio/netty/util/Recycler;

    invoke-static {v0}, Lio/netty/util/Recycler;->access$000(Lio/netty/util/Recycler;)I

    move-result v3

    iget-object v0, p0, Lio/netty/util/Recycler$2;->this$0:Lio/netty/util/Recycler;

    invoke-static {v0}, Lio/netty/util/Recycler;->access$100(Lio/netty/util/Recycler;)I

    move-result v4

    iget-object v0, p0, Lio/netty/util/Recycler$2;->this$0:Lio/netty/util/Recycler;

    invoke-static {v0}, Lio/netty/util/Recycler;->access$200(Lio/netty/util/Recycler;)I

    move-result v5

    iget-object p0, p0, Lio/netty/util/Recycler$2;->this$0:Lio/netty/util/Recycler;

    invoke-static {p0}, Lio/netty/util/Recycler;->access$300(Lio/netty/util/Recycler;)I

    move-result v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/netty/util/Recycler$Stack;-><init>(Lio/netty/util/Recycler;Ljava/lang/Thread;IIII)V

    return-object v7
.end method

.method public bridge synthetic initialValue()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lio/netty/util/Recycler$2;->initialValue()Lio/netty/util/Recycler$Stack;

    move-result-object p0

    return-object p0
.end method

.method public onRemoval(Lio/netty/util/Recycler$Stack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler$Stack<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object p0, p1, Lio/netty/util/Recycler$Stack;->threadRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-static {}, Lio/netty/util/Recycler;->access$400()Lio/netty/util/concurrent/FastThreadLocal;

    move-result-object p0

    invoke-virtual {p0}, Lio/netty/util/concurrent/FastThreadLocal;->isSet()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lio/netty/util/Recycler;->access$400()Lio/netty/util/concurrent/FastThreadLocal;

    move-result-object p0

    invoke-virtual {p0}, Lio/netty/util/concurrent/FastThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public bridge synthetic onRemoval(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lio/netty/util/Recycler$Stack;

    invoke-virtual {p0, p1}, Lio/netty/util/Recycler$2;->onRemoval(Lio/netty/util/Recycler$Stack;)V

    return-void
.end method
