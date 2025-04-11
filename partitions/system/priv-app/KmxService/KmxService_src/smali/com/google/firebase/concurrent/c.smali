.class public final synthetic Lcom/google/firebase/concurrent/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/firebase/concurrent/e;

.field public final synthetic c:Ljava/lang/Runnable;

.field public final synthetic d:Ld/s0;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/concurrent/e;Ljava/lang/Runnable;Ld/s0;I)V
    .locals 0

    iput p4, p0, Lcom/google/firebase/concurrent/c;->a:I

    iput-object p1, p0, Lcom/google/firebase/concurrent/c;->b:Lcom/google/firebase/concurrent/e;

    iput-object p2, p0, Lcom/google/firebase/concurrent/c;->c:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/google/firebase/concurrent/c;->d:Ld/s0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/google/firebase/concurrent/c;->a:I

    iget-object v1, p0, Lcom/google/firebase/concurrent/c;->d:Ld/s0;

    iget-object v2, p0, Lcom/google/firebase/concurrent/c;->c:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/google/firebase/concurrent/c;->b:Lcom/google/firebase/concurrent/e;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/firebase/concurrent/d;

    const/4 v3, 0x2

    invoke-direct {v0, v2, v1, v3}, Lcom/google/firebase/concurrent/d;-><init>(Ljava/lang/Runnable;Ld/s0;I)V

    iget-object p0, p0, Lcom/google/firebase/concurrent/e;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/firebase/concurrent/d;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/google/firebase/concurrent/d;-><init>(Ljava/lang/Runnable;Ld/s0;I)V

    iget-object p0, p0, Lcom/google/firebase/concurrent/e;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/firebase/concurrent/d;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/google/firebase/concurrent/d;-><init>(Ljava/lang/Runnable;Ld/s0;I)V

    iget-object p0, p0, Lcom/google/firebase/concurrent/e;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
