.class public final synthetic Lcom/google/firebase/concurrent/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/concurrent/f;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/firebase/concurrent/e;

.field public final synthetic c:Ljava/lang/Runnable;

.field public final synthetic d:J

.field public final synthetic e:J

.field public final synthetic f:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/concurrent/e;Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;I)V
    .locals 0

    iput p8, p0, Lcom/google/firebase/concurrent/b;->a:I

    iput-object p1, p0, Lcom/google/firebase/concurrent/b;->b:Lcom/google/firebase/concurrent/e;

    iput-object p2, p0, Lcom/google/firebase/concurrent/b;->c:Ljava/lang/Runnable;

    iput-wide p3, p0, Lcom/google/firebase/concurrent/b;->d:J

    iput-wide p5, p0, Lcom/google/firebase/concurrent/b;->e:J

    iput-object p7, p0, Lcom/google/firebase/concurrent/b;->f:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ld/s0;)Ljava/util/concurrent/ScheduledFuture;
    .locals 10

    iget v0, p0, Lcom/google/firebase/concurrent/b;->a:I

    iget-object v1, p0, Lcom/google/firebase/concurrent/b;->c:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/google/firebase/concurrent/b;->b:Lcom/google/firebase/concurrent/e;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-wide v5, p0, Lcom/google/firebase/concurrent/b;->d:J

    iget-wide v7, p0, Lcom/google/firebase/concurrent/b;->e:J

    iget-object v9, p0, Lcom/google/firebase/concurrent/b;->f:Ljava/util/concurrent/TimeUnit;

    iget-object v3, v2, Lcom/google/firebase/concurrent/e;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Lcom/google/firebase/concurrent/c;

    const/4 p0, 0x1

    invoke-direct {v4, v2, v1, p1, p0}, Lcom/google/firebase/concurrent/c;-><init>(Lcom/google/firebase/concurrent/e;Ljava/lang/Runnable;Ld/s0;I)V

    invoke-interface/range {v3 .. v9}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0

    :goto_0
    iget-wide v3, p0, Lcom/google/firebase/concurrent/b;->d:J

    iget-wide v5, p0, Lcom/google/firebase/concurrent/b;->e:J

    iget-object p0, p0, Lcom/google/firebase/concurrent/b;->f:Ljava/util/concurrent/TimeUnit;

    iget-object v0, v2, Lcom/google/firebase/concurrent/e;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Lcom/google/firebase/concurrent/c;

    const/4 v8, 0x0

    invoke-direct {v7, v2, v1, p1, v8}, Lcom/google/firebase/concurrent/c;-><init>(Lcom/google/firebase/concurrent/e;Ljava/lang/Runnable;Ld/s0;I)V

    move-object v1, v7

    move-wide v2, v3

    move-wide v4, v5

    move-object v6, p0

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
