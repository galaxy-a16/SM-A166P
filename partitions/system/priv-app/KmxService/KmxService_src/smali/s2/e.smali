.class public final synthetic Ls2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/kmxservice/trustchain/ChainService;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Ls2/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls2/e;->c:Ljava/lang/Object;

    iput-object p2, p0, Ls2/e;->d:Ljava/lang/Object;

    iput-object p3, p0, Ls2/e;->e:Ljava/lang/Object;

    iput p4, p0, Ls2/e;->b:I

    return-void
.end method

.method public synthetic constructor <init>(Ls2/i;Lo2/j;ILjava/lang/Runnable;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Ls2/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls2/e;->c:Ljava/lang/Object;

    iput-object p2, p0, Ls2/e;->d:Ljava/lang/Object;

    iput p3, p0, Ls2/e;->b:I

    iput-object p4, p0, Ls2/e;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Ls2/e;->a:I

    iget-object v1, p0, Ls2/e;->e:Ljava/lang/Object;

    iget v2, p0, Ls2/e;->b:I

    iget-object v3, p0, Ls2/e;->d:Ljava/lang/Object;

    iget-object p0, p0, Ls2/e;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    check-cast p0, Ls2/i;

    check-cast v3, Lo2/j;

    check-cast v1, Ljava/lang/Runnable;

    iget-object v0, p0, Ls2/i;->d:Ls2/l;

    iget-object v4, p0, Ls2/i;->f:Lu2/b;

    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_0
    iget-object v7, p0, Ls2/i;->c:Lt2/d;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, La5/a;

    const/4 v9, 0x4

    invoke-direct {v8, v7, v9}, La5/a;-><init>(Ljava/lang/Object;I)V

    move-object v7, v4

    check-cast v7, Lt2/k;

    invoke-virtual {v7, v8}, Lt2/k;->x(Lu2/a;)Ljava/lang/Object;

    iget-object v7, p0, Ls2/i;->a:Landroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v5

    goto :goto_0

    :cond_0
    move v7, v6

    :goto_0
    if-nez v7, :cond_1

    check-cast v4, Lt2/k;

    invoke-virtual {v4}, Lt2/k;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    new-instance v7, La5/a;

    const/16 v8, 0x9

    invoke-direct {v7, p0, v8}, La5/a;-><init>(Ljava/lang/Object;I)V

    new-instance v8, Lcom/google/firebase/concurrent/h;

    const/4 v9, 0x6

    invoke-direct {v8, v9}, Lcom/google/firebase/concurrent/h;-><init>(I)V

    invoke-virtual {v4, v7, v8}, Lt2/k;->t(La5/a;Lcom/google/firebase/concurrent/h;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/android/datatransport/runtime/synchronization/SynchronizationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    add-int/lit8 v4, v2, 0x1

    :try_start_1
    move-object v7, v0

    check-cast v7, Ls2/d;

    invoke-virtual {v7, v3, v4, v6}, Ls2/d;->a(Lo2/j;IZ)V

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v3, v2}, Ls2/i;->a(Lo2/j;I)V
    :try_end_2
    .catch Lcom/google/android/datatransport/runtime/synchronization/SynchronizationException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    add-int/2addr v2, v5

    :try_start_3
    check-cast v0, Ls2/d;

    invoke-virtual {v0, v3, v2, v6}, Ls2/d;->a(Lo2/j;IZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    return-void

    :goto_2
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    throw p0

    :goto_3
    check-cast p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;

    check-cast v3, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v3, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->E(Lcom/samsung/android/kmxservice/trustchain/ChainService;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
