.class public final Landroidx/activity/result/g;
.super Landroidx/activity/result/f;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/io/Serializable;

.field public final synthetic c:La/a;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/io/Serializable;La/a;I)V
    .locals 0

    iput p4, p0, Landroidx/activity/result/g;->a:I

    iput-object p1, p0, Landroidx/activity/result/g;->d:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/activity/result/g;->b:Ljava/io/Serializable;

    iput-object p3, p0, Landroidx/activity/result/g;->c:La/a;

    invoke-direct {p0}, Landroidx/activity/result/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 7

    iget v0, p0, Landroidx/activity/result/g;->a:I

    const-string v1, ". You must ensure the ActivityResultLauncher is registered before calling launch()."

    const-string v2, " and input "

    const-string v3, "Attempting to launch an unregistered ActivityResultLauncher with contract "

    iget-object v4, p0, Landroidx/activity/result/g;->c:La/a;

    iget-object v5, p0, Landroidx/activity/result/g;->d:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/activity/result/g;->b:Ljava/io/Serializable;

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    move-object v0, v5

    check-cast v0, Landroidx/activity/result/j;

    iget-object v6, v0, Landroidx/activity/result/j;->b:Ljava/util/HashMap;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v6, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_0

    iget-object v1, v0, Landroidx/activity/result/j;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    check-cast v5, Landroidx/activity/result/j;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v5, v1, v4, p1}, Landroidx/activity/result/j;->b(ILa/a;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, v0, Landroidx/activity/result/j;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    throw p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    move-object v0, v5

    check-cast v0, Landroidx/activity/result/j;

    iget-object v6, v0, Landroidx/activity/result/j;->b:Ljava/util/HashMap;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v6, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_1

    iget-object v1, v0, Landroidx/activity/result/j;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_1
    check-cast v5, Landroidx/activity/result/j;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v5, v1, v4, p1}, Landroidx/activity/result/j;->b(ILa/a;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    iget-object v0, v0, Landroidx/activity/result/j;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    throw p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/activity/result/f;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroidx/activity/result/f;->a(Ljava/lang/Object;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Operation cannot be started before fragment is in created state"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 2

    iget v0, p0, Landroidx/activity/result/g;->a:I

    iget-object v1, p0, Landroidx/activity/result/g;->d:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/activity/result/g;->b:Ljava/io/Serializable;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v1, Landroidx/activity/result/j;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Landroidx/activity/result/j;->f(Ljava/lang/String;)V

    return-void

    :pswitch_1
    check-cast v1, Landroidx/activity/result/j;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Landroidx/activity/result/j;->f(Ljava/lang/String;)V

    return-void

    :goto_0
    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/activity/result/f;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/activity/result/f;->b()V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
