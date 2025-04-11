.class public final synthetic Lcom/google/firebase/concurrent/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Runnable;

.field public final synthetic c:Ld/s0;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;Ld/s0;I)V
    .locals 0

    iput p3, p0, Lcom/google/firebase/concurrent/d;->a:I

    iput-object p1, p0, Lcom/google/firebase/concurrent/d;->b:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/google/firebase/concurrent/d;->c:Ld/s0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/google/firebase/concurrent/d;->a:I

    iget-object v1, p0, Lcom/google/firebase/concurrent/d;->c:Ld/s0;

    iget-object p0, p0, Lcom/google/firebase/concurrent/d;->b:Ljava/lang/Runnable;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    iget-object p0, v1, Ld/s0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/firebase/concurrent/g;

    sget v0, Lcom/google/firebase/concurrent/g;->i:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/concurrent/futures/g;->g:Ljava/lang/Object;

    sget-object v2, Landroidx/concurrent/futures/g;->f:Lp1/f;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, v0}, Lp1/f;->s(Landroidx/concurrent/futures/g;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroidx/concurrent/futures/g;->d(Landroidx/concurrent/futures/g;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {v1, p0}, Ld/s0;->z(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    :try_start_1
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    invoke-virtual {v1, p0}, Ld/s0;->z(Ljava/lang/Exception;)V

    throw p0

    :goto_1
    :try_start_2
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    invoke-virtual {v1, p0}, Ld/s0;->z(Ljava/lang/Exception;)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
