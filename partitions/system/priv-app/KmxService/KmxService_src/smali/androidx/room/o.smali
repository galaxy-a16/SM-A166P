.class public final synthetic Landroidx/room/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/room/s;


# direct methods
.method public synthetic constructor <init>(Landroidx/room/s;I)V
    .locals 0

    iput p2, p0, Landroidx/room/o;->a:I

    iput-object p1, p0, Landroidx/room/o;->b:Landroidx/room/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v0, 0x0

    const-string v1, "observer"

    iget v2, p0, Landroidx/room/o;->a:I

    iget-object p0, p0, Landroidx/room/o;->b:Landroidx/room/s;

    const-string v3, "this$0"

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-static {p0, v3}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Landroidx/room/s;->g:Landroidx/room/k;

    if-eqz v2, :cond_1

    iget-object v3, p0, Landroidx/room/s;->h:Landroidx/room/q;

    iget-object v4, p0, Landroidx/room/s;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroidx/room/k;->q(Landroidx/room/i;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroidx/room/s;->e:I

    iget-object v2, p0, Landroidx/room/s;->b:Landroidx/room/n;

    iget-object p0, p0, Landroidx/room/s;->f:Landroidx/room/p;

    if-eqz p0, :cond_0

    invoke-virtual {v2, p0}, Landroidx/room/n;->a(Landroidx/room/p;)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Li4/f;->O(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    const-string v0, "ROOM"

    const-string v1, "Cannot register multi-instance invalidation callback"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void

    :goto_1
    invoke-static {p0, v3}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/room/s;->f:Landroidx/room/p;

    if-eqz v2, :cond_2

    iget-object p0, p0, Landroidx/room/s;->b:Landroidx/room/n;

    invoke-virtual {p0, v2}, Landroidx/room/n;->c(Landroidx/room/p;)V

    return-void

    :cond_2
    invoke-static {v1}, Li4/f;->O(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
