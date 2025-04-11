.class public final synthetic Landroidx/activity/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Landroidx/activity/e;->a:I

    iput-object p1, p0, Landroidx/activity/e;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Landroidx/activity/e;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Landroidx/activity/e;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/activity/p;

    invoke-static {p0}, Landroidx/activity/p;->a(Landroidx/activity/p;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Landroidx/activity/e;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/activity/o;

    iget-object v0, p0, Landroidx/activity/o;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/activity/o;->b:Ljava/lang/Runnable;

    :cond_0
    return-void

    :pswitch_2
    iget-object p0, p0, Landroidx/activity/e;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/activity/ComponentActivity;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->invalidateMenu()V

    return-void

    :goto_0
    iget-object p0, p0, Landroidx/activity/e;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/activity/q;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/activity/q;->c:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Landroidx/activity/q;->e:Z

    iget v1, p0, Landroidx/activity/q;->d:I

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroidx/activity/q;->f:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/activity/q;->b:Lvb/a;

    invoke-interface {v1}, Lvb/a;->invoke()Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/activity/q;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
